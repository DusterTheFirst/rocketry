use crate::{ffi::arduino::*, sensor_data::SensorData, vector::Vector3, BUZZER_PIN};

#[repr(C)]
pub struct Avionics {
    sensor_data: SensorData,
    tone: u16,
}

impl Avionics {
    pub fn new() -> Avionics {
        Avionics {
            sensor_data: Default::default(),
            tone: 0,
        }
    }

    pub fn tick(&mut self) {
        if self.tone > 1000 {
            self.tone = 0;
        }
        self.tone += 220;
        unsafe {
            tone(BUZZER_PIN, self.tone);
            delay(10);
        }
    }
}

pub struct AvionicsStateMachine<S> {
    state: S,
}
