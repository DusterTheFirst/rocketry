#![no_std]
#![deny(unsafe_code)]

use ui::Buzzer;
use arduino::{delay, Pin, PinMode, LED_BUILTIN};

mod ui;

#[allow(unsafe_code)]
const BUZZER: Buzzer = Buzzer::new(unsafe { Pin::new(9) });

#[no_mangle]
pub extern "C" fn setup() {
    LED_BUILTIN.mode(PinMode::Output);
    BUZZER.init();

    BUZZER.startup_chime_blocking();
}

#[no_mangle]
pub extern "C" fn r#loop() {
    LED_BUILTIN.toggle();
    // BUZZER.tone_with_duration(1975, 100);
    delay(1000);
    // BUZZER.no_tone();

    panic!();
}

#[panic_handler]
fn panic(_info: &core::panic::PanicInfo) -> ! {
    LED_BUILTIN.set_high();
    
    BUZZER.panic_chime_blocking();

    loop {
        LED_BUILTIN.toggle();
        delay(50);
    }
}
