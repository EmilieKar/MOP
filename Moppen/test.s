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
  11              		.file	"ascii_drivers.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.align	1
  16              		.global	ascii_ctrl_bit_set
  17              		.syntax unified
  18              		.code	16
  19              		.thumb_func
  20              		.fpu softvfp
  22              	ascii_ctrl_bit_set:
  23              	.LFB0:
  24              		.file 1 "C:/Users/samue/Documents/MopLab/Moppen/ascii_drivers.c"
   1:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 
   2:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** #include "delay.h"
   3:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** #include "ascii_drivers.h"
   4:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** #include "portDeclare.h"
   5:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 
   6:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** void ascii_ctrl_bit_set(unsigned short x){
  25              		.loc 1 6 0
  26              		.cfi_startproc
  27              		@ args = 0, pretend = 0, frame = 16
  28              		@ frame_needed = 1, uses_anonymous_args = 0
  29 0000 80B5     		push	{r7, lr}
  30              		.cfi_def_cfa_offset 8
  31              		.cfi_offset 7, -8
  32              		.cfi_offset 14, -4
  33 0002 84B0     		sub	sp, sp, #16
  34              		.cfi_def_cfa_offset 24
  35 0004 00AF     		add	r7, sp, #0
  36              		.cfi_def_cfa_register 7
  37 0006 0200     		movs	r2, r0
  38 0008 BB1D     		adds	r3, r7, #6
  39 000a 1A80     		strh	r2, [r3]
   7:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 	
   8:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 	unsigned char c;
   9:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 	c = *portOdrLowE;
  40              		.loc 1 9 0
  41 000c 0C4A     		ldr	r2, .L2
  42 000e 0F21     		movs	r1, #15
  43 0010 7B18     		adds	r3, r7, r1
  44 0012 1278     		ldrb	r2, [r2]
  45 0014 1A70     		strb	r2, [r3]
  10:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 	c |= ( B_SELECT | x );
  46              		.loc 1 10 0
  47 0016 BB1D     		adds	r3, r7, #6
  48 0018 1B88     		ldrh	r3, [r3]
  49 001a DAB2     		uxtb	r2, r3
  50 001c 7B18     		adds	r3, r7, r1
  51 001e 1B78     		ldrb	r3, [r3]
  52 0020 1343     		orrs	r3, r2
  53 0022 DAB2     		uxtb	r2, r3
  54 0024 0800     		movs	r0, r1
  55 0026 7B18     		adds	r3, r7, r1
  56 0028 0421     		movs	r1, #4
  57 002a 0A43     		orrs	r2, r1
  58 002c 1A70     		strb	r2, [r3]
  11:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 	*portOdrLowE = c; 
  59              		.loc 1 11 0
  60 002e 044A     		ldr	r2, .L2
  61 0030 0100     		movs	r1, r0
  62 0032 7B18     		adds	r3, r7, r1
  63 0034 1B78     		ldrb	r3, [r3]
  64 0036 1370     		strb	r3, [r2]
  12:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** }
  65              		.loc 1 12 0
  66 0038 C046     		nop
  67 003a BD46     		mov	sp, r7
  68 003c 04B0     		add	sp, sp, #16
  69              		@ sp needed
  70 003e 80BD     		pop	{r7, pc}
  71              	.L3:
  72              		.align	2
  73              	.L2:
  74 0040 14100240 		.word	1073877012
  75              		.cfi_endproc
  76              	.LFE0:
  78              		.align	1
  79              		.global	ascii_ctrl_bit_clear
  80              		.syntax unified
  81              		.code	16
  82              		.thumb_func
  83              		.fpu softvfp
  85              	ascii_ctrl_bit_clear:
  86              	.LFB1:
  13:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 
  14:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** void ascii_ctrl_bit_clear(unsigned short x){
  87              		.loc 1 14 0
  88              		.cfi_startproc
  89              		@ args = 0, pretend = 0, frame = 16
  90              		@ frame_needed = 1, uses_anonymous_args = 0
  91 0044 80B5     		push	{r7, lr}
  92              		.cfi_def_cfa_offset 8
  93              		.cfi_offset 7, -8
  94              		.cfi_offset 14, -4
  95 0046 84B0     		sub	sp, sp, #16
  96              		.cfi_def_cfa_offset 24
  97 0048 00AF     		add	r7, sp, #0
  98              		.cfi_def_cfa_register 7
  99 004a 0200     		movs	r2, r0
 100 004c BB1D     		adds	r3, r7, #6
 101 004e 1A80     		strh	r2, [r3]
  15:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 	unsigned char c;
  16:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 	c = *portOdrLowE;
 102              		.loc 1 16 0
 103 0050 0D4A     		ldr	r2, .L5
 104 0052 0F21     		movs	r1, #15
 105 0054 7B18     		adds	r3, r7, r1
 106 0056 1278     		ldrb	r2, [r2]
 107 0058 1A70     		strb	r2, [r3]
  17:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 	c = B_SELECT | ( c & ~x );
 108              		.loc 1 17 0
 109 005a BB1D     		adds	r3, r7, #6
 110 005c 1B88     		ldrh	r3, [r3]
 111 005e 5BB2     		sxtb	r3, r3
 112 0060 DB43     		mvns	r3, r3
 113 0062 5BB2     		sxtb	r3, r3
 114 0064 7A18     		adds	r2, r7, r1
 115 0066 1278     		ldrb	r2, [r2]
 116 0068 52B2     		sxtb	r2, r2
 117 006a 1340     		ands	r3, r2
 118 006c 5BB2     		sxtb	r3, r3
 119 006e 0422     		movs	r2, #4
 120 0070 1343     		orrs	r3, r2
 121 0072 5AB2     		sxtb	r2, r3
 122 0074 7B18     		adds	r3, r7, r1
 123 0076 1A70     		strb	r2, [r3]
  18:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 	*portOdrLowE = c;
 124              		.loc 1 18 0
 125 0078 034A     		ldr	r2, .L5
 126 007a 7B18     		adds	r3, r7, r1
 127 007c 1B78     		ldrb	r3, [r3]
 128 007e 1370     		strb	r3, [r2]
  19:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** }
 129              		.loc 1 19 0
 130 0080 C046     		nop
 131 0082 BD46     		mov	sp, r7
 132 0084 04B0     		add	sp, sp, #16
 133              		@ sp needed
 134 0086 80BD     		pop	{r7, pc}
 135              	.L6:
 136              		.align	2
 137              	.L5:
 138 0088 14100240 		.word	1073877012
 139              		.cfi_endproc
 140              	.LFE1:
 142              		.align	1
 143              		.global	ascii_write_controller
 144              		.syntax unified
 145              		.code	16
 146              		.thumb_func
 147              		.fpu softvfp
 149              	ascii_write_controller:
 150              	.LFB2:
  20:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 
  21:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** void ascii_write_controller(unsigned char c){
 151              		.loc 1 21 0
 152              		.cfi_startproc
 153              		@ args = 0, pretend = 0, frame = 8
 154              		@ frame_needed = 1, uses_anonymous_args = 0
 155 008c 80B5     		push	{r7, lr}
 156              		.cfi_def_cfa_offset 8
 157              		.cfi_offset 7, -8
 158              		.cfi_offset 14, -4
 159 008e 82B0     		sub	sp, sp, #8
 160              		.cfi_def_cfa_offset 16
 161 0090 00AF     		add	r7, sp, #0
 162              		.cfi_def_cfa_register 7
 163 0092 0200     		movs	r2, r0
 164 0094 FB1D     		adds	r3, r7, #7
 165 0096 1A70     		strb	r2, [r3]
  22:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 	delay_40ns();
 166              		.loc 1 22 0
 167 0098 FFF7FEFF 		bl	delay_40ns
  23:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 	ascii_ctrl_bit_set(B_E);
 168              		.loc 1 23 0
 169 009c 4020     		movs	r0, #64
 170 009e FFF7FEFF 		bl	ascii_ctrl_bit_set
  24:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 	*portOdrHighE = c;
 171              		.loc 1 24 0
 172 00a2 054A     		ldr	r2, .L8
 173 00a4 FB1D     		adds	r3, r7, #7
 174 00a6 1B78     		ldrb	r3, [r3]
 175 00a8 1370     		strb	r3, [r2]
  25:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 	delay_250ns;
  26:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 	ascii_ctrl_bit_clear(B_E);
 176              		.loc 1 26 0
 177 00aa 4020     		movs	r0, #64
 178 00ac FFF7FEFF 		bl	ascii_ctrl_bit_clear
  27:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** }
 179              		.loc 1 27 0
 180 00b0 C046     		nop
 181 00b2 BD46     		mov	sp, r7
 182 00b4 02B0     		add	sp, sp, #8
 183              		@ sp needed
 184 00b6 80BD     		pop	{r7, pc}
 185              	.L9:
 186              		.align	2
 187              	.L8:
 188 00b8 15100240 		.word	1073877013
 189              		.cfi_endproc
 190              	.LFE2:
 192              		.align	1
 193              		.global	ascii_read_controller
 194              		.syntax unified
 195              		.code	16
 196              		.thumb_func
 197              		.fpu softvfp
 199              	ascii_read_controller:
 200              	.LFB3:
  28:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** unsigned char ascii_read_controller(void){
 201              		.loc 1 28 0
 202              		.cfi_startproc
 203              		@ args = 0, pretend = 0, frame = 8
 204              		@ frame_needed = 1, uses_anonymous_args = 0
 205 00bc 80B5     		push	{r7, lr}
 206              		.cfi_def_cfa_offset 8
 207              		.cfi_offset 7, -8
 208              		.cfi_offset 14, -4
 209 00be 82B0     		sub	sp, sp, #8
 210              		.cfi_def_cfa_offset 16
 211 00c0 00AF     		add	r7, sp, #0
 212              		.cfi_def_cfa_register 7
  29:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 	ascii_ctrl_bit_set(B_E);
 213              		.loc 1 29 0
 214 00c2 4020     		movs	r0, #64
 215 00c4 FFF7FEFF 		bl	ascii_ctrl_bit_set
  30:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 	delay_250ns;
  31:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 	delay_250ns;
  32:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 	unsigned char rv = *portIdrHighE;
 216              		.loc 1 32 0
 217 00c8 064A     		ldr	r2, .L12
 218 00ca FB1D     		adds	r3, r7, #7
 219 00cc 1278     		ldrb	r2, [r2]
 220 00ce 1A70     		strb	r2, [r3]
  33:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 	ascii_ctrl_bit_clear(B_E);
 221              		.loc 1 33 0
 222 00d0 4020     		movs	r0, #64
 223 00d2 FFF7FEFF 		bl	ascii_ctrl_bit_clear
  34:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 	return rv;
 224              		.loc 1 34 0
 225 00d6 FB1D     		adds	r3, r7, #7
 226 00d8 1B78     		ldrb	r3, [r3]
  35:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** }
 227              		.loc 1 35 0
 228 00da 1800     		movs	r0, r3
 229 00dc BD46     		mov	sp, r7
 230 00de 02B0     		add	sp, sp, #8
 231              		@ sp needed
 232 00e0 80BD     		pop	{r7, pc}
 233              	.L13:
 234 00e2 C046     		.align	2
 235              	.L12:
 236 00e4 11100240 		.word	1073877009
 237              		.cfi_endproc
 238              	.LFE3:
 240              		.align	1
 241              		.global	ascii_write_cmd
 242              		.syntax unified
 243              		.code	16
 244              		.thumb_func
 245              		.fpu softvfp
 247              	ascii_write_cmd:
 248              	.LFB4:
  36:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 
  37:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** void ascii_write_cmd(unsigned char command){
 249              		.loc 1 37 0
 250              		.cfi_startproc
 251              		@ args = 0, pretend = 0, frame = 8
 252              		@ frame_needed = 1, uses_anonymous_args = 0
 253 00e8 80B5     		push	{r7, lr}
 254              		.cfi_def_cfa_offset 8
 255              		.cfi_offset 7, -8
 256              		.cfi_offset 14, -4
 257 00ea 82B0     		sub	sp, sp, #8
 258              		.cfi_def_cfa_offset 16
 259 00ec 00AF     		add	r7, sp, #0
 260              		.cfi_def_cfa_register 7
 261 00ee 0200     		movs	r2, r0
 262 00f0 FB1D     		adds	r3, r7, #7
 263 00f2 1A70     		strb	r2, [r3]
  38:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 	ascii_ctrl_bit_clear(B_RS);
 264              		.loc 1 38 0
 265 00f4 0120     		movs	r0, #1
 266 00f6 FFF7FEFF 		bl	ascii_ctrl_bit_clear
  39:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 	ascii_ctrl_bit_clear(B_RW);
 267              		.loc 1 39 0
 268 00fa 0220     		movs	r0, #2
 269 00fc FFF7FEFF 		bl	ascii_ctrl_bit_clear
  40:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 	ascii_write_controller(command);
 270              		.loc 1 40 0
 271 0100 FB1D     		adds	r3, r7, #7
 272 0102 1B78     		ldrb	r3, [r3]
 273 0104 1800     		movs	r0, r3
 274 0106 FFF7FEFF 		bl	ascii_write_controller
  41:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** }
 275              		.loc 1 41 0
 276 010a C046     		nop
 277 010c BD46     		mov	sp, r7
 278 010e 02B0     		add	sp, sp, #8
 279              		@ sp needed
 280 0110 80BD     		pop	{r7, pc}
 281              		.cfi_endproc
 282              	.LFE4:
 284              		.align	1
 285              		.global	ascii_write_data
 286              		.syntax unified
 287              		.code	16
 288              		.thumb_func
 289              		.fpu softvfp
 291              	ascii_write_data:
 292              	.LFB5:
  42:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 
  43:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** void ascii_write_data(unsigned char data){
 293              		.loc 1 43 0
 294              		.cfi_startproc
 295              		@ args = 0, pretend = 0, frame = 8
 296              		@ frame_needed = 1, uses_anonymous_args = 0
 297 0112 80B5     		push	{r7, lr}
 298              		.cfi_def_cfa_offset 8
 299              		.cfi_offset 7, -8
 300              		.cfi_offset 14, -4
 301 0114 82B0     		sub	sp, sp, #8
 302              		.cfi_def_cfa_offset 16
 303 0116 00AF     		add	r7, sp, #0
 304              		.cfi_def_cfa_register 7
 305 0118 0200     		movs	r2, r0
 306 011a FB1D     		adds	r3, r7, #7
 307 011c 1A70     		strb	r2, [r3]
  44:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 	ascii_ctrl_bit_set(B_RS);
 308              		.loc 1 44 0
 309 011e 0120     		movs	r0, #1
 310 0120 FFF7FEFF 		bl	ascii_ctrl_bit_set
  45:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 	ascii_ctrl_bit_clear(B_RW);
 311              		.loc 1 45 0
 312 0124 0220     		movs	r0, #2
 313 0126 FFF7FEFF 		bl	ascii_ctrl_bit_clear
  46:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 	ascii_write_controller(data);
 314              		.loc 1 46 0
 315 012a FB1D     		adds	r3, r7, #7
 316 012c 1B78     		ldrb	r3, [r3]
 317 012e 1800     		movs	r0, r3
 318 0130 FFF7FEFF 		bl	ascii_write_controller
  47:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** }
 319              		.loc 1 47 0
 320 0134 C046     		nop
 321 0136 BD46     		mov	sp, r7
 322 0138 02B0     		add	sp, sp, #8
 323              		@ sp needed
 324 013a 80BD     		pop	{r7, pc}
 325              		.cfi_endproc
 326              	.LFE5:
 328              		.align	1
 329              		.global	ascii_read_status
 330              		.syntax unified
 331              		.code	16
 332              		.thumb_func
 333              		.fpu softvfp
 335              	ascii_read_status:
 336              	.LFB6:
  48:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 
  49:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** unsigned char ascii_read_status(void){
 337              		.loc 1 49 0
 338              		.cfi_startproc
 339              		@ args = 0, pretend = 0, frame = 8
 340              		@ frame_needed = 1, uses_anonymous_args = 0
 341 013c 80B5     		push	{r7, lr}
 342              		.cfi_def_cfa_offset 8
 343              		.cfi_offset 7, -8
 344              		.cfi_offset 14, -4
 345 013e 82B0     		sub	sp, sp, #8
 346              		.cfi_def_cfa_offset 16
 347 0140 00AF     		add	r7, sp, #0
 348              		.cfi_def_cfa_register 7
  50:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 	*portModerE = (*portModerE & 0x0000FFFF);
 349              		.loc 1 50 0
 350 0142 0C4B     		ldr	r3, .L18
 351 0144 1A68     		ldr	r2, [r3]
 352 0146 0B4B     		ldr	r3, .L18
 353 0148 1204     		lsls	r2, r2, #16
 354 014a 120C     		lsrs	r2, r2, #16
 355 014c 1A60     		str	r2, [r3]
  51:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 	ascii_ctrl_bit_clear(B_RS);
 356              		.loc 1 51 0
 357 014e 0120     		movs	r0, #1
 358 0150 FFF7FEFF 		bl	ascii_ctrl_bit_clear
  52:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 	ascii_ctrl_bit_set(B_RW);
 359              		.loc 1 52 0
 360 0154 0220     		movs	r0, #2
 361 0156 FFF7FEFF 		bl	ascii_ctrl_bit_set
  53:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 	unsigned char rv; 
  54:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 	#ifndef SIMULATOR
  55:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 		rv = ascii_read_controller();
  56:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 	#endif
  57:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 	*portModerE = (*portModerE | 0x55550000);
 362              		.loc 1 57 0
 363 015a 064B     		ldr	r3, .L18
 364 015c 1A68     		ldr	r2, [r3]
 365 015e 054B     		ldr	r3, .L18
 366 0160 0549     		ldr	r1, .L18+4
 367 0162 0A43     		orrs	r2, r1
 368 0164 1A60     		str	r2, [r3]
  58:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 	return rv;
 369              		.loc 1 58 0
 370 0166 FB1D     		adds	r3, r7, #7
 371 0168 1B78     		ldrb	r3, [r3]
  59:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** }
 372              		.loc 1 59 0
 373 016a 1800     		movs	r0, r3
 374 016c BD46     		mov	sp, r7
 375 016e 02B0     		add	sp, sp, #8
 376              		@ sp needed
 377 0170 80BD     		pop	{r7, pc}
 378              	.L19:
 379 0172 C046     		.align	2
 380              	.L18:
 381 0174 00100240 		.word	1073876992
 382 0178 00005555 		.word	1431633920
 383              		.cfi_endproc
 384              	.LFE6:
 386              		.align	1
 387              		.global	ascii_read_data
 388              		.syntax unified
 389              		.code	16
 390              		.thumb_func
 391              		.fpu softvfp
 393              	ascii_read_data:
 394              	.LFB7:
  60:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 
  61:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** unsigned char ascii_read_data(void){
 395              		.loc 1 61 0
 396              		.cfi_startproc
 397              		@ args = 0, pretend = 0, frame = 8
 398              		@ frame_needed = 1, uses_anonymous_args = 0
 399 017c 90B5     		push	{r4, r7, lr}
 400              		.cfi_def_cfa_offset 12
 401              		.cfi_offset 4, -12
 402              		.cfi_offset 7, -8
 403              		.cfi_offset 14, -4
 404 017e 83B0     		sub	sp, sp, #12
 405              		.cfi_def_cfa_offset 24
 406 0180 00AF     		add	r7, sp, #0
 407              		.cfi_def_cfa_register 7
  62:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 	*portModerE = (*portModerE & 0x0000FFFF);
 408              		.loc 1 62 0
 409 0182 0E4B     		ldr	r3, .L22
 410 0184 1A68     		ldr	r2, [r3]
 411 0186 0D4B     		ldr	r3, .L22
 412 0188 1204     		lsls	r2, r2, #16
 413 018a 120C     		lsrs	r2, r2, #16
 414 018c 1A60     		str	r2, [r3]
  63:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 	ascii_ctrl_bit_set(B_RS);
 415              		.loc 1 63 0
 416 018e 0120     		movs	r0, #1
 417 0190 FFF7FEFF 		bl	ascii_ctrl_bit_set
  64:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 	ascii_ctrl_bit_set(B_RW);
 418              		.loc 1 64 0
 419 0194 0220     		movs	r0, #2
 420 0196 FFF7FEFF 		bl	ascii_ctrl_bit_set
  65:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 	unsigned char rv = ascii_read_controller();
 421              		.loc 1 65 0
 422 019a FC1D     		adds	r4, r7, #7
 423 019c FFF7FEFF 		bl	ascii_read_controller
 424 01a0 0300     		movs	r3, r0
 425 01a2 2370     		strb	r3, [r4]
  66:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 	*portModerE = (*portModerE | 0x55550000);
 426              		.loc 1 66 0
 427 01a4 054B     		ldr	r3, .L22
 428 01a6 1A68     		ldr	r2, [r3]
 429 01a8 044B     		ldr	r3, .L22
 430 01aa 0549     		ldr	r1, .L22+4
 431 01ac 0A43     		orrs	r2, r1
 432 01ae 1A60     		str	r2, [r3]
  67:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 	return rv;
 433              		.loc 1 67 0
 434 01b0 FB1D     		adds	r3, r7, #7
 435 01b2 1B78     		ldrb	r3, [r3]
  68:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** }
 436              		.loc 1 68 0
 437 01b4 1800     		movs	r0, r3
 438 01b6 BD46     		mov	sp, r7
 439 01b8 03B0     		add	sp, sp, #12
 440              		@ sp needed
 441 01ba 90BD     		pop	{r4, r7, pc}
 442              	.L23:
 443              		.align	2
 444              	.L22:
 445 01bc 00100240 		.word	1073876992
 446 01c0 00005555 		.word	1431633920
 447              		.cfi_endproc
 448              	.LFE7:
 450              		.align	1
 451              		.global	ascii_init
 452              		.syntax unified
 453              		.code	16
 454              		.thumb_func
 455              		.fpu softvfp
 457              	ascii_init:
 458              	.LFB8:
  69:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 
  70:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** void ascii_init(void){
 459              		.loc 1 70 0
 460              		.cfi_startproc
 461              		@ args = 0, pretend = 0, frame = 0
 462              		@ frame_needed = 1, uses_anonymous_args = 0
 463 01c4 80B5     		push	{r7, lr}
 464              		.cfi_def_cfa_offset 8
 465              		.cfi_offset 7, -8
 466              		.cfi_offset 14, -4
 467 01c6 00AF     		add	r7, sp, #0
 468              		.cfi_def_cfa_register 7
  71:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 	while((ascii_read_status() & 0x80) == 0x80){}
 469              		.loc 1 71 0
 470 01c8 C046     		nop
 471              	.L25:
 472              		.loc 1 71 0 is_stmt 0 discriminator 1
 473 01ca FFF7FEFF 		bl	ascii_read_status
 474 01ce 0300     		movs	r3, r0
 475 01d0 1A00     		movs	r2, r3
 476 01d2 8023     		movs	r3, #128
 477 01d4 1340     		ands	r3, r2
 478 01d6 802B     		cmp	r3, #128
 479 01d8 F7D0     		beq	.L25
  72:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 	//ascii_read_status();
  73:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 	delay_mikro(8);
 480              		.loc 1 73 0 is_stmt 1
 481 01da 0820     		movs	r0, #8
 482 01dc FFF7FEFF 		bl	delay_mikro
  74:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 	ascii_write_cmd(0x38);
 483              		.loc 1 74 0
 484 01e0 3820     		movs	r0, #56
 485 01e2 FFF7FEFF 		bl	ascii_write_cmd
  75:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 	delay_mikro(40);
 486              		.loc 1 75 0
 487 01e6 2820     		movs	r0, #40
 488 01e8 FFF7FEFF 		bl	delay_mikro
  76:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 	ascii_write_cmd(0xE);
 489              		.loc 1 76 0
 490 01ec 0E20     		movs	r0, #14
 491 01ee FFF7FEFF 		bl	ascii_write_cmd
  77:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 	delay_mikro(40);
 492              		.loc 1 77 0
 493 01f2 2820     		movs	r0, #40
 494 01f4 FFF7FEFF 		bl	delay_mikro
  78:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 	ascii_write_cmd(0x4);
 495              		.loc 1 78 0
 496 01f8 0420     		movs	r0, #4
 497 01fa FFF7FEFF 		bl	ascii_write_cmd
  79:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 	delay_mikro(40);
 498              		.loc 1 79 0
 499 01fe 2820     		movs	r0, #40
 500 0200 FFF7FEFF 		bl	delay_mikro
  80:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** }
 501              		.loc 1 80 0
 502 0204 C046     		nop
 503 0206 BD46     		mov	sp, r7
 504              		@ sp needed
 505 0208 80BD     		pop	{r7, pc}
 506              		.cfi_endproc
 507              	.LFE8:
 509              		.align	1
 510              		.global	ascii_write_char
 511              		.syntax unified
 512              		.code	16
 513              		.thumb_func
 514              		.fpu softvfp
 516              	ascii_write_char:
 517              	.LFB9:
  81:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 
  82:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** void ascii_write_char(char c){
 518              		.loc 1 82 0
 519              		.cfi_startproc
 520              		@ args = 0, pretend = 0, frame = 8
 521              		@ frame_needed = 1, uses_anonymous_args = 0
 522 020a 80B5     		push	{r7, lr}
 523              		.cfi_def_cfa_offset 8
 524              		.cfi_offset 7, -8
 525              		.cfi_offset 14, -4
 526 020c 82B0     		sub	sp, sp, #8
 527              		.cfi_def_cfa_offset 16
 528 020e 00AF     		add	r7, sp, #0
 529              		.cfi_def_cfa_register 7
 530 0210 0200     		movs	r2, r0
 531 0212 FB1D     		adds	r3, r7, #7
 532 0214 1A70     		strb	r2, [r3]
  83:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 	while((ascii_read_status() & 0x80) == 0x80){}
 533              		.loc 1 83 0
 534 0216 C046     		nop
 535              	.L27:
 536              		.loc 1 83 0 is_stmt 0 discriminator 1
 537 0218 FFF7FEFF 		bl	ascii_read_status
 538 021c 0300     		movs	r3, r0
 539 021e 1A00     		movs	r2, r3
 540 0220 8023     		movs	r3, #128
 541 0222 1340     		ands	r3, r2
 542 0224 802B     		cmp	r3, #128
 543 0226 F7D0     		beq	.L27
  84:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 	delay_mikro(8);
 544              		.loc 1 84 0 is_stmt 1
 545 0228 0820     		movs	r0, #8
 546 022a FFF7FEFF 		bl	delay_mikro
  85:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 	ascii_write_data(c);
 547              		.loc 1 85 0
 548 022e FB1D     		adds	r3, r7, #7
 549 0230 1B78     		ldrb	r3, [r3]
 550 0232 1800     		movs	r0, r3
 551 0234 FFF7FEFF 		bl	ascii_write_data
  86:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 	delay_mikro(43);
 552              		.loc 1 86 0
 553 0238 2B20     		movs	r0, #43
 554 023a FFF7FEFF 		bl	delay_mikro
  87:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** }
 555              		.loc 1 87 0
 556 023e C046     		nop
 557 0240 BD46     		mov	sp, r7
 558 0242 02B0     		add	sp, sp, #8
 559              		@ sp needed
 560 0244 80BD     		pop	{r7, pc}
 561              		.cfi_endproc
 562              	.LFE9:
 564              		.align	1
 565              		.global	ascii_gotoxy
 566              		.syntax unified
 567              		.code	16
 568              		.thumb_func
 569              		.fpu softvfp
 571              	ascii_gotoxy:
 572              	.LFB10:
  88:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 
  89:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** void ascii_gotoxy(int x, int y){
 573              		.loc 1 89 0
 574              		.cfi_startproc
 575              		@ args = 0, pretend = 0, frame = 16
 576              		@ frame_needed = 1, uses_anonymous_args = 0
 577 0246 80B5     		push	{r7, lr}
 578              		.cfi_def_cfa_offset 8
 579              		.cfi_offset 7, -8
 580              		.cfi_offset 14, -4
 581 0248 84B0     		sub	sp, sp, #16
 582              		.cfi_def_cfa_offset 24
 583 024a 00AF     		add	r7, sp, #0
 584              		.cfi_def_cfa_register 7
 585 024c 7860     		str	r0, [r7, #4]
 586 024e 3960     		str	r1, [r7]
  90:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 	int adress = (x - 1 + (y-1)*64);
 587              		.loc 1 90 0
 588 0250 7B68     		ldr	r3, [r7, #4]
 589 0252 5A1E     		subs	r2, r3, #1
 590 0254 3B68     		ldr	r3, [r7]
 591 0256 013B     		subs	r3, r3, #1
 592 0258 9B01     		lsls	r3, r3, #6
 593 025a D318     		adds	r3, r2, r3
 594 025c FB60     		str	r3, [r7, #12]
  91:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 	ascii_write_cmd(0x80 | adress);
 595              		.loc 1 91 0
 596 025e FB68     		ldr	r3, [r7, #12]
 597 0260 5BB2     		sxtb	r3, r3
 598 0262 8022     		movs	r2, #128
 599 0264 5242     		rsbs	r2, r2, #0
 600 0266 1343     		orrs	r3, r2
 601 0268 5BB2     		sxtb	r3, r3
 602 026a DBB2     		uxtb	r3, r3
 603 026c 1800     		movs	r0, r3
 604 026e FFF7FEFF 		bl	ascii_write_cmd
  92:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** }
 605              		.loc 1 92 0
 606 0272 C046     		nop
 607 0274 BD46     		mov	sp, r7
 608 0276 04B0     		add	sp, sp, #16
 609              		@ sp needed
 610 0278 80BD     		pop	{r7, pc}
 611              		.cfi_endproc
 612              	.LFE10:
 614              		.align	1
 615              		.global	ascii_init_app
 616              		.syntax unified
 617              		.code	16
 618              		.thumb_func
 619              		.fpu softvfp
 621              	ascii_init_app:
 622              	.LFB11:
  93:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 
  94:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** void ascii_init_app(void){
 623              		.loc 1 94 0
 624              		.cfi_startproc
 625              		@ args = 0, pretend = 0, frame = 0
 626              		@ frame_needed = 1, uses_anonymous_args = 0
 627 027a 80B5     		push	{r7, lr}
 628              		.cfi_def_cfa_offset 8
 629              		.cfi_offset 7, -8
 630              		.cfi_offset 14, -4
 631 027c 00AF     		add	r7, sp, #0
 632              		.cfi_def_cfa_register 7
  95:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 	*portModerE = 0x55555555;
 633              		.loc 1 95 0
 634 027e 064B     		ldr	r3, .L30
 635 0280 064A     		ldr	r2, .L30+4
 636 0282 1A60     		str	r2, [r3]
  96:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 	*portOtyperE = 0x0000;
 637              		.loc 1 96 0
 638 0284 064B     		ldr	r3, .L30+8
 639 0286 0022     		movs	r2, #0
 640 0288 1A80     		strh	r2, [r3]
  97:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 	*portOspeedrE = 0x0000;
 641              		.loc 1 97 0
 642 028a 064B     		ldr	r3, .L30+12
 643 028c 0022     		movs	r2, #0
 644 028e 1A60     		str	r2, [r3]
  98:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** 
  99:C:/Users/samue/Documents/MopLab/Moppen\ascii_drivers.c **** }...
 645              		.loc 1 99 0
 646 0290 C046     		nop
 647 0292 BD46     		mov	sp, r7
 648              		@ sp needed
 649 0294 80BD     		pop	{r7, pc}
 650              	.L31:
 651 0296 C046     		.align	2
 652              	.L30:
 653 0298 00100240 		.word	1073876992
 654 029c 55555555 		.word	1431655765
 655 02a0 04100240 		.word	1073876996
 656 02a4 08100240 		.word	1073877000
 657              		.cfi_endproc
 658              	.LFE11:
 660              	.Letext0:
 661              		.file 2 "C:/Users/samue/Documents/MopLab/Moppen/portDeclare.h"
