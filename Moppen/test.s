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
  11              		.file	"ponglogic.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.align	1
  16              		.global	pong_init
  17              		.syntax unified
  18              		.code	16
  19              		.thumb_func
  20              		.fpu softvfp
  22              	pong_init:
  23              	.LFB0:
  24              		.file 1 "C:/Users/samue/Documents/MopLab/Moppen/ponglogic.c"
   1:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** 
   2:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** #include "delay.h"
   3:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** #include "ponglogic.h"
   4:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** #include "portDeclare.h"
   5:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** 
   6:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** 
   7:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** 
   8:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** void pong_init(){
  25              		.loc 1 8 0
  26              		.cfi_startproc
  27              		@ args = 0, pretend = 0, frame = 0
  28              		@ frame_needed = 1, uses_anonymous_args = 0
  29 0000 80B5     		push	{r7, lr}
  30              		.cfi_def_cfa_offset 8
  31              		.cfi_offset 7, -8
  32              		.cfi_offset 14, -4
  33 0002 00AF     		add	r7, sp, #0
  34              		.cfi_def_cfa_register 7
   9:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** 	
  10:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** }
  35              		.loc 1 10 0
  36 0004 C046     		nop
  37 0006 BD46     		mov	sp, r7
  38              		@ sp needed
  39 0008 80BD     		pop	{r7, pc}
  40              		.cfi_endproc
  41              	.LFE0:
  43              		.align	1
  44              		.global	set_object_speed
  45              		.syntax unified
  46              		.code	16
  47              		.thumb_func
  48              		.fpu softvfp
  50              	set_object_speed:
  51              	.LFB1:
  11:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** 
  12:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** void set_object_speed(pobject o, int speedx, int speedy){
  52              		.loc 1 12 0
  53              		.cfi_startproc
  54              		@ args = 0, pretend = 0, frame = 16
  55              		@ frame_needed = 1, uses_anonymous_args = 0
  56 000a 80B5     		push	{r7, lr}
  57              		.cfi_def_cfa_offset 8
  58              		.cfi_offset 7, -8
  59              		.cfi_offset 14, -4
  60 000c 84B0     		sub	sp, sp, #16
  61              		.cfi_def_cfa_offset 24
  62 000e 00AF     		add	r7, sp, #0
  63              		.cfi_def_cfa_register 7
  64 0010 F860     		str	r0, [r7, #12]
  65 0012 B960     		str	r1, [r7, #8]
  66 0014 7A60     		str	r2, [r7, #4]
  13:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** 	o->dirx = speedx;
  67              		.loc 1 13 0
  68 0016 FB68     		ldr	r3, [r7, #12]
  69 0018 BA68     		ldr	r2, [r7, #8]
  70 001a 5A60     		str	r2, [r3, #4]
  14:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** 	o->diry = speedy;
  71              		.loc 1 14 0
  72 001c FB68     		ldr	r3, [r7, #12]
  73 001e 7A68     		ldr	r2, [r7, #4]
  74 0020 9A60     		str	r2, [r3, #8]
  15:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** }
  75              		.loc 1 15 0
  76 0022 C046     		nop
  77 0024 BD46     		mov	sp, r7
  78 0026 04B0     		add	sp, sp, #16
  79              		@ sp needed
  80 0028 80BD     		pop	{r7, pc}
  81              		.cfi_endproc
  82              	.LFE1:
  84              		.align	1
  85              		.global	pong_set_position
  86              		.syntax unified
  87              		.code	16
  88              		.thumb_func
  89              		.fpu softvfp
  91              	pong_set_position:
  92              	.LFB2:
  16:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** 
  17:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** void pong_set_position(pobject o, int posx, int posy){
  93              		.loc 1 17 0
  94              		.cfi_startproc
  95              		@ args = 0, pretend = 0, frame = 16
  96              		@ frame_needed = 1, uses_anonymous_args = 0
  97 002a 80B5     		push	{r7, lr}
  98              		.cfi_def_cfa_offset 8
  99              		.cfi_offset 7, -8
 100              		.cfi_offset 14, -4
 101 002c 84B0     		sub	sp, sp, #16
 102              		.cfi_def_cfa_offset 24
 103 002e 00AF     		add	r7, sp, #0
 104              		.cfi_def_cfa_register 7
 105 0030 F860     		str	r0, [r7, #12]
 106 0032 B960     		str	r1, [r7, #8]
 107 0034 7A60     		str	r2, [r7, #4]
  18:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** 	o->posx = posx;
 108              		.loc 1 18 0
 109 0036 FB68     		ldr	r3, [r7, #12]
 110 0038 BA68     		ldr	r2, [r7, #8]
 111 003a DA60     		str	r2, [r3, #12]
  19:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** 	o->posy = posy;
 112              		.loc 1 19 0
 113 003c FB68     		ldr	r3, [r7, #12]
 114 003e 7A68     		ldr	r2, [r7, #4]
 115 0040 1A61     		str	r2, [r3, #16]
  20:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** }
 116              		.loc 1 20 0
 117 0042 C046     		nop
 118 0044 BD46     		mov	sp, r7
 119 0046 04B0     		add	sp, sp, #16
 120              		@ sp needed
 121 0048 80BD     		pop	{r7, pc}
 122              		.cfi_endproc
 123              	.LFE2:
 125              		.align	1
 126              		.global	draw_object
 127              		.syntax unified
 128              		.code	16
 129              		.thumb_func
 130              		.fpu softvfp
 132              	draw_object:
 133              	.LFB3:
  21:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** 
  22:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** void draw_object(object* o){
 134              		.loc 1 22 0
 135              		.cfi_startproc
 136              		@ args = 0, pretend = 0, frame = 24
 137              		@ frame_needed = 1, uses_anonymous_args = 0
 138 004a 80B5     		push	{r7, lr}
 139              		.cfi_def_cfa_offset 8
 140              		.cfi_offset 7, -8
 141              		.cfi_offset 14, -4
 142 004c 86B0     		sub	sp, sp, #24
 143              		.cfi_def_cfa_offset 32
 144 004e 00AF     		add	r7, sp, #0
 145              		.cfi_def_cfa_register 7
 146 0050 7860     		str	r0, [r7, #4]
 147              	.LBB2:
  23:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** 	for (int i=0; i < o->geo->numpoints; i++){
 148              		.loc 1 23 0
 149 0052 0023     		movs	r3, #0
 150 0054 7B61     		str	r3, [r7, #20]
 151 0056 20E0     		b	.L5
 152              	.L6:
 153              	.LBB3:
  24:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** 		int drawx = o->posx + o->geo->px[i].x;
 154              		.loc 1 24 0 discriminator 3
 155 0058 7B68     		ldr	r3, [r7, #4]
 156 005a DA68     		ldr	r2, [r3, #12]
 157 005c 7B68     		ldr	r3, [r7, #4]
 158 005e 1968     		ldr	r1, [r3]
 159 0060 7B69     		ldr	r3, [r7, #20]
 160 0062 0433     		adds	r3, r3, #4
 161 0064 5B00     		lsls	r3, r3, #1
 162 0066 CB18     		adds	r3, r1, r3
 163 0068 0433     		adds	r3, r3, #4
 164 006a 1B78     		ldrb	r3, [r3]
 165 006c D318     		adds	r3, r2, r3
 166 006e 3B61     		str	r3, [r7, #16]
  25:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** 		int drawy = o->posy + o->geo->px[i].y;
 167              		.loc 1 25 0 discriminator 3
 168 0070 7B68     		ldr	r3, [r7, #4]
 169 0072 1A69     		ldr	r2, [r3, #16]
 170 0074 7B68     		ldr	r3, [r7, #4]
 171 0076 1968     		ldr	r1, [r3]
 172 0078 7B69     		ldr	r3, [r7, #20]
 173 007a 0433     		adds	r3, r3, #4
 174 007c 5B00     		lsls	r3, r3, #1
 175 007e CB18     		adds	r3, r1, r3
 176 0080 0533     		adds	r3, r3, #5
 177 0082 1B78     		ldrb	r3, [r3]
 178 0084 D318     		adds	r3, r2, r3
 179 0086 FB60     		str	r3, [r7, #12]
  26:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** 		graphic_pixel(drawx, drawy,1);
 180              		.loc 1 26 0 discriminator 3
 181 0088 F968     		ldr	r1, [r7, #12]
 182 008a 3B69     		ldr	r3, [r7, #16]
 183 008c 0122     		movs	r2, #1
 184 008e 1800     		movs	r0, r3
 185 0090 FFF7FEFF 		bl	graphic_pixel
 186              	.LBE3:
  23:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** 		int drawx = o->posx + o->geo->px[i].x;
 187              		.loc 1 23 0 discriminator 3
 188 0094 7B69     		ldr	r3, [r7, #20]
 189 0096 0133     		adds	r3, r3, #1
 190 0098 7B61     		str	r3, [r7, #20]
 191              	.L5:
  23:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** 		int drawx = o->posx + o->geo->px[i].x;
 192              		.loc 1 23 0 is_stmt 0 discriminator 1
 193 009a 7B68     		ldr	r3, [r7, #4]
 194 009c 1B68     		ldr	r3, [r3]
 195 009e 1B68     		ldr	r3, [r3]
 196 00a0 7A69     		ldr	r2, [r7, #20]
 197 00a2 9A42     		cmp	r2, r3
 198 00a4 D8DB     		blt	.L6
 199              	.LBE2:
  27:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** 	}
  28:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** }
 200              		.loc 1 28 0 is_stmt 1
 201 00a6 C046     		nop
 202 00a8 BD46     		mov	sp, r7
 203 00aa 06B0     		add	sp, sp, #24
 204              		@ sp needed
 205 00ac 80BD     		pop	{r7, pc}
 206              		.cfi_endproc
 207              	.LFE3:
 209              		.align	1
 210              		.global	clear_object
 211              		.syntax unified
 212              		.code	16
 213              		.thumb_func
 214              		.fpu softvfp
 216              	clear_object:
 217              	.LFB4:
  29:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** 
  30:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** void clear_object(object* o){
 218              		.loc 1 30 0
 219              		.cfi_startproc
 220              		@ args = 0, pretend = 0, frame = 16
 221              		@ frame_needed = 1, uses_anonymous_args = 0
 222 00ae 80B5     		push	{r7, lr}
 223              		.cfi_def_cfa_offset 8
 224              		.cfi_offset 7, -8
 225              		.cfi_offset 14, -4
 226 00b0 84B0     		sub	sp, sp, #16
 227              		.cfi_def_cfa_offset 24
 228 00b2 00AF     		add	r7, sp, #0
 229              		.cfi_def_cfa_register 7
 230 00b4 7860     		str	r0, [r7, #4]
 231              	.LBB4:
  31:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** 	for (int i=0; i < o->geo->numpoints; i++){
 232              		.loc 1 31 0
 233 00b6 0023     		movs	r3, #0
 234 00b8 FB60     		str	r3, [r7, #12]
 235 00ba 1CE0     		b	.L8
 236              	.L9:
 237              	.LBB5:
  32:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** 		graphic_pixel(o->posx + o->geo->px[i].x, o->posy + o->geo->px[i].y,0);
 238              		.loc 1 32 0 discriminator 3
 239 00bc 7B68     		ldr	r3, [r7, #4]
 240 00be DA68     		ldr	r2, [r3, #12]
 241 00c0 7B68     		ldr	r3, [r7, #4]
 242 00c2 1968     		ldr	r1, [r3]
 243 00c4 FB68     		ldr	r3, [r7, #12]
 244 00c6 0433     		adds	r3, r3, #4
 245 00c8 5B00     		lsls	r3, r3, #1
 246 00ca CB18     		adds	r3, r1, r3
 247 00cc 0433     		adds	r3, r3, #4
 248 00ce 1B78     		ldrb	r3, [r3]
 249 00d0 D018     		adds	r0, r2, r3
 250 00d2 7B68     		ldr	r3, [r7, #4]
 251 00d4 1A69     		ldr	r2, [r3, #16]
 252 00d6 7B68     		ldr	r3, [r7, #4]
 253 00d8 1968     		ldr	r1, [r3]
 254 00da FB68     		ldr	r3, [r7, #12]
 255 00dc 0433     		adds	r3, r3, #4
 256 00de 5B00     		lsls	r3, r3, #1
 257 00e0 CB18     		adds	r3, r1, r3
 258 00e2 0533     		adds	r3, r3, #5
 259 00e4 1B78     		ldrb	r3, [r3]
 260 00e6 D318     		adds	r3, r2, r3
 261 00e8 0022     		movs	r2, #0
 262 00ea 1900     		movs	r1, r3
 263 00ec FFF7FEFF 		bl	graphic_pixel
 264              	.LBE5:
  31:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** 	for (int i=0; i < o->geo->numpoints; i++){
 265              		.loc 1 31 0 discriminator 3
 266 00f0 FB68     		ldr	r3, [r7, #12]
 267 00f2 0133     		adds	r3, r3, #1
 268 00f4 FB60     		str	r3, [r7, #12]
 269              	.L8:
  31:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** 	for (int i=0; i < o->geo->numpoints; i++){
 270              		.loc 1 31 0 is_stmt 0 discriminator 1
 271 00f6 7B68     		ldr	r3, [r7, #4]
 272 00f8 1B68     		ldr	r3, [r3]
 273 00fa 1B68     		ldr	r3, [r3]
 274 00fc FA68     		ldr	r2, [r7, #12]
 275 00fe 9A42     		cmp	r2, r3
 276 0100 DCDB     		blt	.L9
 277              	.LBE4:
  33:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** 	}
  34:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** }
 278              		.loc 1 34 0 is_stmt 1
 279 0102 C046     		nop
 280 0104 BD46     		mov	sp, r7
 281 0106 04B0     		add	sp, sp, #16
 282              		@ sp needed
 283 0108 80BD     		pop	{r7, pc}
 284              		.cfi_endproc
 285              	.LFE4:
 287              		.align	1
 288              		.global	move_object
 289              		.syntax unified
 290              		.code	16
 291              		.thumb_func
 292              		.fpu softvfp
 294              	move_object:
 295              	.LFB5:
  35:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** 
  36:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** void move_object(object* o){
 296              		.loc 1 36 0
 297              		.cfi_startproc
 298              		@ args = 0, pretend = 0, frame = 8
 299              		@ frame_needed = 1, uses_anonymous_args = 0
 300 010a 80B5     		push	{r7, lr}
 301              		.cfi_def_cfa_offset 8
 302              		.cfi_offset 7, -8
 303              		.cfi_offset 14, -4
 304 010c 82B0     		sub	sp, sp, #8
 305              		.cfi_def_cfa_offset 16
 306 010e 00AF     		add	r7, sp, #0
 307              		.cfi_def_cfa_register 7
 308 0110 7860     		str	r0, [r7, #4]
  37:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** 	clear_object(o);
 309              		.loc 1 37 0
 310 0112 7B68     		ldr	r3, [r7, #4]
 311 0114 1800     		movs	r0, r3
 312 0116 FFF7FEFF 		bl	clear_object
  38:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** 	o->posx = o->posx + o->dirx;
 313              		.loc 1 38 0
 314 011a 7B68     		ldr	r3, [r7, #4]
 315 011c DA68     		ldr	r2, [r3, #12]
 316 011e 7B68     		ldr	r3, [r7, #4]
 317 0120 5B68     		ldr	r3, [r3, #4]
 318 0122 D218     		adds	r2, r2, r3
 319 0124 7B68     		ldr	r3, [r7, #4]
 320 0126 DA60     		str	r2, [r3, #12]
  39:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** 	o->posy = o->posy + o->diry;
 321              		.loc 1 39 0
 322 0128 7B68     		ldr	r3, [r7, #4]
 323 012a 1A69     		ldr	r2, [r3, #16]
 324 012c 7B68     		ldr	r3, [r7, #4]
 325 012e 9B68     		ldr	r3, [r3, #8]
 326 0130 D218     		adds	r2, r2, r3
 327 0132 7B68     		ldr	r3, [r7, #4]
 328 0134 1A61     		str	r2, [r3, #16]
  40:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** 	if(o->posx <= 0 | o->posx >= 124){
 329              		.loc 1 40 0
 330 0136 7B68     		ldr	r3, [r7, #4]
 331 0138 DB68     		ldr	r3, [r3, #12]
 332 013a 5A1E     		subs	r2, r3, #1
 333 013c 1343     		orrs	r3, r2
 334 013e DB0F     		lsrs	r3, r3, #31
 335 0140 DAB2     		uxtb	r2, r3
 336 0142 7B68     		ldr	r3, [r7, #4]
 337 0144 DB68     		ldr	r3, [r3, #12]
 338 0146 0121     		movs	r1, #1
 339 0148 7B2B     		cmp	r3, #123
 340 014a 01DC     		bgt	.L11
 341 014c 0023     		movs	r3, #0
 342 014e 191C     		adds	r1, r3, #0
 343              	.L11:
 344 0150 CBB2     		uxtb	r3, r1
 345 0152 1343     		orrs	r3, r2
 346 0154 DBB2     		uxtb	r3, r3
 347 0156 002B     		cmp	r3, #0
 348 0158 04D0     		beq	.L12
  41:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** 			o->dirx = -o->dirx;
 349              		.loc 1 41 0
 350 015a 7B68     		ldr	r3, [r7, #4]
 351 015c 5B68     		ldr	r3, [r3, #4]
 352 015e 5A42     		rsbs	r2, r3, #0
 353 0160 7B68     		ldr	r3, [r7, #4]
 354 0162 5A60     		str	r2, [r3, #4]
 355              	.L12:
  42:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** 	}
  43:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** 	if(o->posy <= 0 | o->posy >= 60){
 356              		.loc 1 43 0
 357 0164 7B68     		ldr	r3, [r7, #4]
 358 0166 1B69     		ldr	r3, [r3, #16]
 359 0168 5A1E     		subs	r2, r3, #1
 360 016a 1343     		orrs	r3, r2
 361 016c DB0F     		lsrs	r3, r3, #31
 362 016e DAB2     		uxtb	r2, r3
 363 0170 7B68     		ldr	r3, [r7, #4]
 364 0172 1B69     		ldr	r3, [r3, #16]
 365 0174 0121     		movs	r1, #1
 366 0176 3B2B     		cmp	r3, #59
 367 0178 01DC     		bgt	.L13
 368 017a 0023     		movs	r3, #0
 369 017c 191C     		adds	r1, r3, #0
 370              	.L13:
 371 017e CBB2     		uxtb	r3, r1
 372 0180 1343     		orrs	r3, r2
 373 0182 DBB2     		uxtb	r3, r3
 374 0184 002B     		cmp	r3, #0
 375 0186 04D0     		beq	.L14
  44:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** 		o->diry = -o->diry;
 376              		.loc 1 44 0
 377 0188 7B68     		ldr	r3, [r7, #4]
 378 018a 9B68     		ldr	r3, [r3, #8]
 379 018c 5A42     		rsbs	r2, r3, #0
 380 018e 7B68     		ldr	r3, [r7, #4]
 381 0190 9A60     		str	r2, [r3, #8]
 382              	.L14:
  45:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** 	}
  46:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** 	draw_object(o);
 383              		.loc 1 46 0
 384 0192 7B68     		ldr	r3, [r7, #4]
 385 0194 1800     		movs	r0, r3
 386 0196 FFF7FEFF 		bl	draw_object
  47:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** }
 387              		.loc 1 47 0
 388 019a C046     		nop
 389 019c BD46     		mov	sp, r7
 390 019e 02B0     		add	sp, sp, #8
 391              		@ sp needed
 392 01a0 80BD     		pop	{r7, pc}
 393              		.cfi_endproc
 394              	.LFE5:
 396              		.align	1
 397              		.global	pong_inc_playerScore
 398              		.syntax unified
 399              		.code	16
 400              		.thumb_func
 401              		.fpu softvfp
 403              	pong_inc_playerScore:
 404              	.LFB6:
  48:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** 
  49:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** void pong_inc_playerScore(char* playerScore, char player){
 405              		.loc 1 49 0
 406              		.cfi_startproc
 407              		@ args = 0, pretend = 0, frame = 16
 408              		@ frame_needed = 1, uses_anonymous_args = 0
 409 01a2 80B5     		push	{r7, lr}
 410              		.cfi_def_cfa_offset 8
 411              		.cfi_offset 7, -8
 412              		.cfi_offset 14, -4
 413 01a4 84B0     		sub	sp, sp, #16
 414              		.cfi_def_cfa_offset 24
 415 01a6 00AF     		add	r7, sp, #0
 416              		.cfi_def_cfa_register 7
 417 01a8 7860     		str	r0, [r7, #4]
 418 01aa 0A00     		movs	r2, r1
 419 01ac FB1C     		adds	r3, r7, #3
 420 01ae 1A70     		strb	r2, [r3]
  50:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** 	ascii_init();
 421              		.loc 1 50 0
 422 01b0 FFF7FEFF 		bl	ascii_init
  51:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** 	playerScore[player-1]++;
 423              		.loc 1 51 0
 424 01b4 FB1C     		adds	r3, r7, #3
 425 01b6 1B78     		ldrb	r3, [r3]
 426 01b8 013B     		subs	r3, r3, #1
 427 01ba 7A68     		ldr	r2, [r7, #4]
 428 01bc D318     		adds	r3, r2, r3
 429 01be 1A78     		ldrb	r2, [r3]
 430 01c0 0132     		adds	r2, r2, #1
 431 01c2 D2B2     		uxtb	r2, r2
 432 01c4 1A70     		strb	r2, [r3]
  52:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** 	ascii_gotoxy(10*player,1*player);
 433              		.loc 1 52 0
 434 01c6 FB1C     		adds	r3, r7, #3
 435 01c8 1A78     		ldrb	r2, [r3]
 436 01ca 1300     		movs	r3, r2
 437 01cc 9B00     		lsls	r3, r3, #2
 438 01ce 9B18     		adds	r3, r3, r2
 439 01d0 5B00     		lsls	r3, r3, #1
 440 01d2 1A00     		movs	r2, r3
 441 01d4 FB1C     		adds	r3, r7, #3
 442 01d6 1B78     		ldrb	r3, [r3]
 443 01d8 1900     		movs	r1, r3
 444 01da 1000     		movs	r0, r2
 445 01dc FFF7FEFF 		bl	ascii_gotoxy
  53:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** 	char newScore = playerScore[player-1]+47;
 446              		.loc 1 53 0
 447 01e0 FB1C     		adds	r3, r7, #3
 448 01e2 1B78     		ldrb	r3, [r3]
 449 01e4 013B     		subs	r3, r3, #1
 450 01e6 7A68     		ldr	r2, [r7, #4]
 451 01e8 D318     		adds	r3, r2, r3
 452 01ea 1A78     		ldrb	r2, [r3]
 453 01ec 0F21     		movs	r1, #15
 454 01ee 7B18     		adds	r3, r7, r1
 455 01f0 2F32     		adds	r2, r2, #47
 456 01f2 1A70     		strb	r2, [r3]
  54:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** 	ascii_write_char(newScore);
 457              		.loc 1 54 0
 458 01f4 7B18     		adds	r3, r7, r1
 459 01f6 1B78     		ldrb	r3, [r3]
 460 01f8 1800     		movs	r0, r3
 461 01fa FFF7FEFF 		bl	ascii_write_char
  55:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** 	graphic_initialize();
 462              		.loc 1 55 0
 463 01fe FFF7FEFF 		bl	graphic_initialize
  56:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** }
 464              		.loc 1 56 0
 465 0202 C046     		nop
 466 0204 BD46     		mov	sp, r7
 467 0206 04B0     		add	sp, sp, #16
 468              		@ sp needed
 469 0208 80BD     		pop	{r7, pc}
 470              		.cfi_endproc
 471              	.LFE6:
 473              	.Letext0:
 474              		.file 2 "C:/Users/samue/Documents/MopLab/Moppen/ponglogic.h"
