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
/// - [delay() - Arduino Reference](https://www.arduino.cc/reference/en/language/functions/time/delay/)
pub fn delay(ms: u32) {
    extern "C" {
        fn delay(ms: u32);
    }

    unsafe { delay(ms) }
}

/// Pauses the program for the amount of time (in microseconds) specified by the parameter.
/// There are a thousand microseconds in a millisecond and a million microseconds in a second.
///
/// Currently, the largest value that will produce an accurate delay is 16383. This could change
/// in future Arduino releases. For delays longer than a few thousand microseconds, you should
/// use delay() instead.
/// 
/// # Notes and Warnings
/// This function works very accurately in the range 3 microseconds and up. We cannot assure that
/// delayMicroseconds will perform precisely for smaller delay-times.
///
/// As of Arduino 0018, delayMicroseconds() no longer disables interrupts.
/// 
/// # See Also
/// - [delayMicroseconds() - Arduino Reference](https://www.arduino.cc/reference/en/language/functions/time/delaymicroseconds/)
pub fn delay_microseconds(us: u32) {
    extern "C" {
        fn delayMicroseconds(us: u32);
    }

    unsafe { delayMicroseconds(us) }
}

/// Basically delay microseconds, but nanoseconds
pub fn delay_nanoseconds(ns: u32) {
    extern "C" {
        fn delayNanoseconds(ns: u32);
    }

    unsafe { delayNanoseconds(ns) }
}

/// Returns the number of milliseconds passed since the Arduino board began running the current
/// program. This number will overflow (go back to zero), after approximately 50 days.
///
/// # Returns
/// Number of milliseconds passed since the program started. 
///
/// # Notes and Warnings
/// Please note that the return value for millis() is of type u32, logic errors may occur
/// if a programmer tries to do arithmetic with smaller data types such as u16. Even i32 may
/// encounter errors as its maximum value is half that of its unsigned counterpart.
///
/// # See Also
/// - [millis() - Arduino Reference](https://www.arduino.cc/reference/en/language/functions/time/millis/)
pub fn millis() -> u32 {
    extern "C" {
        static systick_millis_count: u32;
    }

    unsafe { systick_millis_count }
}

/// Returns the number of microseconds since the Arduino board began running the current program.
/// This number will overflow (go back to zero), after approximately 70 minutes. On 16 MHz Arduino
/// boards (e.g. Duemilanove and Nano), this function has a resolution of four microseconds
/// (i.e. the value returned is always a multiple of four). On 8 MHz Arduino boards (e.g. the LilyPad),
/// this function has a resolution of eight microseconds.
///
/// # Returns
/// Returns the number of microseconds since the Arduino board began running the current program.
///
/// # Notes and Warnings
/// There are 1,000 microseconds in a millisecond and 1,000,000 microseconds in a second.
///
/// # See Also
/// - [micros() - Arduino Reference](https://www.arduino.cc/reference/en/language/functions/time/micros/)
pub fn micros() -> u32 {
    extern "C" {
        fn micros() -> u32;
    }

    unsafe { micros() }
}