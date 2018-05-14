#ifndef KEYPAD_DRIVERS
	#define KEYPAD_DRIVERS
#endif

unsigned char keyb(void);
unsigned short keyRead(void);
void out7seg(unsigned char);
void init_keypad(void);