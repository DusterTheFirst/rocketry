use crate::vector::Vector3;

#[repr(C)]
#[derive(Default)]
pub struct SensorData {
    pub bno055: BNO055,
    pub bmp280: BMP280,
    pub teensy: Teensy,
}

#[repr(C)]
#[derive(Default)]
pub struct BMP280 {
    /// Ambient temperature in degrees celsius
    pub temperature: f32,
    /// Ambient pressure
    pub pressure: u32,
    /// Ambient pressure
    pub altitude: f32,
}

#[repr(C)]
#[derive(Default)]
pub struct Teensy {
    /// Chip temperature in degrees celsius
    pub temperature: f32,
}

#[repr(C)]
#[derive(Default)]
pub struct BNO055 {
    pub orientation: Orientation,
    pub acceleration: Acceleration,
    /// Three axis of 'rotation speed' in rad/s
    pub angular_velocity: Vector3,
    /// Three axis of magnetic field sensing in micro Tesla (uT)
    pub magnetic_field: Vector3,
    /// Ambient temperature in degrees celsius
    pub temperature: u8,
}

#[repr(C)]
#[derive(Default)]
pub struct Orientation {
    /// Three axis orientation data based on a 360° sphere
    pub euler: Vector3,
    /// Four point quaternion output for more accurate data manipulation
    pub quaternion: (),
}

#[repr(C)]
#[derive(Default)]
pub struct Acceleration {
    /// Three axis of linear acceleration data (acceleration minus gravity) in m/s^2
    pub linear: Vector3,
    /// Three axis of gravitational acceleration (minus any movement) in m/s^2
    pub gravity: Vector3,
    /// Three axis of acceleration (gravity + linear motion) in m/s^2
    pub both: Vector3,
}
