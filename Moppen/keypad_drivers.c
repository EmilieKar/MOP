
#include "delay.h"
#include "keypad_drivers.h"
#include "portDeclare.h"

void init_keypad(void){
	#ifdef bargraph
		*((unsigned long *)(0x40021000)) = 0x5555;
	#endif
	*portModerD = 0x55005555;
	*portOtyperD = 0x0000;
	*portOspeedrD = 0x0000;
	*portPupdrD = 0x00AA0000;
	

}

unsigned char keyb(void){
	
	unsigned char count = 0;
	unsigned char numpad[] = {0x1,0x2,0x3,0xA,0x4,0x5,0x6,0xB,0x7,0x8,0x9,0xC,0xE,0x0,0xF,0xD};
	
	for (char i=0; i < 4; i++){
		char activeRow = 0x10 << i;
		*portOdrHighD = activeRow;
		char keys = *portIdrHighD & 0x0f;
		
		if (keys != 0){
		
			while((keys & 0x1) == 0){
				keys = keys >> 1;
				count++;
			}
			return numpad[i*4+count];
		}
			
	}
	return 0xff;
}

void out7seg(unsigned char num){
	unsigned char segCodes[] = {0x3f,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F,0x77,0x7C,0x39,0x5E,0x79,0x71};
	if (num & 0xf0 == 0){
		*portOdrLowE = 0;
		return;
	}
	*portOdrLowD = segCodes[num];
}

unsigned short keyRead(void){
	
	unsigned char count = 0;
	unsigned short read = 0;
	for (char i=0; i < 4; i++){
		char activeRow = 0x10 << i;
		*portOdrHighD = activeRow;
		unsigned volatile char keys = *portIdrHighD & 0x0f;
		read |= (keys<<(i*4));
		/*
		if (keys != 0){
		
			while((keys & 0x1) == 0){
				keys = keys >> 1;
				count++;
			}
			return numpad[i*4+count];
		}*/
			
	}
	return read;
}