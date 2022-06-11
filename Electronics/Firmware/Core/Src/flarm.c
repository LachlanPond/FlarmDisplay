/*
 * flarm.c
 *
 *  Created on: 4 Jun. 2022
 *      Author: lachlan
 */

#include "flarm.h"

void serializeLEDRegister(struct LEDRegister *reg) {
	reg->Buffer = 0;
	reg->Buffer |= reg->Y08 << 31;
	reg->Buffer |= reg->R08 << 30;
	reg->Buffer |= reg->Y07 << 29;
	reg->Buffer |= reg->R07 << 28;
	reg->Buffer |= reg->Y06 << 27;
	reg->Buffer |= reg->R06 << 26;
	reg->Buffer |= reg->Y05 << 25;
	reg->Buffer |= reg->R05 << 24;
	reg->Buffer |= reg->Y04 << 23;
	reg->Buffer |= reg->R04 << 22;
	reg->Buffer |= reg->LL 	<< 21;
	reg->Buffer |= reg->L 	<< 20;
	reg->Buffer |= reg->M 	<< 19;
	reg->Buffer |= reg->H 	<< 18;
	reg->Buffer |= reg->HH 	<< 17;
	reg->Buffer |= reg->Y03 << 16;
	reg->Buffer |= reg->R03 << 15;
	reg->Buffer |= reg->Y02 << 14;
	reg->Buffer |= reg->R02 << 13;
	reg->Buffer |= reg->Y01 << 12;
	reg->Buffer |= reg->R01 << 11;
	reg->Buffer |= reg->Y12 << 10;
	reg->Buffer |= reg->R12 << 9;
	reg->Buffer |= reg->Y11 << 8;
	reg->Buffer |= reg->R11 << 7;
	reg->Buffer |= reg->Y10 << 6;
	reg->Buffer |= reg->R10 << 5;
	reg->Buffer |= reg->Y09 << 4;
	reg->Buffer |= reg->R09 << 3;
	reg->Buffer |= reg->TX 	<< 2;
	reg->Buffer |= reg->RX 	<< 1;
	reg->Buffer |= reg->GPS << 0;
}

void clearLEDRegister(struct LEDRegister *reg) {
	memset(reg, 0, sizeof(*reg));
}
