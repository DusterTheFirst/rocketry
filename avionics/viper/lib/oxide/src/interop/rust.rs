pub mod arduino {
    pub struct Pin(u8);
    impl Pin {
        pub const unsafe fn new(pin: u8) -> Pin {
            Pin(pin)
        }
    }
    impl Into<u8> for Pin {
        fn into(self) -> u8 {
            self.0
        }
    }

    /// The arduino tone method
    pub fn tone(pin: Pin, frequency: u16) {
        unsafe {
            externs::arduino_tone(pin.into(), frequency);
        }
    }

    /// The arduino noTone method
    pub fn no_tone(pin: Pin) {
        unsafe {
            externs::arduino_noTone(pin.into());
        }
    }

    /// Arduino delay for given milliseconds
    pub fn delay(delay: u32) {
        unsafe {
            externs::delay(delay);
        }
    }

    pub fn pin_mode(pin: Pin, mode: PinMode) {
        unsafe {
            externs::pinMode(pin.into(), mode as u8);
        }
    }

    #[repr(u8)]
    pub enum PinMode {
        Input = 0,
        Output = 1,
        InputPullUp = 2,
        InputPullDown = 3,
        OutputOpenDrain = 4,
        InputDisable = 5,
    }

    mod externs {
        extern "C" {
            // Shim wrapper fns
            pub fn arduino_tone(pin: u8, frequency: u16);
            pub fn arduino_noTone(pin: u8);

            pub fn pinMode(pin: u8, mode: u8);
            pub fn delay(delay: u32);
        }
    }
}
