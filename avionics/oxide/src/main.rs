#![deny(unsafe_code)]
#![cfg_attr(not(doc), no_main)]
#![no_std]

use bsp::{
    hal::{ccm::{PLL1, ClockMode, uart}, iomuxc::consts::U1, uart, pwm},
    LED,
};
use cortex_m::asm::wfi;
use embedded_hal::digital::v2::OutputPin;
use log::info;
use panic_halt as _;
use rtic::cyccnt::U32Ext;
pub use teensy4_bsp as bsp;

// The CYCCNT counts in clock cycles. Using the clock hz should give us a ~1 second period.
const PERIOD: u32 = PLL1::ARM_HZ;
const BAUD: u32 = 115_200; // 2_000_000
const TX_FIFO_SIZE: u8 = 4;

#[rtic::app(device = teensy4_bsp, monotonic = rtic::cyccnt::CYCCNT, peripherals = true)]
const APP: () = {
    struct Resources {
        led: LED,
        buzzer_tone: Option<u16>,
        buzzer: pwm::Pin
    }

    #[init(schedule = [blink])]
    fn init(mut cx: init::Context) -> init::LateResources {
        init_delay();

        // Set the clock mode to 'RUN'
        cx.device.ccm.set_mode(ClockMode::Run);

        // Initialise the monotonic CYCCNT timer.
        cx.core.DWT.enable_cycle_counter();

        // Ensure the ARM clock is configured for the default speed seeing as we use this speed to
        // determine a 1 second `PERIOD`.
        let (_, ipg_hz) = cx.device.ccm.pll1.set_arm_clock(
            PLL1::ARM_HZ,
            &mut cx.device.ccm.handle,
            &mut cx.device.dcdc,
        );

        // Get the pins
        let pins = bsp::t40::pins(cx.device.iomuxc);

        // Init the usb
        let uarts = cx.device.uart.clock(
            &mut cx.device.ccm.handle,
            uart::ClockSelect::OSC,
            uart::PrescalarSelect::DIVIDE_1,
        );

        let mut dma_channels = cx.device.dma.clock(&mut cx.device.ccm.handle);
        let mut channel = dma_channels[7].take().unwrap();
        // Enable interrupt generation when the DMA transfer completes
        channel.set_interrupt_on_completion(true);

        // Init UART6
        let uart = uarts.uart6.init(pins.p1, pins.p0, BAUD).unwrap();

        // Init the UART logger
        let (tx, _) = uart.split();
        imxrt_uart_log::dma::init(tx, channel, Default::default()).unwrap();

        log::info!("Hello world!");

        // Schedule the first blink.
        cx.schedule.blink(cx.start + PERIOD.cycles()).unwrap();

        // Grab the led out og yhr pins
        let mut led = bsp::configure_led(pins.p13);

        // Start the led High
        led.set_high().unwrap();

        init::LateResources { led }
    }

    #[task(binds = DMA7_DMA23)]
    fn dma7_dma23(cx: dma7_dma23::Context) {
        imxrt_uart_log::dma::poll();
    }

    #[task(resources = [led], schedule = [blink])]
    fn blink(cx: blink::Context) {
        log::info!("Hello world!");

        cx.resources.led.toggle();
        // Schedule the following blink.
        cx.schedule.blink(cx.scheduled + PERIOD.cycles()).unwrap();
    }

    // RTIC requires that unused interrupts are declared in an extern block when
    // using software tasks; these free interrupts will be used to dispatch the
    // software tasks.
    extern "C" {
        fn LPUART8();
        fn LPUART7();
        fn LPUART6();
        fn LPUART5();
    }
};

// If we reach WFI on teensy 4.0 too quickly it seems to halt. Here we wait a short while in `init`
// to avoid this issue. The issue only appears to occur when rebooting the device (via the button),
// however there appears to be no issue when power cycling the device.
//
// TODO: Investigate exactly why this appears to be necessary.
fn init_delay() {
    for _ in 0..10_000_000 {
        core::sync::atomic::spin_loop_hint();
    }
}
