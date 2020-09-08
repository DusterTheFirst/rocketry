use crate::avionics::Avionics;
pub use crate::ui::Peripheral;
use crate::vector::Vector3;

#[no_mangle]
pub extern "C" fn create_avionics() -> Avionics {
    Avionics::new()
}

#[no_mangle]
pub extern "C" fn init_avionics(avionics: &mut Avionics) {
    avionics.init();
}

#[no_mangle]
pub extern "C" fn tick_avionics(avionics: &mut Avionics) {
    avionics.tick();
}

#[no_mangle]
pub extern "C" fn new_vector3(x: f64, y: f64, z: f64) -> Vector3 {
    Vector3::from((x, y, z))
}