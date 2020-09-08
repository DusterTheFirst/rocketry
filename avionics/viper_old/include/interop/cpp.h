#pragma once

#include "oxide.h"
#include <Adafruit_BNO055.h>

Vector3 to_rust_vec(imu::Vector<3> vec);