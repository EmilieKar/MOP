
#include "delay.h"
#include "ponglogic.h"
#include "portDeclare.h"



void pong_init(){
	
}

void set_object_speed(pobject o, int speedx, int speedy){
	o->dirx = speedx;
	o->diry = speedy;
}

void pong_set_position(pobject o, int posx, int posy){
	o->posx = posx;
	o->posy = posy;
}

void draw_object(object* o){
	for (int i=0; i < o->geo->numpoints; i++){
		int drawx = o->posx + o->geo->px[i].x;
		int drawy = o->posy + o->geo->px[i].y;
		graphic_pixel(drawx, drawy,1);
	}
}

void clear_object(object* o){
	for (int i=0; i < o->geo->numpoints; i++){
		graphic_pixel(o->posx + o->geo->px[i].x, o->posy + o->geo->px[i].y,0);
	}
}

void move_object(object* o){
	clear_object(o);
	o->posx = o->posx + o->dirx;
	o->posy = o->posy + o->diry;
	if(o->posx <= 0 | o->posx >= 124){
			o->dirx = -o->dirx;
	}
	if(o->posy <= 0 | o->posy >= 60){
		o->diry = -o->diry;
	}
	draw_object(o);
}

void pong_inc_playerScore(char* playerScore, char player){
	ascii_init();
	playerScore[player-1]++;
	ascii_gotoxy(10*player,1*player);
	char newScore = playerScore[player-1]+47;
	ascii_write_char(newScore);
	graphic_initialize();
}
