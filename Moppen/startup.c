/*
 * 	startup.c
 *
 */
void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );

void startup ( void )
{
__asm volatile(
	" LDR R0,=0x2001C000\n"		/* set stack */
	" MOV SP,R0\n"
	" BL main\n"				/* call main */
	"_exit: B .\n"				/* never return */
	) ;
}

#include "delay.h"
#include "lcd_drivers.h"
#include "ascii_drivers.h"
#include "keypad_drivers.h"
#include "portDeclare.h"
#include "ponglogic.h"

#define SIMULATOR
#define ascii
#define lcd
#define keypad

geometry ball_geometry={12,4,4,
{{0,1},{0,2},
{1,0},{1,1},{1,2},{1,3},
{2,0},{2,1},{2,2},{2,3},
{3,1},{3,1}}
};

static object ball = {
	&ball_geometry,
	0,0,
	1,1,
	draw_object,
	clear_object,
	move_object,
	set_object_speed,
	pong_set_position
	};

geometry paddle_geometry={8,1,8,
{{0,0},{0,1},{0,2},{0,3},{0,4},{0,5},{0,6},{0,7}}
};

static object p1paddle = {
	&paddle_geometry,
	0,0,
	2,28,
	draw_object,
	clear_object,
	move_object,
	set_object_speed,
	pong_set_position
	};
	static object p2paddle = {
	&paddle_geometry,
	0,0,
	127,28,
	draw_object,
	clear_object,
	move_object,
	set_object_speed,
	pong_set_position
	};

void main(int argc, char **argv){
	#ifdef USBDM
		*((unsigned long *)0x40023830) = 0x18;
		__asm volatile(" LDR R0,=0x08000209\n BLX R0 \n");
	#endif
	#ifdef ascii
		ascii_init_app();
		ascii_init();
		ascii_gotoxy(1,1);
		char *s;
		char string1[] = "Player 1: ";
		s = string1;
	while (*s)
		ascii_write_char(*s++);
	ascii_gotoxy(11,2);
	char string2[] = "Player 2: ";
	s = string2;
	while (*s)
	ascii_write_char(*s++);
	#endif
	
	#ifdef lcd
		init_lcd();
		graphic_initialize();
	#endif
	#ifdef keypad
		init_keypad();
	#endif
	#ifndef SIMULATOR
		graphic_clean_screen();
	#endif
	
	unsigned char playerScore[2] = {0,0};
	unsigned char *pScore;
	
	pScore = playerScore;
	pong_inc_playerScore(pScore,1);
	pong_inc_playerScore(pScore,2);
	pobject p = &ball;
	pobject player1 = &p1paddle;
	pobject player2 = &p2paddle;
	pong_set_position(player1,2,28);
	pong_set_position(player2,127,28);
	pong_set_position(p,64-(p->geo->sizex)/2,32-(p->geo->sizey)/2);

	set_object_speed(player2,0,2);
	p->set_speed(p,4,1);
	while(1){
		move_object(p);
		move_object(player1);
		move_object(player2); 
		pong_inc_playerScore(pScore,1);
		delay_milli(40);
	}

	/*
	//Testing av keyRead metoden i keypad_drivers
	while(1){
	unsigned volatile short keys = keyRead();
	
	for(int i=0; i<16; i++){
		if(keys&(1<<i)){
			graphic_pixel(i+1,i+1,1);
		}
	}
	}*/
	
	
//	plcdBuffer pbuff = &buffer;
	/*char buffer_display[128][8] = {{0}};
	char buffer_changeLog[128] = {0};
	plcdBuffer pbuff = {buffer_display,buffer_changeLog};
	pbuff->draw = lcdBufferDraw;
	pbuff->pixel = lcdBufferWritePixel;
	pbuff->clear = buffer_clear;
	pbuff->draw(pbuff);
	pbuff->clear(pbuff);
	pbuff->draw(pbuff);
	for(int i=0; i<42;i++){
	pbuff->display[0][0] = 0xFF;
	pbuff->changeLog[0] = 1;
	pbuff->display[127][7] = 0xFF;
	pbuff->changeLog[127] = 0x80;
	pbuff->display[42][0] = 0xFF;
	pbuff->changeLog[42] = 1;
	lcdBufferDraw(pbuff);
	buffer_clear(pbuff);
	lcdBufferDraw(pbuff);
	//lcdBufferWritePixel(pbuff,i,i,1);
	//pbuff->pixel(pbuff,i,i,1);
	}
	//pbuff->draw(pbuff);
//	lcdBufferDraw(pbuff);
	*/	
	
}

