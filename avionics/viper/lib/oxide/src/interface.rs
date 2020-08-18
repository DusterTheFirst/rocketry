#[repr(u8)]
pub enum Peripheral {
    BNO055 = 0x0,
    BMP280 = 0x1,
}

pub mod tones {
    use crate::ffi::arduino::*;
    use crate::BUZZER_PIN;
    use super::Peripheral;

    #[no_mangle]
    pub unsafe extern "C" fn startup_chime() {
        tone(BUZZER_PIN, 440);
        delay(150);
        tone(BUZZER_PIN, 440 * 2);
        delay(150);
        tone(BUZZER_PIN, 440 * 3);
        delay(150);
        tone(BUZZER_PIN, 440);
        delay(300);
        stopTone(BUZZER_PIN);
        delay(100);
        tone(BUZZER_PIN, 440);
        delay(300);
        stopTone(BUZZER_PIN);
        delay(100);
        tone(BUZZER_PIN, 440);
        delay(300);
        stopTone(BUZZER_PIN);
    }

    #[no_mangle]
    pub unsafe extern "C" fn error_chime(p: Peripheral) {
        let p: u8 = p as _;

        for _ in 0..4 {
            tone(BUZZER_PIN, 440);
            delay(150);
            tone(BUZZER_PIN, 220);
            delay(150);
        }
        delay(1000);
        stopTone(BUZZER_PIN);
        delay(1000);
        loop {
            for _ in 0..=p {
                tone(BUZZER_PIN, 440);
                delay(150);
                stopTone(BUZZER_PIN);
                delay(250);
            }
            tone(BUZZER_PIN, 220);
            delay(1000);
            stopTone(BUZZER_PIN);
            delay(2000);
        }
    }
}
