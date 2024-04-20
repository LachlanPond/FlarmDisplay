use hal::gpio::Pin;
use rtt_target::{rdbg, rprintln};

const LED_BUFFER_SIZE: i32 = 32;
// const PARAM_SIZE 52
// const PFLAE_PARAMS 6

pub enum FlarmError {
	FIRMWAREEXPIRED = 0x11,
	FIRMWAREUPDATE = 0x12,
	POWER = 0x21,
	UI = 0x22,
	AUDIO = 0x23,
	ADC = 0x24,
	SD = 0x25,
	USB = 0x26,
	LED = 0x27,
	EEPROM1 = 0x28,
	GENERALHARDWARE = 0x29,
	TRANSPONDERUNSERVICEABLE = 0x2A,
	EEPROM2 = 0x2B,
	GPIO = 0x2C,
	GPSCOMMS = 0x31,
	GPSCONFIG = 0x32,
	GPSANTENNA = 0x33,
	RFCOMMS = 0x41,
	FLARMWITHSAMEID = 0x42,
	WRONGADDRESS = 0x43,
	COMMS = 0x51,
	FLASHMEM = 0x61,
	PRESSURESENSOR = 0x71,
	OBSTACLEDBINCORRECTFILETYPE = 0x81,
	OBSTACLEDBEXPIRED = 0x82,
	FLIGHTRECORDER = 0x91,
	ENGINENOISERECNOTPOSSIBLE = 0x93,
	RANGEANALYZER = 0x94,
	CONFIGERROR = 0xA1,
	INVALIDOBSTACLEDBLICENSE = 0xB1,
	INVALIDIGCFEATURELICENSE = 0xB2,
	INVALIDAUDFEATURELICENSE = 0xB3,
	INVALIDENLFEATURELICENSE = 0xB4,
	INVALIDRFBFEATURELICENSE = 0xB5,
	INVALIDTISFEATURELICENSE = 0xB6,
	GENERIC = 0x100,
	FILESYSTEM = 0x101,
	UPDATINGFIRMWAREEXTERNALDISP = 0x110,
	REGION = 0x120,
	OTHER = 0xF1
}

pub struct DisplayDriver {
	pub red: LEDRing,
	pub yellow: LEDRing,
	pub vertical_indicator: LEDVerticalIndicator,
	pub info: LEDInfo,
	serial: DisplaySerial,
}

impl DisplayDriver {
	pub fn new(serial_input_pin: Pin, clock_input_pin: Pin, latch_input_pin: Pin) -> DisplayDriver {
		let serial = DisplaySerial {
		    serial_input: serial_input_pin,
		    clock_input: clock_input_pin,
		    latch_input: latch_input_pin,
		};

		DisplayDriver { red: LEDRing::new(), yellow: LEDRing::new(), vertical_indicator: LEDVerticalIndicator::new(), info: LEDInfo::new(), serial: serial }
	}

	fn serialize_buffer(&self) -> i32 {
		let mut buffer: i32 = 0;
		buffer |= (self.yellow.eight as i32) 	<< 31;
		buffer |= (self.red.eight as i32) 		<< 30;
		buffer |= (self.yellow.seven as i32) 	<< 29;
		buffer |= (self.red.seven as i32) 		<< 28;
		buffer |= (self.yellow.six as i32) 		<< 27;
		buffer |= (self.red.six as i32) 		<< 26;
		buffer |= (self.yellow.five as i32) 	<< 25;
		buffer |= (self.red.five as i32) 		<< 24;
		buffer |= (self.yellow.four as i32) 	<< 23;
		buffer |= (self.red.four as i32) 		<< 22;
		buffer |= (self.vertical_indicator.ll as i32) << 21;
		buffer |= (self.vertical_indicator.l as i32)  << 20;
		buffer |= (self.vertical_indicator.m as i32)  << 19;
		buffer |= (self.vertical_indicator.h as i32)  << 18;
		buffer |= (self.vertical_indicator.hh as i32) << 17;
		buffer |= (self.yellow.three as i32) 	<< 16;
		buffer |= (self.red.three as i32) 		<< 15;
		buffer |= (self.yellow.two as i32) 		<< 14;
		buffer |= (self.red.two as i32) 		<< 13;
		buffer |= (self.yellow.one as i32) 		<< 12;
		buffer |= (self.red.one as i32) 		<< 11;
		buffer |= (self.yellow.twelve as i32) 	<< 10;
		buffer |= (self.red.twelve as i32) 		<< 9;
		buffer |= (self.yellow.eleven as i32) 	<< 8;
		buffer |= (self.red.eleven as i32) 		<< 7;
		buffer |= (self.yellow.ten as i32) 		<< 6;
		buffer |= (self.red.ten as i32) 		<< 5;
		buffer |= (self.yellow.nine as i32) 	<< 4;
		buffer |= (self.red.nine as i32) 		<< 3;
		buffer |= (self.info.tx as i32) 		<< 2;
		buffer |= (self.info.rx as i32) 		<< 1;
		buffer |= (self.info.gps as i32) 		<< 0;
		rdbg!(buffer);
		buffer
	}

	pub fn display(&mut self) {
		let buffer = self.serialize_buffer();
		for i in 0..LED_BUFFER_SIZE {
			if (buffer >> i & 1) == 1 {
				self.serial.serial_input.set_high();
				rprintln!("Death to procurement");
			} else {
				self.serial.serial_input.set_low();
			}
			self.serial.pulse_clock();
		}
		self.serial.latch();
		self.clear();
	}

	fn clear(&mut self) {
		self.red.clear();
		self.yellow.clear();
		self.vertical_indicator.clear();
		self.info.clear();
	}
}

pub struct DisplaySerial {
	serial_input: hal::gpio::Pin,
	clock_input: hal::gpio::Pin,
	latch_input: hal::gpio::Pin,
}

impl DisplaySerial {
	fn pulse_clock(&mut self) {
		self.clock_input.set_high();
		self.clock_input.set_low();
	}

	fn latch(&mut self) {
		self.latch_input.set_high();
		self.latch_input.set_low();
	}
}

pub struct LEDRing {
	pub one: bool,
	pub two: bool,
	pub three: bool,
	pub four: bool,
	pub five: bool,
	pub six: bool,
	pub seven: bool,
	pub eight: bool,
	pub nine: bool,
	pub ten: bool,
	pub eleven: bool,
	pub twelve: bool,
}

impl LEDRing {
	fn new() -> LEDRing {
		LEDRing {
		    one: false,
		    two: false,
		    three: false,
		    four: false,
		    five: false,
		    six: false,
		    seven: false,
		    eight: false,
		    nine: false,
		    ten: false,
		    eleven: false,
		    twelve: false,
		}
	}

	fn clear(&mut self) {
		self.one = false;
		self.two = false;
		self.three = false;
		self.four = false;
		self.five = false;
		self.six = false;
		self.seven = false;
		self.eight = false;
		self.nine = false;
		self.ten = false;
		self.eleven = false;
		self.twelve = false;
	}
}

pub struct LEDInfo {
	pub gps: bool,
	pub rx: bool,
	pub tx: bool,
}

impl LEDInfo {
	fn new() -> LEDInfo {
		LEDInfo {
			gps: false,
			rx: false,
			tx: false,
		}
	}

	fn clear(&mut self) {
		self.gps = false;
		self.rx = false;
		self.tx = false;
	}
}

pub struct LEDVerticalIndicator {
	pub hh: bool,
	pub h: bool,
	pub m: bool,
	pub l: bool,
	pub ll: bool,
}

impl LEDVerticalIndicator {
	fn new() -> LEDVerticalIndicator {
		LEDVerticalIndicator {
		    hh: false,
		    h: false,
		    m: false,
		    l: false,
		    ll: false,
		}
	}

	fn clear(&mut self) {
		self.hh = false;
		self.h = false;
		self.m = false;
		self.l = false;
		self.ll = false;
	}
}