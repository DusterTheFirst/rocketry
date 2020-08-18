use crate::sensor_data::SensorData;

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

    pub fn tick(&mut self) {}
}

pub struct AvionicsStateMachine<S> {
    state: S,
}
