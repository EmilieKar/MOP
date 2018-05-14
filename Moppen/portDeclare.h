#ifndef PORT_DECLARE
	#define PORT_DECLARE
#endif

#define STK_CTRL ((volatile unsigned int *)(0xE000E010))
#define STK_LOAD ((volatile unsigned int *)(0xE000E014))
#define STK_VAL ((volatile unsigned int *)(0xE000E018))

#define PORT_DISPLAY_BASED 0x40020C00
#define portModerD ((volatile unsigned int *)(PORT_DISPLAY_BASED))
#define portOtyperD ((volatile unsigned short *)(PORT_DISPLAY_BASED+0x4))
#define portOspeedrD ((volatile unsigned int *) (PORT_DISPLAY_BASED+0x8))
#define portPupdrD ((volatile unsigned int *) (PORT_DISPLAY_BASED+0xC))
#define portIdrLowD ((volatile unsigned char *) (PORT_DISPLAY_BASED+0x10))
#define portIdrHighD ((volatile unsigned char *) (PORT_DISPLAY_BASED+0x11))
#define portOdrLowD ((volatile unsigned char *) (PORT_DISPLAY_BASED+0x14))
#define portOdrHighD ((volatile unsigned char *) (PORT_DISPLAY_BASED+0x14+1))

#define PORT_DISPLAY_BASEE 0x40021000
#define portModerE ((volatile unsigned int *)(PORT_DISPLAY_BASEE))
#define portOtyperE ((volatile unsigned short *)(PORT_DISPLAY_BASEE+0x4))
#define portOspeedrE ((volatile unsigned int *) (PORT_DISPLAY_BASEE+0x8))
#define portPupdrE ((volatile unsigned int *) (PORT_DISPLAY_BASEE+0xC))
#define portIdrLowE ((volatile unsigned char *) (PORT_DISPLAY_BASEE+0x10))
#define portIdrHighE ((volatile unsigned char *) (PORT_DISPLAY_BASEE+0x11))
#define portOdrLowE ((volatile unsigned char *) (PORT_DISPLAY_BASEE+0x14))
#define portOdrHighE ((volatile unsigned char *) (PORT_DISPLAY_BASEE+0x14+1))

enum {B_RS=1, B_RW=2, B_SELECT=4, B_CS1=8, B_CS2=0x10, B_RST=0x20, B_E=0x40};

#define SIMULATOR