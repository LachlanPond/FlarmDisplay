/*
 * flarm.h
 *
 *  Created on: 4 Jun. 2022
 *      Author: lachlan
 */

#include "stdint.h"

#define LED_BUFFER_SIZE 32
#define PARAM_SIZE 52
#define PFLAE_PARAMS 6

enum errors {
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
};

struct LEDRegister {
	uint8_t Y01 : 1;
	uint8_t Y02 : 1;
	uint8_t Y03 : 1;
	uint8_t Y04 : 1;
	uint8_t Y05 : 1;
	uint8_t Y06 : 1;
	uint8_t Y07 : 1;
	uint8_t Y08 : 1;
	uint8_t Y09 : 1;
	uint8_t Y10 : 1;
	uint8_t Y11 : 1;
	uint8_t Y12 : 1;
	uint8_t R01 : 1;
	uint8_t R02 : 1;
	uint8_t R03 : 1;
	uint8_t R04 : 1;
	uint8_t R05 : 1;
	uint8_t R06 : 1;
	uint8_t R07 : 1;
	uint8_t R08 : 1;
	uint8_t R09 : 1;
	uint8_t R10 : 1;
	uint8_t R11 : 1;
	uint8_t R12 : 1;
	uint8_t LL : 1;
	uint8_t L : 1;
	uint8_t M : 1;
	uint8_t H : 1;
	uint8_t HH : 1;
	uint8_t TX : 1;
	uint8_t RX : 1;
	uint8_t GPS : 1;
	uint32_t Buffer;
};

struct aircraft {
	uint8_t alarmLevel : 2;
	int16_t relativeBearing;
	uint8_t alarmType;
	int16_t relativeVertical;
	uint32_t relativeDistance;
	uint32_t id : 24;
};

struct aircraftRegister {
	struct aircraft primary;
	struct aircraft secondary[10];
};

struct errorRegister {
	uint8_t severity : 2;
	uint16_t errorCode : 12;
};

void serializeLEDRegister(struct LEDRegister *reg);
void clearLEDRegister(struct LEDRegister *reg);
void processPFLAU(char *msg, struct aircraftRegister *reg);
void processPFLAE(char *packet, struct errorRegister *reg);
void decodePacket(char *packet, char params[][PARAM_SIZE]);
