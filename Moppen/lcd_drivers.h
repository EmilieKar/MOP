#ifndef LCD_DRIVERS
	#define LCD_DRIVERS
#endif

void init_lcd(void);
void graphic_initialize(void);
void graphic_clean_screen(void);
void graphic_pixel(unsigned char x, unsigned char y, unsigned char set);


typedef struct tmpbuffer{
	char display[128][8];
	char changeLog[128];
	void(*draw)(struct tmpbuffer*);
	void(*pixel)(struct tmpbuffer*, unsigned char x, unsigned char y, unsigned char s);
	void(*clear)(struct tmpbuffer*);
	
}lcdBuffer, *plcdBuffer;
/*
typedef struct tmpbuffer{
	char* display;
	char* changeLog;
	void(*draw)(struct tmpbuffer*);
	
}lcdBuffer, *plcdBuffer;
*/
void lcdBufferDraw(plcdBuffer toDraw);
void lcdBufferWritePixel(plcdBuffer lcdBuff, unsigned char x, unsigned char y, unsigned char set);
void buffer_clear(plcdBuffer plcdBuff);
static lcdBuffer buffer;