/*
 * flarm.h
 *
 *  Created on: 4 Jun. 2022
 *      Author: lachlan
 */

#include "stdint.h"

#define LED_BUFFER_SIZE 32

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

void serializeLEDRegister(struct LEDRegister *reg);
void clearLEDRegister(struct LEDRegister *reg);
