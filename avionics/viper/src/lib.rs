#![no_std]
#![deny(unsafe_code)]

use arduino::{delay, Pin, PinMode, Tone, LED_BUILTIN};

#[allow(unsafe_code)]
const BUZZER: Pin = unsafe { Pin::new(9) };

#[no_mangle]
pub extern "C" fn rust_setup() {
    LED_BUILTIN.mode(PinMode::Output);
    BUZZER.mode(PinMode::Output);
}

#[no_mangle]
pub extern "C" fn rust_loop() {
    LED_BUILTIN.set_high();
    // BUZZER.tone_with_duration(1975, 100);
    delay(1000);
    LED_BUILTIN.set_low();
    // BUZZER.no_tone();
    delay(200);

    // panic!();
}

#[panic_handler]
fn panic(_info: &core::panic::PanicInfo) -> ! {
    BUZZER.tone(4186);
    delay(500);
    BUZZER.tone_with_duration(65, 10000);

    loop {
        LED_BUILTIN.set_high();
        delay(50);

        LED_BUILTIN.set_low();
        delay(50);
    }
}
