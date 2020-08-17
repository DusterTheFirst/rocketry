#![no_std]

use core::panic::PanicInfo;

/// This function is called on panic.
#[panic_handler]
fn panic(_info: &PanicInfo) -> ! {
    loop {}
}

static mut X: u8 = 0;

#[no_mangle]
pub extern fn test(h: u8) -> u8 {
    unsafe {
        X += h;

        X
    }
}