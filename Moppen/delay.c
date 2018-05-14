
#include "delay.h"
#include "portDeclare.h"

void delay_40ns(void){
	*STK_CTRL = 0;
	*STK_LOAD = 6;
	*STK_VAL = 0;
	*STK_CTRL = 5;
	while ((*STK_CTRL & 0x10000) == 0){
	}
	*STK_CTRL = 0;
}

void delay_250ns(void){
	#ifndef SIMULATOR
	*STK_CTRL = 0;
	*STK_LOAD = 168/4-1;
	*STK_VAL = 0;
	*STK_CTRL = 5;
	while (!(*STK_CTRL & 0x10000) == 0){
	}
	*STK_CTRL = 0;
	#endif
}

void delay_mikro(unsigned int us){
	#ifndef SIMULATOR
		us = us*4;
	for(int i = 0; i < us; i++){
		delay_250ns();
	}
	#endif
}

void delay_milli(unsigned int ms){
	#ifndef SIMULATOR
	ms = ms*1000;
	delay_mikro(ms);
	#endif
}