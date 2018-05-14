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
  40:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** 	
  41:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** 	if(o->posy <= 0 | o->posy >= 60){
 329              		.loc 1 41 0
 330 0136 7B68     		ldr	r3, [r7, #4]
 331 0138 1B69     		ldr	r3, [r3, #16]
 332 013a 5A1E     		subs	r2, r3, #1
 333 013c 1343     		orrs	r3, r2
 334 013e DB0F     		lsrs	r3, r3, #31
 335 0140 DAB2     		uxtb	r2, r3
 336 0142 7B68     		ldr	r3, [r7, #4]
 337 0144 1B69     		ldr	r3, [r3, #16]
 338 0146 0121     		movs	r1, #1
 339 0148 3B2B     		cmp	r3, #59
 340 014a 01DC     		bgt	.L11
 341 014c 0023     		movs	r3, #0
 342 014e 191C     		adds	r1, r3, #0
 343              	.L11:
 344 0150 CBB2     		uxtb	r3, r1
 345 0152 1343     		orrs	r3, r2
 346 0154 DBB2     		uxtb	r3, r3
 347 0156 002B     		cmp	r3, #0
 348 0158 04D0     		beq	.L12
  42:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** 		o->diry = -o->diry;
 349              		.loc 1 42 0
 350 015a 7B68     		ldr	r3, [r7, #4]
 351 015c 9B68     		ldr	r3, [r3, #8]
 352 015e 5A42     		rsbs	r2, r3, #0
 353 0160 7B68     		ldr	r3, [r7, #4]
 354 0162 9A60     		str	r2, [r3, #8]
 355              	.L12:
  43:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** 	}
  44:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** 	draw_object(o);
 356              		.loc 1 44 0
 357 0164 7B68     		ldr	r3, [r7, #4]
 358 0166 1800     		movs	r0, r3
 359 0168 FFF7FEFF 		bl	draw_object
  45:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** }
 360              		.loc 1 45 0
 361 016c C046     		nop
 362 016e BD46     		mov	sp, r7
 363 0170 02B0     		add	sp, sp, #8
 364              		@ sp needed
 365 0172 80BD     		pop	{r7, pc}
 366              		.cfi_endproc
 367              	.LFE5:
 369              		.align	1
 370              		.global	pong_inc_playerScore
 371              		.syntax unified
 372              		.code	16
 373              		.thumb_func
 374              		.fpu softvfp
 376              	pong_inc_playerScore:
 377              	.LFB6:
  46:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** 
  47:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** void pong_inc_playerScore(char* playerScore, char player){
 378              		.loc 1 47 0
 379              		.cfi_startproc
 380              		@ args = 0, pretend = 0, frame = 16
 381              		@ frame_needed = 1, uses_anonymous_args = 0
 382 0174 80B5     		push	{r7, lr}
 383              		.cfi_def_cfa_offset 8
 384              		.cfi_offset 7, -8
 385              		.cfi_offset 14, -4
 386 0176 84B0     		sub	sp, sp, #16
 387              		.cfi_def_cfa_offset 24
 388 0178 00AF     		add	r7, sp, #0
 389              		.cfi_def_cfa_register 7
 390 017a 7860     		str	r0, [r7, #4]
 391 017c 0A00     		movs	r2, r1
 392 017e FB1C     		adds	r3, r7, #3
 393 0180 1A70     		strb	r2, [r3]
  48:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** 	ascii_init();
 394              		.loc 1 48 0
 395 0182 FFF7FEFF 		bl	ascii_init
  49:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** 	playerScore[player-1]++;
 396              		.loc 1 49 0
 397 0186 FB1C     		adds	r3, r7, #3
 398 0188 1B78     		ldrb	r3, [r3]
 399 018a 013B     		subs	r3, r3, #1
 400 018c 7A68     		ldr	r2, [r7, #4]
 401 018e D318     		adds	r3, r2, r3
 402 0190 1A78     		ldrb	r2, [r3]
 403 0192 0132     		adds	r2, r2, #1
 404 0194 D2B2     		uxtb	r2, r2
 405 0196 1A70     		strb	r2, [r3]
  50:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** 	ascii_gotoxy(10*player,1*player);
 406              		.loc 1 50 0
 407 0198 FB1C     		adds	r3, r7, #3
 408 019a 1A78     		ldrb	r2, [r3]
 409 019c 1300     		movs	r3, r2
 410 019e 9B00     		lsls	r3, r3, #2
 411 01a0 9B18     		adds	r3, r3, r2
 412 01a2 5B00     		lsls	r3, r3, #1
 413 01a4 1A00     		movs	r2, r3
 414 01a6 FB1C     		adds	r3, r7, #3
 415 01a8 1B78     		ldrb	r3, [r3]
 416 01aa 1900     		movs	r1, r3
 417 01ac 1000     		movs	r0, r2
 418 01ae FFF7FEFF 		bl	ascii_gotoxy
  51:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** 	char newScore = playerScore[player-1]+47;
 419              		.loc 1 51 0
 420 01b2 FB1C     		adds	r3, r7, #3
 421 01b4 1B78     		ldrb	r3, [r3]
 422 01b6 013B     		subs	r3, r3, #1
 423 01b8 7A68     		ldr	r2, [r7, #4]
 424 01ba D318     		adds	r3, r2, r3
 425 01bc 1A78     		ldrb	r2, [r3]
 426 01be 0F21     		movs	r1, #15
 427 01c0 7B18     		adds	r3, r7, r1
 428 01c2 2F32     		adds	r2, r2, #47
 429 01c4 1A70     		strb	r2, [r3]
  52:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** 	ascii_write_char(newScore);
 430              		.loc 1 52 0
 431 01c6 7B18     		adds	r3, r7, r1
 432 01c8 1B78     		ldrb	r3, [r3]
 433 01ca 1800     		movs	r0, r3
 434 01cc FFF7FEFF 		bl	ascii_write_char
  53:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** 	graphic_initialize();
 435              		.loc 1 53 0
 436 01d0 FFF7FEFF 		bl	graphic_initialize
  54:C:/Users/samue/Documents/MopLab/Moppen\ponglogic.c **** }
 437              		.loc 1 54 0
 438 01d4 C046     		nop
 439 01d6 BD46     		mov	sp, r7
 440 01d8 04B0     		add	sp, sp, #16
 441              		@ sp needed
 442 01da 80BD     		pop	{r7, pc}
 443              		.cfi_endproc
 444              	.LFE6:
 446              	.Letext0:
 447              		.file 2 "C:/Users/samue/Documents/MopLab/Moppen/ponglogic.h"
