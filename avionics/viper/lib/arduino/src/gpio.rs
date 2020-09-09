//! Tools for interfacing with GPIO on the uC
//!
//! # See Also
//! - [Digital Pins - Arduino Reference](https://www.arduino.cc/en/Tutorial/DigitalPins)

/// The modes that a pin can be configured in
///
/// # See Also
/// - [Digital Pins - Arduino Reference](https://www.arduino.cc/en/Tutorial/DigitalPins)
#[repr(u8)]
pub enum PinMode {
    /// Pins configured this way are said to be in a high-impedance state.
    /// Input pins make extremely small demands on the circuit that they are
    /// sampling, equivalent to a series resistor of 100 megohm in front of
    /// the pin.
    ///
    /// This also means however, that pins configured as pinMode(pin, INPUT)
    /// with nothing connected to them, or with wires connected to them that
    /// are not connected to other circuits, will report seemingly random
    /// changes in pin state, picking up electrical noise from the environment,
    /// or capacitively coupling the state of a nearby pin.
    ///
    /// # Pullup Resistors
    /// Often it is useful to steer an input pin to a known state if no input
    /// is present. This can be done by adding a pullup resistor (to +5V), or
    /// a pulldown resistor (resistor to ground) on the input. A 10K resistor
    /// is a good value for a pullup or pulldown resistor.
    Input = 0,
    /// Pins configured as OUTPUT with pinMode() are said to be in a low-impedance
    /// state. This means that they can provide a substantial amount of current to
    /// other circuits. Atmega pins can source (provide positive current) or sink
    /// (provide negative current) up to 40 mA (milliamps) of current to other
    /// devices/circuits. This is enough current to brightly light up an LED
    /// (don't forget the series resistor), or run many sensors, for example,
    /// but not enough current to run most relays, solenoids, or motors.
    ///
    /// Short circuits on Arduino pins, or attempting to run high current devices
    /// from them, can damage or destroy the output transistors in the pin, or
    /// damage the entire Atmega chip. Often this will result in a "dead" pin in
    /// the microcontroller but the remaining chip will still function adequately.
    /// For this reason it is a good idea to connect OUTPUT pins to other devices
    /// with 470Ω or 1k resistors, unless maximum current draw from the pins is
    /// required for a particular application.
    Output = 1,
    /// There are 20K pullup resistors built into the Atmega chip that can be
    /// accessed from software. These built-in pullup resistors are accessed
    /// by setting the pinMode() as INPUT_PULLUP. This effectively inverts the
    /// behavior of the INPUT mode, where HIGH means the sensor is off, and
    /// LOW means the sensor is on.
    ///
    /// The value of this pullup depends on the microcontroller used. On most
    /// AVR-based boards, the value is guaranteed to be between 20kΩ and 50kΩ.
    /// On the Arduino Due, it is between 50kΩ and 150kΩ. For the exact value,
    /// consult the datasheet of the microcontroller on your board.
    ///
    /// When connecting a sensor to a pin configured with INPUT_PULLUP, the
    /// other end should be connected to ground. In the case of a simple switch,
    /// this causes the pin to read HIGH when the switch is open, and LOW when
    /// the switch is pressed.
    ///
    /// The pullup resistors provide enough current to dimly light an LED
    /// connected to a pin that has been configured as an input. If LEDs in a
    /// project seem to be working, but very dimly, this is likely what is going
    /// on.
    InputPullUp = 2,
    /// See the description of InputPullUp
    InputPullDown = 3,
    /// Open drain outputs require a pull-up resistor for the output to be able to
    /// properly “output high”. The pull-up resistor is connected between the output
    /// pin and the output voltage (Vcc in the image above) that is desired for a high
    /// state. When the internal N-FET of the IC is off, R “pulls up” the output pin to
    /// Vcc and at that point only a very small amount of “leakage current” should flow
    /// through the N-FET transistor. When the internal N-FET of the IC is on, it “pulls
    /// down” the output pin to very nearly GND and the current flow is set by Ohm’s Law
    /// (I = Vcc/R).
    OutputOpenDrain = 4,
    /// Disable the pin (High Impedance)
    InputDisable = 5,
}

/// A container for a pin number that has been verified to exist
/// This method was chosen to limit the use of unsafe when dealing with pins
///
/// # See Also
/// - [Digital Pins - Arduino Reference](https://www.arduino.cc/en/Tutorial/DigitalPins)
pub struct Pin(u8);

impl Pin {
    /// Create a new Pin to drive a GPIO
    ///
    /// # Safety
    /// The caller must verify that the pin provided is a
    /// valid pin on the board they are using. Passing an
    /// invalid pin number will result in undefined behavior
    #[unsafe_fn]
    pub const fn new(pin: u8) -> Pin {
        Pin(pin)
    }

    /// Configures the specified pin to behave either as an input or an output.
    /// See the [Digital Pins] page for details on the functionality of the pins.
    ///
    /// As of Arduino 1.0.1, it is possible to enable the internal pullup resistors
    /// with the mode INPUT_PULLUP. Additionally, the INPUT mode explicitly disables
    /// the internal pullups.
    ///
    /// # Notes and Warnings
    /// The analog input pins can be used as digital pins, referred to as A0, A1, etc.
    ///
    /// # See Also
    /// - [pinMode - Arduino Reference](https://www.arduino.cc/reference/en/language/functions/digital-io/pinmode/)
    ///
    /// [Digital Pins]: https://www.arduino.cc/en/Tutorial/DigitalPins
    pub fn mode(&self, mode: PinMode) {
        extern "C" {
            fn pinMode(pin: u8, mode: u8);
        }

        unsafe { pinMode(self.0, mode as _) }
    }

    /// Set the pins output to high. A proxy for `digital_write(true)`
    pub fn set_high(&self) {
        self.digital_write(true)
    }

    /// Set the pins output to low. A proxy for `digital_write(false)`
    pub fn set_low(&self) {
        self.digital_write(false)
    }

    /// Set the pins output to the opposite of what it currently is
    pub fn toggle(&self) {
        extern "C" {
            fn digitalToggle(pin: u8);
        }

        unsafe { digitalToggle(self.0.into()) }
    }

    /// Write a HIGH (true) or a LOW (false) value to a digital pin.
    ///
    /// If the pin has been configured as an OUTPUT with pinMode(),
    /// its voltage will be set to the corresponding value: 5V
    /// (or 3.3V on 3.3V boards) for HIGH, 0V (ground) for LOW.
    ///
    /// If the pin is configured as an INPUT, `digital_write()` will enable
    /// (HIGH) or disable (LOW) the internal pullup on the input pin.
    /// It is recommended to set the `mode()` to `PinMode::InputPullup` to enable
    /// the internal pull-up resistor. See the Digital Pins tutorial for
    /// more information.
    ///
    /// If you do not set the `mode()` to OUTPUT, and connect an LED to
    /// a pin, when calling `digital_write(true)`, the LED may appear dim.
    /// Without explicitly setting `mode()`, `digital_write()` will have
    /// enabled the internal pull-up resistor, which acts like a large
    /// current-limiting resistor.
    ///
    /// # See Also
    /// - [digitalWrite() - Arduino Reference](https://www.arduino.cc/reference/en/language/functions/digital-io/digitalwrite/)
    pub fn digital_write(&self, value: bool) {
        extern "C" {
            fn digitalWrite(pin: u8, value: u8);
        }

        unsafe {
            digitalWrite(self.0, if value { 1 } else { 0 });
        }
    }

    /// Reads the value from a specified digital pin, either HIGH or LOW.
    ///
    /// Notes and Warnings
    ///
    /// If the pin isn’t connected to anything, digitalRead() can return either
    /// HIGH or LOW (and this can change randomly).
    ///
    /// The analog input pins can be used as digital pins, referred to as A0, A1,
    /// etc. The exception is the Arduino Nano, Pro Mini, and Mini’s A6 and A7 pins,
    /// which can only be used as analog inputs.
    /// 
    /// # See Also
    /// - [digitalRead() - Arduino Reference](https://www.arduino.cc/reference/en/language/functions/digital-io/digitalread/)
    pub fn digital_read(&self) -> bool {
        extern "C" {
            fn digitalRead(pin: u8) -> u8;
        }

        unsafe {
            digitalRead(self.0) == 0
        }
    }
}

impl Into<u8> for Pin {
    fn into(self) -> u8 {
        self.0
    }
}

impl Into<u8> for &Pin {
    fn into(self) -> u8 {
        self.0
    }
}

/// The builtin LED, normally on pin 13
pub const LED_BUILTIN: Pin = unsafe { Pin::new(13) };
