#pragma once

#include "oxide.h"
#include <Adafruit_BNO055.h>
#include <Arduino.h>

Vector3 to_rust_vec(imu::Vector<3> vec);

// Idk why
void tone(uint8_t pin, uint16_t frequency);