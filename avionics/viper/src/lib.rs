#![no_std]
#![no_builtins]
#![deny(unsafe_code)]

use consts::BUZZER;
use core::fmt::Write;
use log::{info, warn, LevelFilter, debug, trace};
use teensyduino::{
    delay,
    serial::log::LoggingConfig,
    serial::USBSerialWriter,
    serial::{log::USBLogger, SERIAL},
    tempmon, PinMode, LED_BUILTIN,
};

mod consts;
mod ui;

#[no_mangle]
pub extern "C" fn setup() {
    LED_BUILTIN.mode(PinMode::Output);
    BUZZER.init();

    if USBLogger::init(LoggingConfig {
        max_level: LevelFilter::Trace,
        filters: &[],
    })
    .is_err()
    {
        // FIXME: Better notif
        BUZZER.no_usb_chime_blocking();
    }

    BUZZER.startup_chime_blocking();
}

#[no_mangle]
pub extern "C" fn r#loop() {
    LED_BUILTIN.toggle();
    // BUZZER.tone_with_duration(1975, 100);
    delay(1000);
    // BUZZER.no_tone();

    if let Some(input) = SERIAL::read_str().unwrap() {
        info!("got: {}", input);
    } else {
        warn!("aint got nothin boss");
    }

    debug!("temp *C: {}", tempmon::get_temp());

    trace!("h: {} {}", SERIAL::dtr(), SERIAL::rts());

    // panic!("bruh");

    BUZZER.tick_beep();
}

#[panic_handler]
fn panic(info: &core::panic::PanicInfo) -> ! {
    LED_BUILTIN.set_high();

    BUZZER.panic_chime_blocking();

    // TODO: gotta use screen to be able to see these escape codes
    // FIXME: remove carriage return
    writeln!(USBSerialWriter {}, "\n\r\u{1B}[31;m!!! {}\r", info).ok();

    loop {
        LED_BUILTIN.toggle();
        delay(50);
    }
}
