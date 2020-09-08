// This file is used to hook the platformio build script
#include <Arduino.h>
#include <SPI.h>
#include <Wire.h>

extern "C" void rust_setup();
extern "C" void rust_loop();

void setup() { rust_setup(); }

void loop() { rust_loop(); }