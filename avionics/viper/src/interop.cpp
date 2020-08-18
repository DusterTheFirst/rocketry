#include "interop.h"

Vector3 to_rust_vec(imu::Vector<3> vec) {
    return new_vector3(vec.x(), vec.y(), vec.z());
}

void tone(uint8_t pin, uint16_t frequency) {
    tone(pin, frequency, 0);
}