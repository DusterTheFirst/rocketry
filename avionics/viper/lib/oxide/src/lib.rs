#![no_std]

mod avionics;
mod ffi;
mod sensor_data;
mod vector;
mod interface;

pub use ffi::*;

use core::panic::PanicInfo;

#[panic_handler]
fn panic(_info: &PanicInfo) -> ! {
    loop {}
}

pub const BUZZER_PIN: u8 = 9;