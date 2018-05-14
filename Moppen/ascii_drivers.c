
#include "delay.h"
#include "ascii_drivers.h"
#include "portDeclare.h"

void ascii_ctrl_bit_set(unsigned short x){
	
	unsigned char c;
	c = *portOdrLowE;
	c |= ( B_SELECT | x );
	*portOdrLowE = c; 
}

void ascii_ctrl_bit_clear(unsigned short x){
	unsigned char c;
	c = *portOdrLowE;
	c = B_SELECT | ( c & ~x );
	*portOdrLowE = c;
}

void ascii_write_controller(unsigned char c){
	delay_40ns();
	ascii_ctrl_bit_set(B_E);
	*portOdrHighE = c;
	delay_250ns;
	ascii_ctrl_bit_clear(B_E);
}
unsigned char ascii_read_controller(void){
	ascii_ctrl_bit_set(B_E);
	delay_250ns;
	delay_250ns;
	unsigned char rv = *portIdrHighE;
	ascii_ctrl_bit_clear(B_E);
	return rv;
}

void ascii_write_cmd(unsigned char command){
	ascii_ctrl_bit_clear(B_RS);
	ascii_ctrl_bit_clear(B_RW);
	ascii_write_controller(command);
}

void ascii_write_data(unsigned char data){
	ascii_ctrl_bit_set(B_RS);
	ascii_ctrl_bit_clear(B_RW);
	ascii_write_controller(data);
}

unsigned char ascii_read_status(void){
	*portModerE = (*portModerE & 0x0000FFFF);
	ascii_ctrl_bit_clear(B_RS);
	ascii_ctrl_bit_set(B_RW);
	unsigned char rv = ascii_read_controller();
	*portModerE = (*portModerE | 0x55550000);
	return rv;
}

unsigned char ascii_read_data(void){
	*portModerE = (*portModerE & 0x0000FFFF);
	ascii_ctrl_bit_set(B_RS);
	ascii_ctrl_bit_set(B_RW);
	unsigned char rv = ascii_read_controller();
	*portModerE = (*portModerE | 0x55550000);
	return rv;
}

void ascii_init(void){
	while((ascii_read_status() & 0x80) == 0x80){}
	delay_mikro(8);
	ascii_write_cmd(0x38);
	delay_mikro(40);
	ascii_write_cmd(0xE);
	delay_mikro(40);
	ascii_write_cmd(0x4);
	delay_mikro(40);
}

void ascii_write_char(char c){
	while((ascii_read_status() & 0x80) == 0x80){}
	delay_mikro(8);
	ascii_write_data(c);
	delay_mikro(43);
}

void ascii_gotoxy(int x, int y){
	int adress = (x - 1 + (y-1)*64);
	ascii_write_cmd(0x80 | adress);
}

void ascii_init_app(void){
	*portModerE = 0x55555555;
	*portOtyperE = 0x0000;
	*portOspeedrE = 0x0000;

}