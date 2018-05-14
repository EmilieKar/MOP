#ifndef PONGLOGIC
	#define PONGLOGIC
#endif

typedef struct{
	unsigned char x;
	unsigned char y;
}point;
/*
typedef struct pong_ball{
	point position;
	char x_velocity;
	char y_velocity;
	geometry shape;
	
}pong_ball;

typedef struct pong_paddle{
	point position;
	char key_up;
	char key_down;
	geometry shape;
}pong_paddle;
*/
typedef struct{
	int numpoints;
	int sizex;
	int sizey;
	point px[20];
}geometry, *pgeometry;



typedef struct tObj{
	pgeometry geo;
	int dirx,diry;
	int posx,posy;
	void (*draw) (struct tObj*);
	void (*clear)(struct tObj*);
	void (*move)(struct tObj*);
	void (*set_speed)(struct tObj*, int, int);
	void (*set_position)(struct tObj*, point);
}object, *pobject;


void set_object_speed(pobject o, int speedx, int speedy);

void pong_set_position(pobject o, int posx, int posy);

void draw_object(object* o);
void clear_object(object* o);
void move_object(object* o);

void pong_inc_playerScore(char* playerScore, char player);