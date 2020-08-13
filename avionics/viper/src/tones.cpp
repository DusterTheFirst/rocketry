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
} // namespace Tones