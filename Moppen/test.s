   1              		.arch armv6-m
   2              		.eabi_attribute 20, 1
   3              		.eabi_attribute 21, 1
   4              		.eabi_attribute 23, 3
   5              		.eabi_attribute 24, 1
   6              		.eabi_attribute 25, 1
   7              		.eabi_attribute 26, 1
   8              		.eabi_attribute 30, 6
   9              		.eabi_attribute 34, 0
  10              		.eabi_attribute 18, 4
  11              		.file	"startup.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.section	.start_section,"ax",%progbits
  16              		.align	1
  17              		.global	startup
  18              		.syntax unified
  19              		.code	16
  20              		.thumb_func
  21              		.fpu softvfp
  23              	startup:
  24              	.LFB0:
  25              		.file 1 "C:/Users/samue/Documents/MopLab/Moppen/startup.c"
   1:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** /*
   2:C:/Users/samue/Documents/MopLab/Moppen\startup.c ****  * 	startup.c
   3:C:/Users/samue/Documents/MopLab/Moppen\startup.c ****  *
   4:C:/Users/samue/Documents/MopLab/Moppen\startup.c ****  */
   5:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
   6:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 
   7:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** void startup ( void )
   8:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** {
  26              		.loc 1 8 0
  27              		.cfi_startproc
  28              		@ Naked Function: prologue and epilogue provided by programmer.
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 1, uses_anonymous_args = 0
   9:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** __asm volatile(
  31              		.loc 1 9 0
  32              		.syntax divided
  33              	@ 9 "C:/Users/samue/Documents/MopLab/Moppen/startup.c" 1
  34 0000 0248     		 LDR R0,=0x2001C000
  35 0002 8546     	 MOV SP,R0
  36 0004 FFF7FEFF 	 BL main
  37 0008 FEE7     	_exit: B .
  38              	
  39              	@ 0 "" 2
  10:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  11:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	" MOV SP,R0\n"
  12:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	" BL main\n"				/* call main */
  13:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	"_exit: B .\n"				/* never return */
  14:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	) ;
  15:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** }
  40              		.loc 1 15 0
  41              		.thumb
  42              		.syntax unified
  43 000a C046     		nop
  44              		.cfi_endproc
  45              	.LFE0:
  47              		.bss
  48              		.align	2
  49              	buffer:
  50 0000 00000000 		.space	1164
  50      00000000 
  50      00000000 
  50      00000000 
  50      00000000 
  52              		.global	ball_geometry
  53              		.data
  54              		.align	2
  57              	ball_geometry:
  58 0000 0C000000 		.word	12
  59 0004 04000000 		.word	4
  60 0008 04000000 		.word	4
  61 000c 00       		.byte	0
  62 000d 01       		.byte	1
  63 000e 00       		.byte	0
  64 000f 02       		.byte	2
  65 0010 01       		.byte	1
  66 0011 00       		.byte	0
  67 0012 01       		.byte	1
  68 0013 01       		.byte	1
  69 0014 01       		.byte	1
  70 0015 02       		.byte	2
  71 0016 01       		.byte	1
  72 0017 03       		.byte	3
  73 0018 02       		.byte	2
  74 0019 00       		.byte	0
  75 001a 02       		.byte	2
  76 001b 01       		.byte	1
  77 001c 02       		.byte	2
  78 001d 02       		.byte	2
  79 001e 02       		.byte	2
  80 001f 03       		.byte	3
  81 0020 03       		.byte	3
  82 0021 01       		.byte	1
  83 0022 03       		.byte	3
  84 0023 01       		.byte	1
  85 0024 00000000 		.space	16
  85      00000000 
  85      00000000 
  85      00000000 
  86              		.align	2
  89              	ball:
  90 0034 00000000 		.word	ball_geometry
  91 0038 00000000 		.word	0
  92 003c 00000000 		.word	0
  93 0040 01000000 		.word	1
  94 0044 01000000 		.word	1
  95 0048 00000000 		.word	draw_object
  96 004c 00000000 		.word	clear_object
  97 0050 00000000 		.word	move_object
  98 0054 00000000 		.word	set_object_speed
  99 0058 00000000 		.word	pong_set_position
 100              		.global	paddle_geometry
 101              		.align	2
 104              	paddle_geometry:
 105 005c 08000000 		.word	8
 106 0060 01000000 		.word	1
 107 0064 08000000 		.word	8
 108 0068 00       		.byte	0
 109 0069 00       		.byte	0
 110 006a 00       		.byte	0
 111 006b 01       		.byte	1
 112 006c 00       		.byte	0
 113 006d 02       		.byte	2
 114 006e 00       		.byte	0
 115 006f 03       		.byte	3
 116 0070 00       		.byte	0
 117 0071 04       		.byte	4
 118 0072 00       		.byte	0
 119 0073 05       		.byte	5
 120 0074 00       		.byte	0
 121 0075 06       		.byte	6
 122 0076 00       		.byte	0
 123 0077 07       		.byte	7
 124 0078 00000000 		.space	24
 124      00000000 
 124      00000000 
 124      00000000 
 124      00000000 
 125              		.align	2
 128              	p1paddle:
 129 0090 00000000 		.word	paddle_geometry
 130 0094 00000000 		.word	0
 131 0098 00000000 		.word	0
 132 009c 02000000 		.word	2
 133 00a0 1C000000 		.word	28
 134 00a4 00000000 		.word	draw_object
 135 00a8 00000000 		.word	clear_object
 136 00ac 00000000 		.word	move_object
 137 00b0 00000000 		.word	set_object_speed
 138 00b4 00000000 		.word	pong_set_position
 139              		.align	2
 142              	p2paddle:
 143 00b8 00000000 		.word	paddle_geometry
 144 00bc 00000000 		.word	0
 145 00c0 00000000 		.word	0
 146 00c4 7F000000 		.word	127
 147 00c8 1C000000 		.word	28
 148 00cc 00000000 		.word	draw_object
 149 00d0 00000000 		.word	clear_object
 150 00d4 00000000 		.word	move_object
 151 00d8 00000000 		.word	set_object_speed
 152 00dc 00000000 		.word	pong_set_position
 153              		.section	.rodata
 154              		.align	2
 155              	.LC0:
 156 0000 506C6179 		.ascii	"Player 1: \000"
 156      65722031 
 156      3A2000
 157 000b 00       		.align	2
 158              	.LC2:
 159 000c 506C6179 		.ascii	"Player 2: \000"
 159      65722032 
 159      3A2000
 160              		.text
 161              		.align	1
 162              		.global	main
 163              		.syntax unified
 164              		.code	16
 165              		.thumb_func
 166              		.fpu softvfp
 168              	main:
 169              	.LFB1:
  16:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 
  17:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** #include "delay.h"
  18:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** #include "lcd_drivers.h"
  19:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** #include "ascii_drivers.h"
  20:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** #include "keypad_drivers.h"
  21:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** #include "portDeclare.h"
  22:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** #include "ponglogic.h"
  23:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 
  24:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** #define SIMULATOR
  25:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** #define ascii
  26:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** #define lcd
  27:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** #define keypad
  28:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 
  29:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** geometry ball_geometry={12,4,4,
  30:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** {{0,1},{0,2},
  31:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** {1,0},{1,1},{1,2},{1,3},
  32:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** {2,0},{2,1},{2,2},{2,3},
  33:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** {3,1},{3,1}}
  34:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** };
  35:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 
  36:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** static object ball = {
  37:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	&ball_geometry,
  38:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	0,0,
  39:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	1,1,
  40:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	draw_object,
  41:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	clear_object,
  42:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	move_object,
  43:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	set_object_speed,
  44:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	pong_set_position
  45:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	};
  46:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 
  47:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** geometry paddle_geometry={8,1,8,
  48:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** {{0,0},{0,1},{0,2},{0,3},{0,4},{0,5},{0,6},{0,7}}
  49:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** };
  50:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 
  51:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** static object p1paddle = {
  52:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	&paddle_geometry,
  53:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	0,0,
  54:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	2,28,
  55:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	draw_object,
  56:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	clear_object,
  57:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	move_object,
  58:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	set_object_speed,
  59:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	pong_set_position
  60:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	};
  61:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	static object p2paddle = {
  62:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	&paddle_geometry,
  63:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	0,0,
  64:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	127,28,
  65:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	draw_object,
  66:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	clear_object,
  67:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	move_object,
  68:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	set_object_speed,
  69:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	pong_set_position
  70:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	};
  71:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 
  72:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** void main(int argc, char **argv){
 170              		.loc 1 72 0
 171              		.cfi_startproc
 172              		@ args = 0, pretend = 0, frame = 56
 173              		@ frame_needed = 1, uses_anonymous_args = 0
 174 0000 90B5     		push	{r4, r7, lr}
 175              		.cfi_def_cfa_offset 12
 176              		.cfi_offset 4, -12
 177              		.cfi_offset 7, -8
 178              		.cfi_offset 14, -4
 179 0002 8FB0     		sub	sp, sp, #60
 180              		.cfi_def_cfa_offset 72
 181 0004 00AF     		add	r7, sp, #0
 182              		.cfi_def_cfa_register 7
 183 0006 7860     		str	r0, [r7, #4]
 184 0008 3960     		str	r1, [r7]
  73:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	#ifdef USBDM
  74:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 		*((unsigned long *)0x40023830) = 0x18;
  75:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 		__asm volatile(" LDR R0,=0x08000209\n BLX R0 \n");
  76:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	#endif
  77:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	#ifdef ascii
  78:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 		ascii_init_app();
 185              		.loc 1 78 0
 186 000a FFF7FEFF 		bl	ascii_init_app
  79:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 		ascii_init();
 187              		.loc 1 79 0
 188 000e FFF7FEFF 		bl	ascii_init
  80:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 		ascii_gotoxy(1,1);
 189              		.loc 1 80 0
 190 0012 0121     		movs	r1, #1
 191 0014 0120     		movs	r0, #1
 192 0016 FFF7FEFF 		bl	ascii_gotoxy
  81:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 		char *s;
  82:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 		char string1[] = "Player 1: ";
 193              		.loc 1 82 0
 194 001a 1820     		movs	r0, #24
 195 001c 3B18     		adds	r3, r7, r0
 196 001e 4A4A     		ldr	r2, .L10
 197 0020 12CA     		ldmia	r2!, {r1, r4}
 198 0022 12C3     		stmia	r3!, {r1, r4}
 199 0024 1188     		ldrh	r1, [r2]
 200 0026 1980     		strh	r1, [r3]
 201 0028 9278     		ldrb	r2, [r2, #2]
 202 002a 9A70     		strb	r2, [r3, #2]
  83:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 		s = string1;
 203              		.loc 1 83 0
 204 002c 3B18     		adds	r3, r7, r0
 205 002e 7B63     		str	r3, [r7, #52]
  84:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	while (*s)
 206              		.loc 1 84 0
 207 0030 06E0     		b	.L3
 208              	.L4:
  85:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 		ascii_write_char(*s++);
 209              		.loc 1 85 0
 210 0032 7B6B     		ldr	r3, [r7, #52]
 211 0034 5A1C     		adds	r2, r3, #1
 212 0036 7A63     		str	r2, [r7, #52]
 213 0038 1B78     		ldrb	r3, [r3]
 214 003a 1800     		movs	r0, r3
 215 003c FFF7FEFF 		bl	ascii_write_char
 216              	.L3:
  84:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	while (*s)
 217              		.loc 1 84 0
 218 0040 7B6B     		ldr	r3, [r7, #52]
 219 0042 1B78     		ldrb	r3, [r3]
 220 0044 002B     		cmp	r3, #0
 221 0046 F4D1     		bne	.L4
  86:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	ascii_gotoxy(11,2);
 222              		.loc 1 86 0
 223 0048 0221     		movs	r1, #2
 224 004a 0B20     		movs	r0, #11
 225 004c FFF7FEFF 		bl	ascii_gotoxy
  87:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	char string2[] = "Player 2: ";
 226              		.loc 1 87 0
 227 0050 0C20     		movs	r0, #12
 228 0052 3B18     		adds	r3, r7, r0
 229 0054 3D4A     		ldr	r2, .L10+4
 230 0056 12CA     		ldmia	r2!, {r1, r4}
 231 0058 12C3     		stmia	r3!, {r1, r4}
 232 005a 1188     		ldrh	r1, [r2]
 233 005c 1980     		strh	r1, [r3]
 234 005e 9278     		ldrb	r2, [r2, #2]
 235 0060 9A70     		strb	r2, [r3, #2]
  88:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	s = string2;
 236              		.loc 1 88 0
 237 0062 3B18     		adds	r3, r7, r0
 238 0064 7B63     		str	r3, [r7, #52]
  89:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	while (*s)
 239              		.loc 1 89 0
 240 0066 06E0     		b	.L5
 241              	.L6:
  90:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	ascii_write_char(*s++);
 242              		.loc 1 90 0
 243 0068 7B6B     		ldr	r3, [r7, #52]
 244 006a 5A1C     		adds	r2, r3, #1
 245 006c 7A63     		str	r2, [r7, #52]
 246 006e 1B78     		ldrb	r3, [r3]
 247 0070 1800     		movs	r0, r3
 248 0072 FFF7FEFF 		bl	ascii_write_char
 249              	.L5:
  89:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	while (*s)
 250              		.loc 1 89 0
 251 0076 7B6B     		ldr	r3, [r7, #52]
 252 0078 1B78     		ldrb	r3, [r3]
 253 007a 002B     		cmp	r3, #0
 254 007c F4D1     		bne	.L6
  91:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	#endif
  92:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	
  93:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	#ifdef lcd
  94:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 		init_lcd();
 255              		.loc 1 94 0
 256 007e FFF7FEFF 		bl	init_lcd
  95:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 		graphic_initialize();
 257              		.loc 1 95 0
 258 0082 FFF7FEFF 		bl	graphic_initialize
  96:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	#endif
  97:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	#ifdef keypad
  98:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 		init_keypad();
 259              		.loc 1 98 0
 260 0086 FFF7FEFF 		bl	init_keypad
  99:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	#endif
 100:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	#ifndef SIMULATOR
 101:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 		graphic_clean_screen();
 102:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	#endif
 103:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	
 104:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	unsigned char playerScore[2] = {0,0};
 261              		.loc 1 104 0
 262 008a 0821     		movs	r1, #8
 263 008c 7B18     		adds	r3, r7, r1
 264 008e 0022     		movs	r2, #0
 265 0090 1A70     		strb	r2, [r3]
 266 0092 7B18     		adds	r3, r7, r1
 267 0094 0022     		movs	r2, #0
 268 0096 5A70     		strb	r2, [r3, #1]
 105:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	unsigned char *pScore;
 106:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	
 107:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	pScore = playerScore;
 269              		.loc 1 107 0
 270 0098 7B18     		adds	r3, r7, r1
 271 009a 3B63     		str	r3, [r7, #48]
 108:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	pong_inc_playerScore(pScore,1);
 272              		.loc 1 108 0
 273 009c 3B6B     		ldr	r3, [r7, #48]
 274 009e 0121     		movs	r1, #1
 275 00a0 1800     		movs	r0, r3
 276 00a2 FFF7FEFF 		bl	pong_inc_playerScore
 109:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	pong_inc_playerScore(pScore,2);
 277              		.loc 1 109 0
 278 00a6 3B6B     		ldr	r3, [r7, #48]
 279 00a8 0221     		movs	r1, #2
 280 00aa 1800     		movs	r0, r3
 281 00ac FFF7FEFF 		bl	pong_inc_playerScore
 110:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	pobject p = &ball;
 282              		.loc 1 110 0
 283 00b0 274B     		ldr	r3, .L10+8
 284 00b2 FB62     		str	r3, [r7, #44]
 111:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	pobject player1 = &p1paddle;
 285              		.loc 1 111 0
 286 00b4 274B     		ldr	r3, .L10+12
 287 00b6 BB62     		str	r3, [r7, #40]
 112:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	pobject player2 = &p2paddle;
 288              		.loc 1 112 0
 289 00b8 274B     		ldr	r3, .L10+16
 290 00ba 7B62     		str	r3, [r7, #36]
 113:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	pong_set_position(player1,2,28);
 291              		.loc 1 113 0
 292 00bc BB6A     		ldr	r3, [r7, #40]
 293 00be 1C22     		movs	r2, #28
 294 00c0 0221     		movs	r1, #2
 295 00c2 1800     		movs	r0, r3
 296 00c4 FFF7FEFF 		bl	pong_set_position
 114:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	pong_set_position(player2,127,28);
 297              		.loc 1 114 0
 298 00c8 7B6A     		ldr	r3, [r7, #36]
 299 00ca 1C22     		movs	r2, #28
 300 00cc 7F21     		movs	r1, #127
 301 00ce 1800     		movs	r0, r3
 302 00d0 FFF7FEFF 		bl	pong_set_position
 115:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	pong_set_position(p,64-(p->geo->sizex)/2,32-(p->geo->sizey)/2);
 303              		.loc 1 115 0
 304 00d4 FB6A     		ldr	r3, [r7, #44]
 305 00d6 1B68     		ldr	r3, [r3]
 306 00d8 5B68     		ldr	r3, [r3, #4]
 307 00da 002B     		cmp	r3, #0
 308 00dc 00DA     		bge	.L7
 309 00de 0133     		adds	r3, r3, #1
 310              	.L7:
 311 00e0 5B10     		asrs	r3, r3, #1
 312 00e2 5B42     		rsbs	r3, r3, #0
 313 00e4 4033     		adds	r3, r3, #64
 314 00e6 1900     		movs	r1, r3
 315 00e8 FB6A     		ldr	r3, [r7, #44]
 316 00ea 1B68     		ldr	r3, [r3]
 317 00ec 9B68     		ldr	r3, [r3, #8]
 318 00ee 002B     		cmp	r3, #0
 319 00f0 00DA     		bge	.L8
 320 00f2 0133     		adds	r3, r3, #1
 321              	.L8:
 322 00f4 5B10     		asrs	r3, r3, #1
 323 00f6 5B42     		rsbs	r3, r3, #0
 324 00f8 2033     		adds	r3, r3, #32
 325 00fa 1A00     		movs	r2, r3
 326 00fc FB6A     		ldr	r3, [r7, #44]
 327 00fe 1800     		movs	r0, r3
 328 0100 FFF7FEFF 		bl	pong_set_position
 116:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 
 117:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	set_object_speed(player2,0,2);
 329              		.loc 1 117 0
 330 0104 7B6A     		ldr	r3, [r7, #36]
 331 0106 0222     		movs	r2, #2
 332 0108 0021     		movs	r1, #0
 333 010a 1800     		movs	r0, r3
 334 010c FFF7FEFF 		bl	set_object_speed
 118:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	p->set_speed(p,4,1);
 335              		.loc 1 118 0
 336 0110 FB6A     		ldr	r3, [r7, #44]
 337 0112 1B6A     		ldr	r3, [r3, #32]
 338 0114 F86A     		ldr	r0, [r7, #44]
 339 0116 0122     		movs	r2, #1
 340 0118 0421     		movs	r1, #4
 341 011a 9847     		blx	r3
 342              	.LVL0:
 343              	.L9:
 119:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	while(1){
 120:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 		move_object(p);
 344              		.loc 1 120 0 discriminator 1
 345 011c FB6A     		ldr	r3, [r7, #44]
 346 011e 1800     		movs	r0, r3
 347 0120 FFF7FEFF 		bl	move_object
 121:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 		move_object(player1);
 348              		.loc 1 121 0 discriminator 1
 349 0124 BB6A     		ldr	r3, [r7, #40]
 350 0126 1800     		movs	r0, r3
 351 0128 FFF7FEFF 		bl	move_object
 122:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 		move_object(player2); 
 352              		.loc 1 122 0 discriminator 1
 353 012c 7B6A     		ldr	r3, [r7, #36]
 354 012e 1800     		movs	r0, r3
 355 0130 FFF7FEFF 		bl	move_object
 123:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 		pong_inc_playerScore(pScore,1);
 356              		.loc 1 123 0 discriminator 1
 357 0134 3B6B     		ldr	r3, [r7, #48]
 358 0136 0121     		movs	r1, #1
 359 0138 1800     		movs	r0, r3
 360 013a FFF7FEFF 		bl	pong_inc_playerScore
 124:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 		delay_milli(40);
 361              		.loc 1 124 0 discriminator 1
 362 013e 2820     		movs	r0, #40
 363 0140 FFF7FEFF 		bl	delay_milli
 120:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 		move_object(player1);
 364              		.loc 1 120 0 discriminator 1
 365 0144 EAE7     		b	.L9
 366              	.L11:
 367 0146 C046     		.align	2
 368              	.L10:
 369 0148 00000000 		.word	.LC0
 370 014c 0C000000 		.word	.LC2
 371 0150 34000000 		.word	ball
 372 0154 90000000 		.word	p1paddle
 373 0158 B8000000 		.word	p2paddle
 374              		.cfi_endproc
 375              	.LFE1:
 377              	.Letext0:
 378              		.file 2 "C:/Users/samue/Documents/MopLab/Moppen/lcd_drivers.h"
 379              		.file 3 "C:/Users/samue/Documents/MopLab/Moppen/ponglogic.h"
