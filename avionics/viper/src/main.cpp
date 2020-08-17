#include "pins.h"
#include "oxide.h"
#include "tones.h"
#include <Adafruit_BMP280.h>
#include <Adafruit_BNO055.h>
#include <Adafruit_Sensor.h>
#include <Arduino.h>
#include <InternalTemperature.h>
#include <Plotter.h>
#include <Wire.h>

using namespace imu;

namespace bno055 {
    namespace orientation {
        /// Three axis orientation data based on a 360° sphere
        Vector<3> euler;

        /// Four point quaternion output for more accurate data manipulation
        Quaternion quaterion;
    }

    /// Three axis of 'rotation speed' in rad/s
    Vector<3> angular_velocity;

    namespace acceleration {
        /// Three axis of linear acceleration data (acceleration minus gravity) in m/s^2
        Vector<3> linear;

        /// Three axis of gravitational acceleration (minus any movement) in m/s^2
        Vector<3> gravity;

        /// Three axis of acceleration (gravity + linear motion) in m/s^2
        Vector<3> both;
    }

    /// Three axis of magnetic field sensing in micro Tesla (uT)
    Vector<3> magnetic_field;

    /// Ambient temperature in degrees celsius
    int8_t temperature = 0;
}

namespace bmp280 {
    /// Ambient temperature in degrees celsius
    float temperature = 0;

    /// Ambient pressure
    uint32_t pressure = 0;

    /// Ambient pressure
    float altitude = 0;
}

namespace teensy {
    /// Chip temperature in degrees celsius
    float temperature = 0;
}

Adafruit_BNO055 bno(55, 0x29);
Adafruit_BMP280 bmp;

Plotter p;

uint8_t test_val = test(69);

void setup() {
    p.Begin(); // start plotter

    // BNO-055
    p.AddTimeGraph("Absolute Orientation (deg)", 300,
                   "X", bno055::orientation::euler.x(),
                   "Y", bno055::orientation::euler.y(),
                   "Z", bno055::orientation::euler.z());
    p.AddTimeGraph("Absolute Orientation (quaterion)", 300,
                   "W", bno055::orientation::quaterion.w(),
                   "X", bno055::orientation::quaterion.x(),
                   "Y", bno055::orientation::quaterion.y(),
                   "Z", bno055::orientation::quaterion.z());
    p.AddTimeGraph("Angular Velocity (rad/s)", 300,
                   "X", bno055::angular_velocity.x(),
                   "Y", bno055::angular_velocity.y(),
                   "Z", bno055::angular_velocity.z());
    p.AddTimeGraph("Acceleration (m/s^2)", 300,
                   "X", bno055::acceleration::both.x(),
                   "Y", bno055::acceleration::both.y(),
                   "Z", bno055::acceleration::both.z());
    p.AddTimeGraph("Acceleration - Gravity (m/s^2)", 300,
                   "X", bno055::acceleration::linear.x(),
                   "Y", bno055::acceleration::linear.y(),
                   "Z", bno055::acceleration::linear.z());
    p.AddTimeGraph("Gravity (m/s^2)", 300,
                   "X", bno055::acceleration::gravity.x(),
                   "Y", bno055::acceleration::gravity.y(),
                   "Z", bno055::acceleration::gravity.z());
    p.AddTimeGraph("Magnetic Field (uT)", 300,
                   "X", bno055::magnetic_field.x(),
                   "Y", bno055::magnetic_field.y(),
                   "Z", bno055::magnetic_field.z());
    p.AddTimeGraph("Preassure and Altitude", 300,
                   "Pressure (Pa)", bmp280::pressure,
                   "Approx. Altitude (m)", bmp280::altitude);
    p.AddTimeGraph("Temperature (*C)", 300,
                   "BNO-055", bno055::temperature,
                   "BMP-280", bmp280::temperature,
                   "Teensy", teensy::temperature,
                   "Test", test_val);

    /* Initialise the sensor */
    if (!bno.begin()) {
        Serial.print("Could not connect to BNO055");

        Tones::error_chime(Peripheral::BMP055);
    }

    if (!bmp.begin()) {
        Serial.println("Could not connect to BMP280");

        Tones::error_chime(Peripheral::BMP280);
    }

    bno.setExtCrystalUse(true);

    pinMode(BUZZER_PIN, OUTPUT);
    Tones::startup_chime();
}

void loop_1Hz() {
    bno055::temperature = bno.getTemp();
    bmp280::temperature = bmp.readTemperature();
    teensy::temperature = InternalTemperature.readTemperatureC();
}

void loop_10Hz() {
}

void loop_20Hz() {
    bno055::magnetic_field = bno.getVector(Adafruit_BNO055::VECTOR_MAGNETOMETER);
}

void loop_100Hz() {
    bno055::acceleration::both = bno.getVector(Adafruit_BNO055::VECTOR_ACCELEROMETER);
    bno055::acceleration::linear = bno.getVector(Adafruit_BNO055::VECTOR_LINEARACCEL);
    bno055::acceleration::gravity = bno.getVector(Adafruit_BNO055::VECTOR_GRAVITY);
    bno055::angular_velocity = bno.getVector(Adafruit_BNO055::VECTOR_GYROSCOPE);
    bno055::orientation::euler = bno.getVector(Adafruit_BNO055::VECTOR_EULER);
    bno055::orientation::quaterion = bno.getQuat();

    bmp280::pressure = bmp.readPressure();
    bmp280::altitude = bmp.readAltitude(1017.6097943333434);

    p.Plot();
}

double last_1hz_clock = 0;
double last_10hz_clock = 0;
double last_20hz_clock = 0;
double last_100hz_clock = 0;

void loop() {
    double current_millis = millis();

    if (current_millis - last_1hz_clock > 1000) {
        loop_1Hz();
        last_1hz_clock = current_millis;
    }

    if (current_millis - last_10hz_clock > 100) {
        loop_10Hz();
        last_10hz_clock = current_millis;
    }

    if (current_millis - last_20hz_clock > 50) {
        loop_20Hz();
        last_20hz_clock = current_millis;
    }

    if (current_millis - last_100hz_clock > 10) {
        loop_100Hz();
        last_100hz_clock = current_millis;
    }
}