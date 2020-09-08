#include "interop/cpp.h"

Vector3 to_rust_vec(imu::Vector<3> vec) {
    return new_vector3(vec.x(), vec.y(), vec.z());
}