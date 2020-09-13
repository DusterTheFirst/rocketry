use core::{sync::atomic::AtomicU32, sync::atomic::Ordering};
use log::error;
use nalgebra::Vector3;
use spin::{RwLock, RwLockReadGuard};
use teensyduino::{millis, serial::SERIAL};

use super::Vec3;

#[repr(C)]
#[derive(Debug)]
#[no_mangle]
struct BNO055_100HZPacket {
    acceleration: Vec3,
    linear_acceleration: Vec3,
    gravity: Vec3,
    angular_velocity: Vec3,
    orientation: Vec3,
}

extern "C" {
    fn read_100hz() -> BNO055_100HZPacket;
}

pub struct BNO055(RwLock<BNO055Data>);

#[derive(Debug, Copy, Clone)]
pub struct BNO055Data {
    pub acceleration: Vector3<f64>,
    pub linear_acceleration: Vector3<f64>,
    pub gravity: Vector3<f64>,
    pub angular_velocity: Vector3<f64>,
    pub orientation: Vector3<f64>,
}

impl Default for BNO055 {
    fn default() -> Self {
        Self(RwLock::new(BNO055Data {
            acceleration: Default::default(),
            linear_acceleration: Default::default(),
            gravity: Default::default(),
            angular_velocity: Default::default(),
            orientation: Default::default(),
        }))
    }
}

impl BNO055 {
    pub fn tick(&self) {
        static LAST_100HZ_MILLIS: AtomicU32 = AtomicU32::new(0);

        let current_millis = millis();

        if current_millis - LAST_100HZ_MILLIS.load(Ordering::Relaxed) > 10 {
            error!("we goin in boyz {}", millis() - current_millis);

            #[allow(unsafe_code)]
            let packet = unsafe { read_100hz() };

            error!("a {:?} {}", packet, millis() - current_millis);

            let mut data = self.0.write();

            error!("b {}", millis() - current_millis);

            data.acceleration = packet.acceleration.into();
            data.linear_acceleration = packet.linear_acceleration.into();
            data.gravity = packet.gravity.into();
            data.angular_velocity = packet.angular_velocity.into();
            data.orientation = packet.orientation.into();

            error!("c {}", millis() - current_millis);

            LAST_100HZ_MILLIS.store(current_millis, Ordering::Relaxed);
            error!("d {}", millis() - current_millis);
        }
    }

    pub fn data(&self) -> BNO055Data {
        *self.0.read()
    }
}
