#include "interop/rust.h"

// Only here because weirdness
extern "C" void arduino_tone(uint8_t pin, uint16_t frequency) {
    tone(pin, frequency, 0);
}

// Only here because weirdness
extern "C" void arduino_noTone(uint8_t pin) {
    noTone(pin);
}