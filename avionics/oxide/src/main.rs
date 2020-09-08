#![no_std]
#![no_main]

use bsp::{
    hal::{
        ccm::{perclk, PLL1},
        gpt::{self, OutputCompareRegister},
    },
    interrupt,
    rt::{entry, interrupt},
    t40, usb, Peripherals, SysTick, LED,
};
use core::time::Duration;
use cortex_m::{asm::wfi, peripheral::NVIC};
use panic_halt as _;
use teensy4_bsp as bsp;

const OCR: OutputCompareRegister = OutputCompareRegister::Three;

static mut TIMER: Option<gpt::GPT> = None;

static mut COUNT: u8 = 0;

static mut LED: Option<LED> = None;

#[interrupt]
unsafe fn GPT1() {
    let gpt1 = TIMER.as_mut().unwrap();

    gpt1.output_compare_status(OCR).clear();

    let led = LED.as_mut().unwrap();

    log::info!("gpt1 {} {}", COUNT, led.is_set());

    COUNT += 1;

    led.toggle();

    gpt1.set_output_compare_duration(OCR, Duration::from_millis(1000));
}

#[entry]
fn main() -> ! {
    // Get the peripherals fo the teensy
    let mut p = Peripherals::take().unwrap();

    // Get the systick peripheral
    let mut systick = SysTick::new(cortex_m::Peripherals::take().unwrap().SYST);

    // Get all of the teensy pins
    let pins = t40::pins(p.iomuxc);

    // Initialize the USB stack with the default logging settings
    let mut usb_reader = usb::init(
        &systick,
        usb::LoggingConfig {
            filters: &[("oxide", None)],
            ..Default::default()
        },
    )
    .unwrap();

    // Wait 2 seconds for host to connect to usb
    systick.delay(2000);

    // Setup the arm clock speed
    let (_, ipg_hz) = p
        .ccm
        .pll1
        .set_arm_clock(PLL1::ARM_HZ, &mut p.ccm.handle, &mut p.dcdc);

    // Setup the peripheral clock
    let mut cfg = p.ccm.perclk.configure(
        &mut p.ccm.handle,
        perclk::PODF::DIVIDE_1,
        perclk::CLKSEL::IPG(ipg_hz),
    );

    // Setup a timer for the buzzer
    let mut gpt1 = p.gpt1.clock(&mut cfg);

    gpt1.set_output_interrupt_on_compare(OCR, true);
    gpt1.set_wait_mode_enable(true);
    gpt1.set_mode(gpt::Mode::FreeRunning);
    gpt1.set_output_compare_duration(OCR, Duration::from_millis(100));
    gpt1.set_enable(true);

    unsafe {
        TIMER = Some(gpt1);
        NVIC::unmask(interrupt::GPT1);
    }

    unsafe {
        // Grab the onboard led
        LED = Some(bsp::configure_led(pins.p13));
    }

    // let mut buzzer =

    loop {
        wfi();

        // log::warn!("luup");
    }
}
