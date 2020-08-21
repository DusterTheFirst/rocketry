#pragma once

#include "oxide.h"
#include <Adafruit_BNO055.h>
#include <Arduino.h>

// Helper methods that must be created for rust to bind to
extern "C" void arduino_tone(uint8_t pin, uint16_t frequency);
extern "C" void arduino_noTone(uint8_t pin);