#include "interop/cpp.h"
#include "oxide.h"
#include <Adafruit_BMP280.h>
#include <Adafruit_BNO055.h>
#include <Adafruit_Sensor.h>
#include <Arduino.h>
#include <InternalTemperature.h>
#include <Plotter.h>
#include <Wire.h>

Adafruit_BNO055 bno(55, 0x29);
Adafruit_BMP280 bmp;

Plotter p;

Avionics avionics = create_avionics();
SensorData *data = &avionics.sensor_data;

void setup() {
    p.Begin(); // start plotter

    // BNO-055
    p.AddTimeGraph("Absolute Orientation (deg)", 300,
                   "X", data->bno055.orientation.euler.x,
                   "Y", data->bno055.orientation.euler.y,
                   "Z", data->bno055.orientation.euler.z);
    // p.AddTimeGraph("Absolute Orientation (quaterion)", 300,
    //                "W", data->bno055.orientation.quaterion.w(),
    //                "X", data->bno055.orientation.quaterion.x(),
    //                "Y", data->bno055.orientation.quaterion.y(),
    //                "Z", data->bno055.orientation.quaterion.z());
    p.AddTimeGraph("Angular Velocity (rad/s)", 300,
                   "X", data->bno055.angular_velocity.x,
                   "Y", data->bno055.angular_velocity.y,
                   "Z", data->bno055.angular_velocity.z);
    p.AddTimeGraph("Acceleration (m/s^2)", 300,
                   "X", data->bno055.acceleration.both.x,
                   "Y", data->bno055.acceleration.both.y,
                   "Z", data->bno055.acceleration.both.z);
    p.AddTimeGraph("Linear Acceleration (m/s^2)", 300,
                   "X", data->bno055.acceleration.linear.x,
                   "Y", data->bno055.acceleration.linear.y,
                   "Z", data->bno055.acceleration.linear.z);
    p.AddTimeGraph("Gravity (m/s^2)", 300,
                   "X", data->bno055.acceleration.gravity.x,
                   "Y", data->bno055.acceleration.gravity.y,
                   "Z", data->bno055.acceleration.gravity.z);
    p.AddTimeGraph("Magnetic Field (uT)", 300,
                   "X", data->bno055.magnetic_field.x,
                   "Y", data->bno055.magnetic_field.y,
                   "Z", data->bno055.magnetic_field.z);
    p.AddTimeGraph("Preassure and Altitude", 300,
                   "Pressure (Pa)", data->bmp280.pressure,
                   "Approx. Altitude (m)", data->bmp280.altitude);
    p.AddTimeGraph("Temperature (*C)", 300,
                   "BNO-055", data->bno055.temperature,
                   "BMP-280", data->bmp280.temperature,
                   "Teensy", data->teensy.temperature);

    /* Initialise the sensors */
    if (!bno.begin()) {
        Serial.print("Could not connect to BNO055");

        error_chime(Peripheral::BNO055);
    }

    bno.setExtCrystalUse(true);

    if (!bmp.begin()) {
        Serial.println("Could not connect to BMP280");

        error_chime(Peripheral::BMP280);
    }

    init_avionics(&avionics);
    startup_chime();
}

void loop_1Hz() {
    data->bno055.temperature = bno.getTemp();
    data->bmp280.temperature = bmp.readTemperature();
    data->teensy.temperature = InternalTemperature.readTemperatureC();
}

void loop_10Hz() {
}

void loop_20Hz() {
    data->bno055.magnetic_field = to_rust_vec(bno.getVector(Adafruit_BNO055::VECTOR_MAGNETOMETER));
}

void loop_100Hz() {
    data->bno055.acceleration.both = to_rust_vec(bno.getVector(Adafruit_BNO055::VECTOR_ACCELEROMETER));
    data->bno055.acceleration.linear = to_rust_vec(bno.getVector(Adafruit_BNO055::VECTOR_LINEARACCEL));
    data->bno055.acceleration.gravity = to_rust_vec(bno.getVector(Adafruit_BNO055::VECTOR_GRAVITY));
    data->bno055.angular_velocity = to_rust_vec(bno.getVector(Adafruit_BNO055::VECTOR_GYROSCOPE));
    data->bno055.orientation.euler = to_rust_vec(bno.getVector(Adafruit_BNO055::VECTOR_EULER));
    // data->bno055.orientation.quaterion = bno.getQuat();

    data->bmp280.pressure = bmp.readPressure();
    data->bmp280.altitude = bmp.readAltitude(1017.6097943333434);

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

    tick_avionics(&avionics);
}