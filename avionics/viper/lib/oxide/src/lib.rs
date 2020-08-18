#![no_std]

mod avionics;
mod ffi;
mod sensor_data;
mod vector;

pub use ffi::*;

use core::panic::PanicInfo;

#[panic_handler]
fn panic(_info: &PanicInfo) -> ! {
    loop {}
}

const BUZZER_PIN: u8 = 9;