#include "pins.h"
#include "tones.h"
#include <Adafruit_BNO055.h>
#include <Adafruit_Sensor.h>
#include <Arduino.h>
#include <InternalTemperature.h>
#include <Plotter.h>
#include <Wire.h>

namespace bno055 {
    namespace orientation {
        /// Three axis orientation data based on a 360° sphere
        namespace euler {
            double x = 0;
            double y = 0;
            double z = 0;
        }

        /// Four point quaternion output for more accurate data manipulation
        namespace quaterion {
            double a = 0;
            double b = 0;
            double c = 0;
            double d = 0;

        }
    }

    /// Three axis of 'rotation speed' in rad/s
    namespace angular_velocity {
        double x = 0;
        double y = 0;
        double z = 0;
    }

    namespace acceleration {
        /// Three axis of linear acceleration data (acceleration minus gravity) in m/s^2
        namespace linear {
            double x = 0;
            double y = 0;
            double z = 0;
        }

        /// Three axis of gravitational acceleration (minus any movement) in m/s^2
        namespace gravity {
            double x = 0;
            double y = 0;
            double z = 0;
        }

        /// Three axis of acceleration (gravity + linear motion) in m/s^2
        namespace both {
            double x = 0;
            double y = 0;
            double z = 0;
        }
    }

    /// Three axis of magnetic field sensing in micro Tesla (uT)
    namespace magnetic_field {
        double x = 0;
        double y = 0;
        double z = 0;
    }

    /// Ambient temperature in degrees celsius
    int8_t temperature = 0;
}

namespace teensy {
    float temperature = 0;
}

Adafruit_BNO055 bno = Adafruit_BNO055(55, 0x29);

Plotter p;

void setup() {
    p.Begin(); // start plotter

    // BNO-055
    p.AddTimeGraph("Absolute Orientation (deg)", 500,
                   "X", bno055::orientation::euler::x,
                   "Y", bno055::orientation::euler::y,
                   "Z", bno055::orientation::euler::z);
    // p.AddTimeGraph("Absolute Orientation (quaterion)", 500,
    //                "a", bno055::orientation::quaterion::a,
    //                "b", bno055::orientation::quaterion::b,
    //                "c", bno055::orientation::quaterion::c,
    //                "d", bno055::orientation::quaterion::d);
    p.AddTimeGraph("Angular Velocity (rad/s)", 500,
                   "X", bno055::angular_velocity::x,
                   "Y", bno055::angular_velocity::y,
                   "Z", bno055::angular_velocity::z);
    p.AddTimeGraph("Acceleration (m/s^2)", 500,
                   "X", bno055::acceleration::both::x,
                   "Y", bno055::acceleration::both::y,
                   "Z", bno055::acceleration::both::z);
    // p.AddTimeGraph("Acceleration - Gravity (m/s^2)", 500,
    //                "X", bno055::acceleration::linear::x,
    //                "Y", bno055::acceleration::linear::y,
    //                "Z", bno055::acceleration::linear::z);
    p.AddTimeGraph("Gravity (m/s^2)", 500,
                   "X", bno055::acceleration::gravity::x,
                   "Y", bno055::acceleration::gravity::y,
                   "Z", bno055::acceleration::gravity::z);
    // p.AddTimeGraph("Magnetic Field (uT)", 500,
    //                "X", bno055::magnetic_field::x,
    //                "Y", bno055::magnetic_field::y,
    //                "Z", bno055::magnetic_field::z);
    p.AddTimeGraph("Temperature (*C)", 500,
                   "BMP-055", bno055::temperature,
                   "Teensy", teensy::temperature);

    /* Initialise the sensor */
    if (!bno.begin()) {
        Serial.print("Could not connect to BNO055");

        Tones::error_chime();
        while (1)
            ;
    }

    bno.setExtCrystalUse(true);

    pinMode(BUZZER_PIN, OUTPUT);
    Tones::startup_chime();
}

double last_1hz_clock = 0;
double last_100hz_clock = 0;

void loop() {
    double current_millis = millis();

    // 1Hz
    if (current_millis - last_1hz_clock > 1000) {
        bno055::temperature = bno.getTemp();
        teensy::temperature = InternalTemperature.readTemperatureC();

        // Serial.print();
        // Serial.print(",");
        // Serial.println(bno055::temperature);

        last_1hz_clock = current_millis;
    }

    if (current_millis - last_100hz_clock > 10) {
        p.Plot();

        last_100hz_clock = current_millis;
    }
}