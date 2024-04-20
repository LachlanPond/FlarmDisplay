#![no_std]
#![no_main]

pub mod led;

use cortex_m::delay::Delay;
// pick a panicking behavior
use panic_halt as _; // you can put a breakpoint on `rust_begin_unwind` to catch panics
                     // use panic_abort as _; // requires nightly
                     // use panic_itm as _; // logs messages over ITM; requires ITM support
                     // use panic_semihosting as _; // logs messages to the host stderr; requires a debugger

use cortex_m_rt::entry;
use hal::{
    clocks::Clocks,
    gpio::{Pin, PinMode},
    pac::{Peripherals}
};
use rtt_target::{rprintln, rtt_init_default, rtt_init_print};

use crate::led::DisplayDriver;

#[entry]
fn main() -> ! {
    rtt_init_print!();

    rprintln!("Hello, world!");

    // Set up CPU peripherals
    let cp = cortex_m::Peripherals::take().unwrap();

    // Set up microcontroller peripherals
    let mut dp = Peripherals::take().unwrap();

    dp.RCC.ahbenr.write(|f| f
        .iopaen().set_bit()
        .iopben().set_bit()
        .iopfen().set_bit()
    );

    let clock_cfg = Clocks::default();

    // Write the clock config to the MCU
    clock_cfg.setup().unwrap();

    // Setup a delay based on the Cortex-m systick
    let mut delay = Delay::new(cp.SYST, clock_cfg.systick());

    // The LED driver serial input is connected to GPIO pin PA4
    let mut serial_input_pin = Pin::new(hal::gpio::Port::A, 4, PinMode::Output);
    serial_input_pin.output_speed(hal::gpio::OutputSpeed::Low);
    serial_input_pin.pull(hal::gpio::Pull::Dn);

    let mut clock_input_pin = Pin::new(hal::gpio::Port::A, 5, PinMode::Output);
    clock_input_pin.output_speed(hal::gpio::OutputSpeed::Low);
    clock_input_pin.pull(hal::gpio::Pull::Dn);

    let mut latch_input_pin = Pin::new(hal::gpio::Port::A, 6, PinMode::Output);
    latch_input_pin.output_speed(hal::gpio::OutputSpeed::Low);
    latch_input_pin.pull(hal::gpio::Pull::Dn);

    let mut blank_input_pin = Pin::new(hal::gpio::Port::A, 7, PinMode::Output);
    blank_input_pin.output_speed(hal::gpio::OutputSpeed::Low);
    blank_input_pin.pull(hal::gpio::Pull::Dn);

    let mut buzzer_pin = Pin::new(hal::gpio::Port::B, 0, PinMode::Output);
    buzzer_pin.output_speed(hal::gpio::OutputSpeed::Low);
    buzzer_pin.pull(hal::gpio::Pull::Dn);

    buzzer_pin.set_high();

    let mut display = DisplayDriver::new(serial_input_pin, clock_input_pin, latch_input_pin);

    loop {
        // your code goes here
        display.info.gps = true;
        display.display();
        delay.delay_ms(500);
        display.vertical_indicator.hh = true;
        display.display();
        delay.delay_ms(500);
    }
}
