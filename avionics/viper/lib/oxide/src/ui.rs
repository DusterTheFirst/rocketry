#[repr(u8)]
#[allow(dead_code)]
pub enum Peripheral {
    BNO055 = 0x0,
    BMP280 = 0x1,
}

pub mod audio {
    use super::Peripheral;
    use crate::{constants::BUZZER_PIN, interop::rust::arduino::*};

    pub fn init() {
        pin_mode(BUZZER_PIN, PinMode::Output);
    }

    #[no_mangle]
    pub extern "C" fn startup_chime() {
        tone(BUZZER_PIN, 440);
        delay(150);
        tone(BUZZER_PIN, 440 * 2);
        delay(150);
        tone(BUZZER_PIN, 440 * 3);
        delay(150);
        tone(BUZZER_PIN, 440);
        delay(300);
        no_tone(BUZZER_PIN);
        delay(100);
        tone(BUZZER_PIN, 440);
        delay(300);
        no_tone(BUZZER_PIN);
        delay(100);
        tone(BUZZER_PIN, 440);
        delay(300);
        no_tone(BUZZER_PIN);
    }

    #[no_mangle]
    pub extern "C" fn error_chime(p: Peripheral) {
        let p: u8 = p as _;

        for _ in 0..4 {
            tone(BUZZER_PIN, 440);
            delay(150);
            tone(BUZZER_PIN, 220);
            delay(150);
        }
        delay(1000);
        no_tone(BUZZER_PIN);
        delay(1000);
        loop {
            for _ in 0..=p {
                tone(BUZZER_PIN, 440);
                delay(150);
                no_tone(BUZZER_PIN);
                delay(250);
            }
            tone(BUZZER_PIN, 220);
            delay(1000);
            no_tone(BUZZER_PIN);
            delay(2000);
        }
    }
}
