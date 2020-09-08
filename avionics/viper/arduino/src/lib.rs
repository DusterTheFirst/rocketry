//! Functions from the arduino framework, re-exported and wrapped
//! in rusty, safe wrappers.

#![no_std]
#![warn(missing_docs, missing_crate_level_docs)]

#[macro_use]
extern crate unsafe_fn;

pub mod gpio;
pub mod serial;
pub mod sound;

pub use gpio::{Pin, PinMode, LED_BUILTIN};
pub use sound::Tone;

/// Pauses the program for the amount of time (in milliseconds) specified as
/// parameter. (There are 1000 milliseconds in a second.)
/// 
/// # Notes and Warnings
/// While it is easy to create a blinking LED with the delay() function and many
/// sketches use short delays for such tasks as switch debouncing, the use of
/// delay() in a sketch has significant drawbacks. No other reading of sensors,
/// mathematical calculations, or pin manipulation can go on during the delay function,
/// so in effect, it brings most other activity to a halt. For alternative approaches
/// to controlling timing see the Blink Without Delay sketch, which loops, polling the
/// millis() function until enough time has elapsed. More knowledgeable programmers usually
/// avoid the use of delay() for timing of events longer than 10’s of milliseconds unless
/// the Arduino sketch is very simple.
/// 
/// Certain things do go on while the delay() function is controlling the Atmega chip,
/// however, because the delay function does not disable interrupts. Serial communication
/// that appears at the RX pin is recorded, PWM (analogWrite) values and pin states are
/// maintained, and interrupts will work as they should.
/// 
/// # See Also
/// - **https://www.arduino.cc/reference/en/language/functions/time/delay/**
pub fn delay(ms: u64) {
    extern "C" {
        fn delay(ms: u64);
    }

    unsafe { delay(ms) }
}
