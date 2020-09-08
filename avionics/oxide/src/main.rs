#![deny(unsafe_code)]
#![cfg_attr(not(doc), no_main)]
#![no_std]

use teensy4_bsp::hal::gpio::GPIO;
use bsp::{
    hal::{
        ccm::{pwm as pwm_ccm, ClockMode, PLL1},
        iomuxc::consts::U2,
        pwm,
    },
    t40::{P6, P9},
    LED,
hal::gpio};
use core::time::Duration;
use embedded_hal::{digital::v2::OutputPin, Pwm};
use panic_halt as _;
use rtic::cyccnt::U32Ext;
pub use teensy4_bsp as bsp;

// The CYCCNT counts in clock cycles. Using the clock hz should give us a ~1 second period.
const PERIOD: u32 = PLL1::ARM_HZ;

#[rtic::app(device = teensy4_bsp, monotonic = rtic::cyccnt::CYCCNT, peripherals = true)]
const APP: () = {
    struct Resources<'a> {
        led: LED,
        buzzer: GPIO<P9, gpio::Output>
    }

    #[init(schedule = [blink, buzz])]
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

        // Grab the led out og yhr pins
        let mut led = bsp::configure_led(pins.p13);

        // Start the led High
        led.set_high().unwrap();

        let mut buzzer = 

        // Schedule the first blink.
        cx.schedule.blink(cx.start + PERIOD.cycles()).unwrap();

        init::LateResources {
            led,
            buzzer
        }
    }

    fn buzz(cx: buzz::Context) {

    }

    #[task(resources = [led, pwm2_handle, pwm2_sm2], schedule = [blink])]
    fn blink(cx: blink::Context) {
        cx.resources.led.toggle();

        // Schedule the following blink.
        cx.schedule.blink(cx.scheduled + PERIOD.cycles()).unwrap();
    }

    // RTIC requires that unused interrupts are declared in an extern block when
    // using software tasks
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
