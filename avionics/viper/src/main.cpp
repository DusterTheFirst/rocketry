// This file is used to hook the platformio build script

// Needed header imports to satisfy the libraries used
#include <Arduino.h>
#include <core_pins.h>
#include <SPI.h>
#include <Wire.h>

extern "C" void serial_begin(long baudrate) {
    Serial.begin(baudrate);
}

/// Turn inline functions into callable functions
extern "C" {
void extern_pinModeFast(uint8_t pin, uint8_t mode) {
        digitalWriteFast(pin, val);
    }

    void extern_digitalWriteFast(uint8_t pin, uint8_t val) {
        digitalWriteFast(pin, val);
    }

    uint8_t extern_digitalReadFast(uint8_t pin) {
        return digitalReadFast(pin);
    }

    void extern_digitalToggleFast(uint8_t pin) {
        digitalToggleFast(pin);
    }
}