#include <Adafruit_BMP280.h>
#include <Adafruit_BNO055.h>
#include <Adafruit_Sensor.h>
#include <Arduino.h>

using namespace imu;

struct Vec3 {
    double x;
    double y;
    double z;
};

struct BNO055_100HZPacket {
    Vec3 acceleration;
    Vec3 linear_acceleration;
    Vec3 gravity;
    Vec3 angular_velocity;
    Vec3 orientation;
};

Adafruit_BNO055 bno(55, 0x29);
Adafruit_BMP280 bmp;

const inline Vec3 to_interop_vec(sensors_vec_t vec) {
    return {.x = vec.x, .y = vec.y, .z = vec.z};
}

extern "C" BNO055_100HZPacket read_100hz() {
    sensors_event_t event;
    bno.getEvent(&event);
    // bmp.readTemperature();
    // bmp.readPressure();

    Vec3 acceleration = {.x = 0, .y = 0, .z = 0};
    // to_interop_vec(
    // bno.getVector(Adafruit_BNO055::VECTOR_ACCELEROMETER);
    // );
    Vec3 linear_acceleration = {.x = 0, .y = 0, .z = 0};
    // to_interop_vec(
    // bno.getVector(Adafruit_BNO055::VECTOR_LINEARACCEL);
    // );
    Vec3 gravity = {.x = 0, .y = 0, .z = 0};
    // to_interop_vec(
    // bno.getVector(Adafruit_BNO055::VECTOR_GRAVITY);
    // );
    Vec3 angular_velocity = {.x = 0, .y = 0, .z = 0};
    // to_interop_vec(
    // bno.getVector(Adafruit_BNO055::VECTOR_GYROSCOPE);
    // );
    Vec3 orientation = {.x = 0, .y = 0, .z = 0};
    // to_interop_vec(
    // bno.getVector(Adafruit_BNO055::VECTOR_EULER);
    // );

    return {.acceleration = to_interop_vec(event.acceleration),
            .linear_acceleration = linear_acceleration,
            .gravity = linear_acceleration,
            .angular_velocity = to_interop_vec(event.gyro),
            .orientation = to_interop_vec(event.orientation)};
}