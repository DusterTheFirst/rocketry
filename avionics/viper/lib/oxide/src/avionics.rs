use crate::{interface::tones, sensor_data::SensorData};

#[repr(C)]
pub struct Avionics {
    sensor_data: SensorData,
}

impl Avionics {
    pub fn new() -> Avionics {
        Avionics {
            sensor_data: Default::default(),
        }
    }

    pub fn init(&mut self) {
        tones::init();
    }

    pub fn tick(&mut self) {}
}
