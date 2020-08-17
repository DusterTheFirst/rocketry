#pragma once

#include "pins.h"
#include <Arduino.h>

enum Peripheral {
    BMP055 = 0x0,
    BMP280 = 0x1
};

namespace Tones {
    void startup_chime();
    void error_chime(Peripheral p);
}