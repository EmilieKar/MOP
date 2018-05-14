
#include "delay.h"
#include "lcd_drivers.h"
#include "portDeclare.h"

#define adress 0x40
#define page 0xB8

void select_controller(char c){
	switch(c){
		case 0: *portOdrLowE = *portOdrLowE &~ 0x18; break;
		case 0x8: *portOdrLowE = (*portOdrLowE &~ 0x10)|0x8; break;
		case 0x10: *portOdrLowE = (*portOdrLowE &~ 0x8)|0x10; break;
		case 0x18: *portOdrLowE = *portOdrLowE | 0x18; break;
	}
}

void graphic_wait_ready(){
	*portOdrLowE = (*portOdrLowE &~ B_E);
	*portModerE = 0x5555;
	*portOdrLowE = ((*portOdrLowE | B_RW) &~B_RS);
	delay_250ns();
	delay_250ns();
	while(*portOdrLowE & 0x80){
		*portOdrLowE = (*portOdrLowE | B_E);
		delay_250ns();
		delay_250ns();
		*portOdrLowE = (*portOdrLowE &~ B_E);
		delay_250ns();
		delay_250ns();
	}
	*portOdrLowE = (*portOdrLowE | B_E);
	*portModerE = 0x55555555;
}

char graphic_read(unsigned char c){
	*portOdrLowE = (*portOdrLowE &~B_E);
	*portModerE = 0x00005555;
	*portOdrLowE = (*portOdrLowE | B_RW | B_RS);
	select_controller(c);
	delay_250ns();
	delay_250ns();
	*portOdrLowE = (*portOdrLowE | B_E);
	delay_250ns();
	delay_250ns();
	unsigned char RV = *portIdrHighE;
	*portOdrLowE = (*portOdrLowE &~ B_E);
	*portModerE = 0x55555555;
	if(c & B_CS1){
	select_controller(B_CS1);
	graphic_wait_ready();
	}
	if(c & B_CS2){
	select_controller(B_CS2);
	graphic_wait_ready();
	}

	return RV;
}

void graphic_write(unsigned char val, unsigned char c){
	*portOdrHighE = val;
	select_controller(c);
	delay_250ns();
	delay_250ns();
	*portOdrLowE = (*portOdrLowE | B_E);
	delay_250ns();
	delay_250ns();
	*portOdrLowE = (*portOdrLowE &~ B_E);
	if(c & B_CS1){
		select_controller(B_CS1);
		graphic_wait_ready();
	}
	if(c & B_CS2){
		select_controller(B_CS2);
		graphic_wait_ready();
	}
	*portOdrHighE = 0;
	*portOdrLowE = (*portOdrLowE | B_E);
	select_controller(0);
}

void graphic_write_command(unsigned char cmd, unsigned char c){
	*portOdrLowE = (*portOdrLowE &~ B_E);
	select_controller(c);
	*portOdrLowE = (*portOdrLowE &~B_RS &~B_RW);
	graphic_write(cmd, c);
}

void graphic_write_data(unsigned char data, unsigned char c){
	*portOdrLowE = (*portOdrLowE &~ B_E);
	select_controller(c);
	*portOdrLowE = ((*portOdrLowE | B_RS) &~B_RW);
	graphic_write(data, c);
}

unsigned char graphic_read_data(unsigned char c){
	graphic_read(c);
	return graphic_read(c);
}

void init_lcd(void){
	*portModerE = 0x55555555;
}

void graphic_initialize(void){
	*portOdrLowE = (*portOdrLowE | B_E);
	*portOdrLowE = (*portOdrLowE &~ B_SELECT );
	#ifdef SIMULATOR
		delay_mikro(10);
	#endif
	*portOdrLowE = (*portOdrLowE &~(B_RST | B_CS1 | B_CS2 | B_E));
	#ifndef SIMULATOR
		delay_milli(30);
	#endif
	*portOdrLowE = (*portOdrLowE | B_RST);
	graphic_write_command(0x3E, B_CS1|B_CS2);
	graphic_write_command(0x3F, B_CS1|B_CS2);
	graphic_write_command(0xC0, B_CS1|B_CS2);
	graphic_write_command(0x40, B_CS1|B_CS2);
	graphic_write_command(0xB8, B_CS1|B_CS2);
	select_controller(0);
}

void graphic_clean_screen(void){
	for(int i=0; i < 8; i++){
		graphic_write_command(0xB8|i, B_CS1|B_CS2);
		graphic_write_command(0x40, B_CS1|B_CS2);
		for(int j=0; j<64; j++){
			graphic_write_data(0,B_CS1|B_CS2);
		}
	}
}

void graphic_pixel(unsigned char x, unsigned char y, unsigned char set){
	x -= 1;
	y -= 1;
	char controller;
	if (x > 127 | y > 63)
		{return;}
	char index = (1<<(y%8));
	if (x<64){
		controller = B_CS1;
	}
	else{
		controller = B_CS2;
		x -= 64;
	}
	graphic_write_command(0x40 | x, controller);
	graphic_write_command(0xB8 | (y/8), controller);
	unsigned char temp = graphic_read_data(controller);
	graphic_write_command(0x40 | x, controller);
	if(set){
		temp = temp | index;
	}
	else{
		temp = temp &~index;
	}
	graphic_write_data(temp, controller);
}

void lcdBufferDraw(plcdBuffer toDraw){
	//char (*display)[8] = (char(*)[8])toDraw->display;
	
	unsigned char x,i,j;
	unsigned char controller, data;
	for(i=0; i<128; i++){
		for(j=0; j<8; j++){
			char updated = (toDraw->changeLog[i] &~ (1<<j));
			if(updated){
				if(i<64){
					controller = B_CS1;
					x=i;
				}
				else{
					controller = B_CS2;
					x = i-64;
				}
				data = toDraw->display[i][j];
				graphic_write_command(adress | x, controller);
				graphic_write_command(page | j, controller);
				graphic_write_data(data, controller);
				toDraw->changeLog[i] = (toDraw->changeLog[i] | (1<<j));
			}
		}
	}
	
}

void lcdBufferWritePixel(plcdBuffer lcdBuff, unsigned char x, unsigned char y, unsigned char set){
	char controller;
	if (x > 127 | y > 63)
		{return;}
	if (x<64){
		controller = B_CS1;
	}
	else{
		controller = B_CS2;
	}
	char index = (1<<(y%8));
	if(set){
		lcdBuff->display[x][y/8] |= index;
	}
	if(!set){
		lcdBuff->display[x][y/8] &= ~index;
	}
	lcdBuff->changeLog[x] |= (1<<y);
}

char buffer_display[128][8];
char buffer_changeLog[128];
/*
static lcdBuffer buffer ={
	buffer_display,
	buffer_changeLog,
	lcdBufferDraw
};*/

void buffer_clear(plcdBuffer plcdBuff){
	for(int i=0; i<128; i++){
		plcdBuff->changeLog[i] = 0;
		for(int j=0; j<8; j++){
			plcdBuff->display[i][j] = 0;
		}
	}
}
