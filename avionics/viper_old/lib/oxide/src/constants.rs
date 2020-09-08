use crate::interop::rust::arduino::Pin;

pub const BUZZER_PIN: Pin = unsafe { Pin::new(9) };
