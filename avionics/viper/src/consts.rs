#![allow(unsafe_code)]

use teensyduino::Pin;

use crate::ui::Buzzer;

pub const BUZZER: Buzzer = Buzzer::new(unsafe { Pin::new(9) });
