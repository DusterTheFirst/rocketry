use crate::avionics::Avionics;
pub use crate::interface::Peripheral;
use crate::vector::Vector3;

#[no_mangle]
pub extern "C" fn init_avionics() -> Avionics {
    Avionics::new()
}

#[no_mangle]
pub extern "C" fn tick_avionics(avionics: &mut Avionics) {
    avionics.tick();
}

#[no_mangle]
pub extern "C" fn new_vector3(x: f64, y: f64, z: f64) -> Vector3 {
    Vector3::from((x, y, z))
}

pub mod arduino {
    extern "C" {
        pub fn tone(pin: u8, frequency: u16);
        pub fn stopTone(pin: u8);
        pub fn delay(delay: u32);
    }
}
