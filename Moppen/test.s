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
 100              		.section	.rodata
 101              		.align	2
 102              	.LC0:
 103 0000 506C6179 		.ascii	"Player 1: \000"
 103      65722031 
 103      3A2000
 104 000b 00       		.align	2
 105              	.LC2:
 106 000c 506C6179 		.ascii	"Player 2: \000"
 106      65722032 
 106      3A2000
 107              		.text
 108              		.align	1
 109              		.global	main
 110              		.syntax unified
 111              		.code	16
 112              		.thumb_func
 113              		.fpu softvfp
 115              	main:
 116              	.LFB1:
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
  47:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** void main(int argc, char **argv){
 117              		.loc 1 47 0
 118              		.cfi_startproc
 119              		@ args = 0, pretend = 0, frame = 56
 120              		@ frame_needed = 1, uses_anonymous_args = 0
 121 0000 90B5     		push	{r4, r7, lr}
 122              		.cfi_def_cfa_offset 12
 123              		.cfi_offset 4, -12
 124              		.cfi_offset 7, -8
 125              		.cfi_offset 14, -4
 126 0002 8FB0     		sub	sp, sp, #60
 127              		.cfi_def_cfa_offset 72
 128 0004 00AF     		add	r7, sp, #0
 129              		.cfi_def_cfa_register 7
 130 0006 7860     		str	r0, [r7, #4]
 131 0008 3960     		str	r1, [r7]
  48:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	#ifdef USBDM
  49:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 		*((unsigned long *)0x40023830) = 0x18;
  50:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 		__asm volatile(" LDR R0,=0x08000209\n BLX R0 \n");
  51:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	#endif
  52:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	#ifdef ascii
  53:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 		ascii_init_app();
 132              		.loc 1 53 0
 133 000a FFF7FEFF 		bl	ascii_init_app
  54:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 		ascii_init();
 134              		.loc 1 54 0
 135 000e FFF7FEFF 		bl	ascii_init
  55:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 		ascii_gotoxy(1,1);
 136              		.loc 1 55 0
 137 0012 0121     		movs	r1, #1
 138 0014 0120     		movs	r0, #1
 139 0016 FFF7FEFF 		bl	ascii_gotoxy
  56:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 		char *s;
  57:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 		char string1[] = "Player 1: ";
 140              		.loc 1 57 0
 141 001a 1C20     		movs	r0, #28
 142 001c 3B18     		adds	r3, r7, r0
 143 001e 354A     		ldr	r2, .L10
 144 0020 12CA     		ldmia	r2!, {r1, r4}
 145 0022 12C3     		stmia	r3!, {r1, r4}
 146 0024 1188     		ldrh	r1, [r2]
 147 0026 1980     		strh	r1, [r3]
 148 0028 9278     		ldrb	r2, [r2, #2]
 149 002a 9A70     		strb	r2, [r3, #2]
  58:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 		s = string1;
 150              		.loc 1 58 0
 151 002c 3B18     		adds	r3, r7, r0
 152 002e 7B63     		str	r3, [r7, #52]
  59:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	while (*s)
 153              		.loc 1 59 0
 154 0030 06E0     		b	.L3
 155              	.L4:
  60:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 		ascii_write_char(*s++);
 156              		.loc 1 60 0
 157 0032 7B6B     		ldr	r3, [r7, #52]
 158 0034 5A1C     		adds	r2, r3, #1
 159 0036 7A63     		str	r2, [r7, #52]
 160 0038 1B78     		ldrb	r3, [r3]
 161 003a 1800     		movs	r0, r3
 162 003c FFF7FEFF 		bl	ascii_write_char
 163              	.L3:
  59:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	while (*s)
 164              		.loc 1 59 0
 165 0040 7B6B     		ldr	r3, [r7, #52]
 166 0042 1B78     		ldrb	r3, [r3]
 167 0044 002B     		cmp	r3, #0
 168 0046 F4D1     		bne	.L4
  61:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	ascii_gotoxy(11,2);
 169              		.loc 1 61 0
 170 0048 0221     		movs	r1, #2
 171 004a 0B20     		movs	r0, #11
 172 004c FFF7FEFF 		bl	ascii_gotoxy
  62:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	char string2[] = "Player 2: ";
 173              		.loc 1 62 0
 174 0050 1020     		movs	r0, #16
 175 0052 3B18     		adds	r3, r7, r0
 176 0054 284A     		ldr	r2, .L10+4
 177 0056 12CA     		ldmia	r2!, {r1, r4}
 178 0058 12C3     		stmia	r3!, {r1, r4}
 179 005a 1188     		ldrh	r1, [r2]
 180 005c 1980     		strh	r1, [r3]
 181 005e 9278     		ldrb	r2, [r2, #2]
 182 0060 9A70     		strb	r2, [r3, #2]
  63:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	s = string2;
 183              		.loc 1 63 0
 184 0062 3B18     		adds	r3, r7, r0
 185 0064 7B63     		str	r3, [r7, #52]
  64:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	while (*s)
 186              		.loc 1 64 0
 187 0066 06E0     		b	.L5
 188              	.L6:
  65:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	ascii_write_char(*s++);
 189              		.loc 1 65 0
 190 0068 7B6B     		ldr	r3, [r7, #52]
 191 006a 5A1C     		adds	r2, r3, #1
 192 006c 7A63     		str	r2, [r7, #52]
 193 006e 1B78     		ldrb	r3, [r3]
 194 0070 1800     		movs	r0, r3
 195 0072 FFF7FEFF 		bl	ascii_write_char
 196              	.L5:
  64:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	while (*s)
 197              		.loc 1 64 0
 198 0076 7B6B     		ldr	r3, [r7, #52]
 199 0078 1B78     		ldrb	r3, [r3]
 200 007a 002B     		cmp	r3, #0
 201 007c F4D1     		bne	.L6
  66:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	#endif
  67:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	
  68:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	#ifdef lcd
  69:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 		init_lcd();
 202              		.loc 1 69 0
 203 007e FFF7FEFF 		bl	init_lcd
  70:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 		graphic_initialize();
 204              		.loc 1 70 0
 205 0082 FFF7FEFF 		bl	graphic_initialize
  71:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	#endif
  72:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	#ifdef keypad
  73:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 		init_keypad();
 206              		.loc 1 73 0
 207 0086 FFF7FEFF 		bl	init_keypad
  74:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	#endif
  75:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	#ifndef SIMULATOR
  76:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 		graphic_clean_screen();
  77:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	#endif
  78:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	
  79:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	unsigned char playerScore = {0,0};
 208              		.loc 1 79 0
 209 008a 3321     		movs	r1, #51
 210 008c 7B18     		adds	r3, r7, r1
 211 008e 0022     		movs	r2, #0
 212 0090 1A70     		strb	r2, [r3]
  80:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	char* pScore = playerScore;
 213              		.loc 1 80 0
 214 0092 7B18     		adds	r3, r7, r1
 215 0094 1B78     		ldrb	r3, [r3]
 216 0096 FB62     		str	r3, [r7, #44]
  81:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	
  82:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	//graphic_pixel(66,33,1);
  83:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	pobject p = &ball;
 217              		.loc 1 83 0
 218 0098 184B     		ldr	r3, .L10+8
 219 009a BB62     		str	r3, [r7, #40]
  84:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	pong_set_position(p,64-(p->geo->sizex)/2,32-(p->geo->sizey)/2);
 220              		.loc 1 84 0
 221 009c BB6A     		ldr	r3, [r7, #40]
 222 009e 1B68     		ldr	r3, [r3]
 223 00a0 5B68     		ldr	r3, [r3, #4]
 224 00a2 002B     		cmp	r3, #0
 225 00a4 00DA     		bge	.L7
 226 00a6 0133     		adds	r3, r3, #1
 227              	.L7:
 228 00a8 5B10     		asrs	r3, r3, #1
 229 00aa 5B42     		rsbs	r3, r3, #0
 230 00ac 4033     		adds	r3, r3, #64
 231 00ae 1900     		movs	r1, r3
 232 00b0 BB6A     		ldr	r3, [r7, #40]
 233 00b2 1B68     		ldr	r3, [r3]
 234 00b4 9B68     		ldr	r3, [r3, #8]
 235 00b6 002B     		cmp	r3, #0
 236 00b8 00DA     		bge	.L8
 237 00ba 0133     		adds	r3, r3, #1
 238              	.L8:
 239 00bc 5B10     		asrs	r3, r3, #1
 240 00be 5B42     		rsbs	r3, r3, #0
 241 00c0 2033     		adds	r3, r3, #32
 242 00c2 1A00     		movs	r2, r3
 243 00c4 BB6A     		ldr	r3, [r7, #40]
 244 00c6 1800     		movs	r0, r3
 245 00c8 FFF7FEFF 		bl	pong_set_position
  85:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** //	draw_object(p);
  86:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	
  87:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	p->set_speed(p,4,1);
 246              		.loc 1 87 0
 247 00cc BB6A     		ldr	r3, [r7, #40]
 248 00ce 1B6A     		ldr	r3, [r3, #32]
 249 00d0 B86A     		ldr	r0, [r7, #40]
 250 00d2 0122     		movs	r2, #1
 251 00d4 0421     		movs	r1, #4
 252 00d6 9847     		blx	r3
 253              	.LVL0:
 254              	.L9:
  88:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 	while(1){
  89:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 		move_object(p);
 255              		.loc 1 89 0 discriminator 1
 256 00d8 BB6A     		ldr	r3, [r7, #40]
 257 00da 1800     		movs	r0, r3
 258 00dc FFF7FEFF 		bl	move_object
  90:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 		pong_inc_playerScore(pScore,1);
 259              		.loc 1 90 0 discriminator 1
 260 00e0 FB6A     		ldr	r3, [r7, #44]
 261 00e2 0121     		movs	r1, #1
 262 00e4 1800     		movs	r0, r3
 263 00e6 FFF7FEFF 		bl	pong_inc_playerScore
  91:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 		delay_milli(40);
 264              		.loc 1 91 0 discriminator 1
 265 00ea 2820     		movs	r0, #40
 266 00ec FFF7FEFF 		bl	delay_milli
  89:C:/Users/samue/Documents/MopLab/Moppen\startup.c **** 		pong_inc_playerScore(pScore,1);
 267              		.loc 1 89 0 discriminator 1
 268 00f0 F2E7     		b	.L9
 269              	.L11:
 270 00f2 C046     		.align	2
 271              	.L10:
 272 00f4 00000000 		.word	.LC0
 273 00f8 0C000000 		.word	.LC2
 274 00fc 34000000 		.word	ball
 275              		.cfi_endproc
 276              	.LFE1:
 278              	.Letext0:
 279              		.file 2 "C:/Users/samue/Documents/MopLab/Moppen/lcd_drivers.h"
 280              		.file 3 "C:/Users/samue/Documents/MopLab/Moppen/ponglogic.h"
