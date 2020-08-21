#![no_std]

mod avionics;
mod constants;
mod interface;
mod interop;
mod sensor_data;
mod vector;

use core::panic::PanicInfo;

#[panic_handler]
fn panic(_info: &PanicInfo) -> ! {
    loop {}
}
