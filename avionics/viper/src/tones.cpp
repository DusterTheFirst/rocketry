#include "tones.h"

namespace Tones {
    void startup_chime() {
        tone(BUZZER_PIN, 440);
        delay(150);
        tone(BUZZER_PIN, 440 * 2);
        delay(150);
        tone(BUZZER_PIN, 440 * 3);
        delay(150);
        tone(BUZZER_PIN, 440);
        delay(300);
        noTone(BUZZER_PIN);
        delay(100);
        tone(BUZZER_PIN, 440);
        delay(300);
        noTone(BUZZER_PIN);
        delay(100);
        tone(BUZZER_PIN, 440);
        delay(300);
        noTone(BUZZER_PIN);
    }

    void error_chime(Peripheral p) {
        for (int i = 0; i < 4; i++) {
            tone(BUZZER_PIN, 440);
            delay(150);
            tone(BUZZER_PIN, 220);
            delay(150);
        }
        delay(1000);
        noTone(BUZZER_PIN);
        delay(1000);
        while (true) {
            for (uint8_t i = (int)p + 1; i > 0; i--) {
                tone(BUZZER_PIN, 440);
                delay(150);
                noTone(BUZZER_PIN);
                delay(250);
            }
            tone(BUZZER_PIN, 220);
            delay(1000);
            noTone(BUZZER_PIN);
            delay(2000);
        }
    }
}