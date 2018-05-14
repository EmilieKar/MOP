#ifndef ASCII_DRIVERS
	#define ASCII_DRIVERS
#endif

void ascii_init(void);
void ascii_write_char(char);
void ascii_gotoxy(int, int);
void ascii_init_app(void);