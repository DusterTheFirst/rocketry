#![no_std]

mod sensor_data;
mod vector;

pub use vector::Vector3;

use core::panic::PanicInfo;
use sensor_data::SensorData;

#[panic_handler]
fn panic(_info: &PanicInfo) -> ! {
    loop {}
}

#[repr(C)]
pub struct Avionics {
    sensor_data: SensorData,
}

impl Avionics {
    #[no_mangle]
    pub extern "C" fn h(this: Avionics) -> Avionics {
        Avionics {
            sensor_data: Default::default(),
        }
    }
}

#[no_mangle]
pub extern "C" fn init_avionics() -> Avionics {
    Avionics {
        sensor_data: Default::default(),
    }
}
