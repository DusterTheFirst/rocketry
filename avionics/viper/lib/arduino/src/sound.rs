//! Sound functionality provided by the arduino framework
use super::gpio::Pin;

/// Allow a pin to output square wave notes asynchronously using the IntervalTimer behind the scenes.
///
/// # See Also
/// - [tone() - Arduino Reference](https://www.arduino.cc/reference/en/language/functions/advanced-io/tone/)
/// - [noTone() - Arduino Reference](https://www.arduino.cc/reference/en/language/functions/advanced-io/notone/)
pub trait Tone {
    /// Generates a square wave of the specified frequency (and 50% duty cycle) on a pin.
    /// A duration can be specified, otherwise the wave continues until a call to noTone().
    /// The pin can be connected to a piezo buzzer or other speaker to play tones.
    ///
    /// Only one tone can be generated at a time. If a tone is already playing on a different
    /// pin, the call to tone() will have no effect. If the tone is playing on the same pin,
    /// the call will set its frequency.
    ///
    /// Use of the tone() function will interfere with PWM output on pins 3 and 11
    /// (on boards other than the Mega). It is not possible to generate tones lower than 31Hz.
    /// For technical details, see Brett Hagman’s notes.
    ///
    /// # Notes and Warnings
    /// If you want to play different pitches on multiple pins, you need to call noTone() on one
    /// pin before calling tone() on the next pin.
    ///
    /// # See Also
    /// - [tone() - Arduino Reference](https://www.arduino.cc/reference/en/language/functions/advanced-io/tone/)
    fn tone(&self, frequency: u16);

    /// Generates a square wave of the specified frequency (and 50% duty cycle) on a pin.
    /// A duration can be specified, otherwise the wave continues until a call to noTone().
    /// The pin can be connected to a piezo buzzer or other speaker to play tones.
    ///
    /// Only one tone can be generated at a time. If a tone is already playing on a different
    /// pin, the call to tone() will have no effect. If the tone is playing on the same pin,
    /// the call will set its frequency.
    ///
    /// Use of the tone() function will interfere with PWM output on pins 3 and 11
    /// (on boards other than the Mega). It is not possible to generate tones lower than 31Hz.
    /// For technical details, see Brett Hagman’s notes.
    ///
    /// # Notes and Warnings
    /// If you want to play different pitches on multiple pins, you need to call noTone() on one
    /// pin before calling tone() on the next pin.
    ///
    /// # See Also
    /// - [tone() - Arduino Reference](https://www.arduino.cc/reference/en/language/functions/advanced-io/tone/)
    fn tone_with_duration(&self, frequency: u16, duration: u64);

    /// Stops the generation of a square wave triggered by tone(). Has no effect if no tone is being generated.
    ///
    /// # Notes and Warnings
    /// If you want to play different pitches on multiple pins, you need to call noTone() on one
    /// pin before calling tone() on the next pin.
    ///
    /// # See Also
    /// - [noTone() - Arduino Reference](https://www.arduino.cc/reference/en/language/functions/advanced-io/notone/)
    fn no_tone(&self);
}

extern "C" {
    fn tone(pin: u8, frequency: u16, duration: u64);
    fn noTone(pin: u8);
}

impl Tone for Pin {
    fn tone(&self, frequency: u16) {
        unsafe { tone(self.into(), frequency, 0) }
    }

    fn tone_with_duration(&self, frequency: u16, duration: u64) {
        unsafe { tone(self.into(), frequency, duration) }
    }

    fn no_tone(&self) {
        unsafe { noTone(self.into()) }
    }
}
