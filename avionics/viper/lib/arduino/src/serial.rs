//! Tooling for accessing the Serial and UART ports on the uC

use core::{convert::TryInto, ffi::c_void, fmt, fmt::Write};

extern "C" {
    /// number of bytes available in the receive buffer
    fn usb_serial_available() -> usize;
    /// discard any buffered input
    fn usb_serial_flush_input();
    /// get the next character, or -1 if nothing received
    fn usb_serial_getchar() -> i16;
    /// peek at the next character, or -1 if nothing received
    fn usb_serial_peekchar() -> i16;
    /// read a block of bytes to a buffer. returns the size read
    fn usb_serial_read(buffer: *const c_void, size: usize) -> usize;
    /// push out any buffered output
    fn usb_serial_flush_output();
    /// transmit a character.  0 returned on success, -1 on error
    fn usb_serial_putchar(c: u8) -> u16;
    /// write a buffer.
    fn usb_serial_write(buffer: *const c_void, size: usize) -> usize;
    /// the free bytes available in the output buffer
    fn usb_serial_write_buffer_free() -> usize;
    static usb_cdc_line_coding: [u32; 2];
    static usb_cdc_line_rtsdtr: u8;
}
const USB_SERIAL_DTR: u8 = 0x01;
const USB_SERIAL_RTS: u8 = 0x02;

/// A representation of the parity of a serial port
#[repr(u8)]
pub enum Parity {
    /// No Parity
    None = 0,
    /// Odd Parity
    Odd = 1,
    /// Even Parity
    Even = 2,
}
impl From<u8> for Parity {
    fn from(num: u8) -> Self {
        match num {
            0 => Self::None,
            1 => Self::Odd,
            2 => Self::Even,
            x => panic!("Attempted to convert invalid value `{}` to Parity ", x),
        }
    }
}

/// A serial USB connection to a host device. Based off of the Arduino Serial class.
///
/// # See Also
/// - [Serial - Arduino Reference](https://www.arduino.cc/reference/en/language/functions/communication/serial/)
pub struct Serial;
impl Serial {
    /// Get the number of bytes (characters) available for reading from the serial port.
    /// This is data that’s already arrived and stored in the serial receive buffer
    ///
    /// # See Also
    /// - [Serial.available() - Arduino Reference](https://www.arduino.cc/reference/en/language/functions/communication/serial/available/)
    pub fn avaliable() -> usize {
        // Call the C API and directly return the data
        unsafe { usb_serial_available() }
    }

    /// Get the number of bytes (characters) available for writing in the serial buffer
    /// without blocking the write operation.
    ///
    /// # See Also
    /// - [Serial.avaliableForWrite() - Arduino Reference](https://www.arduino.cc/reference/en/language/functions/communication/serial/availableforwrite/)
    pub fn available_for_write() -> usize {
        unsafe { usb_serial_write_buffer_free() }
    }

    /// Clear the input buffer
    pub fn clear() {
        // Call into the C API
        unsafe { usb_serial_flush_input() }
    }

    /// Waits for the transmission of outgoing serial data to complete.
    ///
    /// # See Also
    /// - [Serial.flush() - Arduino Reference](https://www.arduino.cc/reference/en/language/functions/communication/serial/flush/)
    pub fn flush() {
        // Call into the C API
        unsafe { usb_serial_flush_output() }
    }

    /// Flush the output buffer, effectively sending all buffered data
    pub fn send_now() {
        unsafe { usb_serial_flush_output() }
    }

    /// Returns the next byte (character) of incoming serial data without removing it from the internal serial buffer.
    /// That is, successive calls to peek() will return the same character, as will the next call to read().
    ///
    /// # See Also
    /// - [Serial.peek() - Arduino Reference](https://www.arduino.cc/reference/en/language/functions/communication/serial/peek/)
    pub fn peek() -> Option<char> {
        // Call into the C API and store the result
        let result = unsafe { usb_serial_peekchar() };
        // usb_serial_peekchar returns a -1 if there is no char to read, so return a None
        if result == -1 {
            None
        } else {
            // If there is a char to read, get it, in a u8
            let result: u8 = result.try_into().unwrap();
            // Return the u8 as a char
            Some(result as char)
        }
    }

    /// Read in one char of data from the serial port
    pub fn read() -> Option<char> {
        // Call into the C API and store the result
        let result = unsafe { usb_serial_getchar() };
        // usb_serial_getchar returns a -1 if there is no char to read, so return a None
        if result == -1 {
            None
        } else {
            // If there is a char to read, get it, in a u8
            let result: u8 = result.try_into().unwrap();
            // Return the u8 as a char
            Some(result as char)
        }
    }

    /// Get the baud rate of the serial port
    pub fn baud() -> u32 {
        unsafe { usb_cdc_line_coding[0] }
    }

    /// Get the amount of stop bits used in the serial transmission
    pub fn stop_bits() -> u8 {
        let b: u8 = unsafe { usb_cdc_line_coding[1].to_be_bytes()[0] };
        if b == 0 {
            return 1;
        }
        return b;
    }

    /// Get the parity type used in the serial transmission
    pub fn parity_type() -> Parity {
        unsafe { usb_cdc_line_coding[1].to_be_bytes()[1] }.into()
    }

    /// Get the number of bits transmitted per clock for the serial transmission
    pub fn num_bits() -> u8 {
        unsafe { usb_cdc_line_coding[1].to_be_bytes()[2] }
    }

    /// Check if the data terminal is ready
    pub fn dtr() -> bool {
        unsafe { usb_cdc_line_rtsdtr & USB_SERIAL_DTR != 0 }
    }

    /// Check if there is a request to send
    pub fn rts() -> bool {
        unsafe { usb_cdc_line_rtsdtr & USB_SERIAL_RTS != 0 }
    }
    // pub fn readBytes(char *buffer, size_t length)-> usize {
    //         size_t count=0;
    //         unsigned long startMillis = millis();
    //         do {
    //             count += usb_serial_read(buffer + count, length - count);
    //             if (count >= length) return count;
    //         } while(millis() - startMillis < _timeout);
    //         setReadError();
    //         return count;
    //     }

    /// Write a single char out onto the serial port, returning if the write was successful or not
    pub fn write_char(c: char) -> bool {
        // Call into the C API with an ascii byte
        unsafe { usb_serial_putchar(c as u8) == 0 }
    }
    /// Write a whole string out onto the serial port, returning the amount of bytes successfully written out
    pub fn write(string: &str) -> usize {
        // Get the string length
        let size = string.len();
        // Get the pointer to the string
        let ptr = string.as_ptr() as *const c_void;

        // Call the C API
        unsafe { usb_serial_write(ptr, size) }
    }
}

impl Write for Serial {
    fn write_str(&mut self, s: &str) -> fmt::Result {
        let len = s.len();

        if Self::write(s) != len {
            Err(fmt::Error)
        } else {
            Ok(())
        }
    }
}
