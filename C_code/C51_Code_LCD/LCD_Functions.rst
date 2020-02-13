                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.9.0 #11195 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module LCD_Functions
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _printf_tiny
                                     12 	.globl _printf
                                     13 	.globl _row_pos
                                     14 	.globl _column_pos
                                     15 	.globl _lcd_gotoxy_PARM_2
                                     16 	.globl _DR_READ
                                     17 	.globl _DR_WRITE
                                     18 	.globl _IR_Read
                                     19 	.globl _IR_Write
                                     20 	.globl _lcdbusywait
                                     21 	.globl _delay
                                     22 	.globl _LCD_Init
                                     23 	.globl _LCD_putch
                                     24 	.globl _LCD_putstr
                                     25 	.globl _lcd_clear
                                     26 	.globl _lcd_gotoaddr
                                     27 	.globl _lcd_gotoxy
                                     28 	.globl _ddram_dump
                                     29 ;--------------------------------------------------------
                                     30 ; special function registers
                                     31 ;--------------------------------------------------------
                                     32 	.area RSEG    (ABS,DATA)
      000000                         33 	.org 0x0000
                                     34 ;--------------------------------------------------------
                                     35 ; special function bits
                                     36 ;--------------------------------------------------------
                                     37 	.area RSEG    (ABS,DATA)
      000000                         38 	.org 0x0000
                                     39 ;--------------------------------------------------------
                                     40 ; overlayable register banks
                                     41 ;--------------------------------------------------------
                                     42 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         43 	.ds 8
                                     44 ;--------------------------------------------------------
                                     45 ; internal ram data
                                     46 ;--------------------------------------------------------
                                     47 	.area DSEG    (DATA)
                                     48 ;--------------------------------------------------------
                                     49 ; overlayable items in internal ram 
                                     50 ;--------------------------------------------------------
                                     51 ;--------------------------------------------------------
                                     52 ; indirectly addressable internal ram data
                                     53 ;--------------------------------------------------------
                                     54 	.area ISEG    (DATA)
                                     55 ;--------------------------------------------------------
                                     56 ; absolute internal ram data
                                     57 ;--------------------------------------------------------
                                     58 	.area IABS    (ABS,DATA)
                                     59 	.area IABS    (ABS,DATA)
                                     60 ;--------------------------------------------------------
                                     61 ; bit data
                                     62 ;--------------------------------------------------------
                                     63 	.area BSEG    (BIT)
                                     64 ;--------------------------------------------------------
                                     65 ; paged external ram data
                                     66 ;--------------------------------------------------------
                                     67 	.area PSEG    (PAG,XDATA)
                                     68 ;--------------------------------------------------------
                                     69 ; external ram data
                                     70 ;--------------------------------------------------------
                                     71 	.area XSEG    (XDATA)
                           00F000    72 G$IR_Write$0_0$0 == 0xf000
                           00F000    73 _IR_Write	=	0xf000
                           00F200    74 G$IR_Read$0_0$0 == 0xf200
                           00F200    75 _IR_Read	=	0xf200
                           00F100    76 G$DR_WRITE$0_0$0 == 0xf100
                           00F100    77 _DR_WRITE	=	0xf100
                           00F300    78 G$DR_READ$0_0$0 == 0xf300
                           00F300    79 _DR_READ	=	0xf300
                           000000    80 LLCD_Functions.delay$time$1_0$25==.
      000400                         81 _delay_time_65536_25:
      000400                         82 	.ds 4
                           000004    83 LLCD_Functions.delay$i$1_0$26==.
      000404                         84 _delay_i_65536_26:
      000404                         85 	.ds 4
                           000008    86 LLCD_Functions.delay$n$1_0$26==.
      000408                         87 _delay_n_65536_26:
      000408                         88 	.ds 4
                           00000C    89 LLCD_Functions.LCD_putch$ch$1_0$33==.
      00040C                         90 _LCD_putch_ch_65536_33:
      00040C                         91 	.ds 1
                           00000D    92 LLCD_Functions.LCD_putstr$str$1_0$35==.
      00040D                         93 _LCD_putstr_str_65536_35:
      00040D                         94 	.ds 2
                           00000F    95 LLCD_Functions.lcd_gotoaddr$addr$1_0$41==.
      00040F                         96 _lcd_gotoaddr_addr_65536_41:
      00040F                         97 	.ds 1
                           000010    98 LLCD_Functions.lcd_gotoxy$column$1_0$43==.
      000410                         99 _lcd_gotoxy_PARM_2:
      000410                        100 	.ds 1
                           000011   101 LLCD_Functions.lcd_gotoxy$row$1_0$43==.
      000411                        102 _lcd_gotoxy_row_65536_43:
      000411                        103 	.ds 1
                           000012   104 LLCD_Functions.ddram_dump$i$1_0$46==.
      000412                        105 _ddram_dump_i_65536_46:
      000412                        106 	.ds 1
                           000013   107 LLCD_Functions.ddram_dump$j$1_0$46==.
      000413                        108 _ddram_dump_j_65536_46:
      000413                        109 	.ds 1
                                    110 ;--------------------------------------------------------
                                    111 ; absolute external ram data
                                    112 ;--------------------------------------------------------
                                    113 	.area XABS    (ABS,XDATA)
                                    114 ;--------------------------------------------------------
                                    115 ; external initialized ram data
                                    116 ;--------------------------------------------------------
                                    117 	.area XISEG   (XDATA)
                           000000   118 G$column_pos$0_0$0==.
      00049D                        119 _column_pos::
      00049D                        120 	.ds 2
                           000002   121 G$row_pos$0_0$0==.
      00049F                        122 _row_pos::
      00049F                        123 	.ds 2
                                    124 	.area HOME    (CODE)
                                    125 	.area GSINIT0 (CODE)
                                    126 	.area GSINIT1 (CODE)
                                    127 	.area GSINIT2 (CODE)
                                    128 	.area GSINIT3 (CODE)
                                    129 	.area GSINIT4 (CODE)
                                    130 	.area GSINIT5 (CODE)
                                    131 	.area GSINIT  (CODE)
                                    132 	.area GSFINAL (CODE)
                                    133 	.area CSEG    (CODE)
                                    134 ;--------------------------------------------------------
                                    135 ; global & static initialisations
                                    136 ;--------------------------------------------------------
                                    137 	.area HOME    (CODE)
                                    138 	.area GSINIT  (CODE)
                                    139 	.area GSFINAL (CODE)
                                    140 	.area GSINIT  (CODE)
                                    141 ;--------------------------------------------------------
                                    142 ; Home
                                    143 ;--------------------------------------------------------
                                    144 	.area HOME    (CODE)
                                    145 	.area HOME    (CODE)
                                    146 ;--------------------------------------------------------
                                    147 ; code
                                    148 ;--------------------------------------------------------
                                    149 	.area CSEG    (CODE)
                                    150 ;------------------------------------------------------------
                                    151 ;Allocation info for local variables in function 'lcdbusywait'
                                    152 ;------------------------------------------------------------
                           000000   153 	G$lcdbusywait$0$0 ==.
                           000000   154 	C$LCD_Functions.c$29$0_0$24 ==.
                                    155 ;	LCD_Functions.c:29: void lcdbusywait(void)
                                    156 ;	-----------------------------------------
                                    157 ;	 function lcdbusywait
                                    158 ;	-----------------------------------------
      00226D                        159 _lcdbusywait:
                           000007   160 	ar7 = 0x07
                           000006   161 	ar6 = 0x06
                           000005   162 	ar5 = 0x05
                           000004   163 	ar4 = 0x04
                           000003   164 	ar3 = 0x03
                           000002   165 	ar2 = 0x02
                           000001   166 	ar1 = 0x01
                           000000   167 	ar0 = 0x00
                           000000   168 	C$LCD_Functions.c$31$1_0$24 ==.
                                    169 ;	LCD_Functions.c:31: while(IR_Read & 0x80);
      00226D                        170 00101$:
      00226D 90 F2 00         [24]  171 	mov	dptr,#_IR_Read
      002270 E0               [24]  172 	movx	a,@dptr
      002271 20 E7 F9         [24]  173 	jb	acc.7,00101$
                           000007   174 	C$LCD_Functions.c$33$1_0$24 ==.
                                    175 ;	LCD_Functions.c:33: }
                           000007   176 	C$LCD_Functions.c$33$1_0$24 ==.
                           000007   177 	XG$lcdbusywait$0$0 ==.
      002274 22               [24]  178 	ret
                                    179 ;------------------------------------------------------------
                                    180 ;Allocation info for local variables in function 'delay'
                                    181 ;------------------------------------------------------------
                                    182 ;time                      Allocated with name '_delay_time_65536_25'
                                    183 ;i                         Allocated with name '_delay_i_65536_26'
                                    184 ;n                         Allocated with name '_delay_n_65536_26'
                                    185 ;------------------------------------------------------------
                           000008   186 	G$delay$0$0 ==.
                           000008   187 	C$LCD_Functions.c$39$1_0$27 ==.
                                    188 ;	LCD_Functions.c:39: void delay(uint32_t time)
                                    189 ;	-----------------------------------------
                                    190 ;	 function delay
                                    191 ;	-----------------------------------------
      002275                        192 _delay:
      002275 AF 82            [24]  193 	mov	r7,dpl
      002277 AE 83            [24]  194 	mov	r6,dph
      002279 AD F0            [24]  195 	mov	r5,b
      00227B FC               [12]  196 	mov	r4,a
      00227C 90 04 00         [24]  197 	mov	dptr,#_delay_time_65536_25
      00227F EF               [12]  198 	mov	a,r7
      002280 F0               [24]  199 	movx	@dptr,a
      002281 EE               [12]  200 	mov	a,r6
      002282 A3               [24]  201 	inc	dptr
      002283 F0               [24]  202 	movx	@dptr,a
      002284 ED               [12]  203 	mov	a,r5
      002285 A3               [24]  204 	inc	dptr
      002286 F0               [24]  205 	movx	@dptr,a
      002287 EC               [12]  206 	mov	a,r4
      002288 A3               [24]  207 	inc	dptr
      002289 F0               [24]  208 	movx	@dptr,a
                           00001D   209 	C$LCD_Functions.c$41$2_0$27 ==.
                                    210 ;	LCD_Functions.c:41: volatile uint32_t i = 0;
      00228A 90 04 04         [24]  211 	mov	dptr,#_delay_i_65536_26
      00228D E4               [12]  212 	clr	a
      00228E F0               [24]  213 	movx	@dptr,a
      00228F A3               [24]  214 	inc	dptr
      002290 F0               [24]  215 	movx	@dptr,a
      002291 A3               [24]  216 	inc	dptr
      002292 F0               [24]  217 	movx	@dptr,a
      002293 A3               [24]  218 	inc	dptr
      002294 F0               [24]  219 	movx	@dptr,a
                           000028   220 	C$LCD_Functions.c$42$2_0$27 ==.
                                    221 ;	LCD_Functions.c:42: volatile uint32_t n = 0;
      002295 90 04 08         [24]  222 	mov	dptr,#_delay_n_65536_26
      002298 F0               [24]  223 	movx	@dptr,a
      002299 A3               [24]  224 	inc	dptr
      00229A F0               [24]  225 	movx	@dptr,a
      00229B A3               [24]  226 	inc	dptr
      00229C F0               [24]  227 	movx	@dptr,a
      00229D A3               [24]  228 	inc	dptr
      00229E F0               [24]  229 	movx	@dptr,a
                           000032   230 	C$LCD_Functions.c$43$2_0$27 ==.
                                    231 ;	LCD_Functions.c:43: for(i=0;i<time;i++)
      00229F 90 04 04         [24]  232 	mov	dptr,#_delay_i_65536_26
      0022A2 F0               [24]  233 	movx	@dptr,a
      0022A3 A3               [24]  234 	inc	dptr
      0022A4 F0               [24]  235 	movx	@dptr,a
      0022A5 A3               [24]  236 	inc	dptr
      0022A6 F0               [24]  237 	movx	@dptr,a
      0022A7 A3               [24]  238 	inc	dptr
      0022A8 F0               [24]  239 	movx	@dptr,a
      0022A9 90 04 00         [24]  240 	mov	dptr,#_delay_time_65536_25
      0022AC E0               [24]  241 	movx	a,@dptr
      0022AD FC               [12]  242 	mov	r4,a
      0022AE A3               [24]  243 	inc	dptr
      0022AF E0               [24]  244 	movx	a,@dptr
      0022B0 FD               [12]  245 	mov	r5,a
      0022B1 A3               [24]  246 	inc	dptr
      0022B2 E0               [24]  247 	movx	a,@dptr
      0022B3 FE               [12]  248 	mov	r6,a
      0022B4 A3               [24]  249 	inc	dptr
      0022B5 E0               [24]  250 	movx	a,@dptr
      0022B6 FF               [12]  251 	mov	r7,a
      0022B7                        252 00107$:
      0022B7 90 04 04         [24]  253 	mov	dptr,#_delay_i_65536_26
      0022BA E0               [24]  254 	movx	a,@dptr
      0022BB F8               [12]  255 	mov	r0,a
      0022BC A3               [24]  256 	inc	dptr
      0022BD E0               [24]  257 	movx	a,@dptr
      0022BE F9               [12]  258 	mov	r1,a
      0022BF A3               [24]  259 	inc	dptr
      0022C0 E0               [24]  260 	movx	a,@dptr
      0022C1 FA               [12]  261 	mov	r2,a
      0022C2 A3               [24]  262 	inc	dptr
      0022C3 E0               [24]  263 	movx	a,@dptr
      0022C4 FB               [12]  264 	mov	r3,a
      0022C5 C3               [12]  265 	clr	c
      0022C6 E8               [12]  266 	mov	a,r0
      0022C7 9C               [12]  267 	subb	a,r4
      0022C8 E9               [12]  268 	mov	a,r1
      0022C9 9D               [12]  269 	subb	a,r5
      0022CA EA               [12]  270 	mov	a,r2
      0022CB 9E               [12]  271 	subb	a,r6
      0022CC EB               [12]  272 	mov	a,r3
      0022CD 9F               [12]  273 	subb	a,r7
      0022CE 50 6F            [24]  274 	jnc	00109$
                           000063   275 	C$LCD_Functions.c$45$4_0$29 ==.
                                    276 ;	LCD_Functions.c:45: for(n=0;n<127;n++)
      0022D0 90 04 08         [24]  277 	mov	dptr,#_delay_n_65536_26
      0022D3 E4               [12]  278 	clr	a
      0022D4 F0               [24]  279 	movx	@dptr,a
      0022D5 A3               [24]  280 	inc	dptr
      0022D6 F0               [24]  281 	movx	@dptr,a
      0022D7 A3               [24]  282 	inc	dptr
      0022D8 F0               [24]  283 	movx	@dptr,a
      0022D9 A3               [24]  284 	inc	dptr
      0022DA F0               [24]  285 	movx	@dptr,a
      0022DB                        286 00104$:
      0022DB 90 04 08         [24]  287 	mov	dptr,#_delay_n_65536_26
      0022DE E0               [24]  288 	movx	a,@dptr
      0022DF F8               [12]  289 	mov	r0,a
      0022E0 A3               [24]  290 	inc	dptr
      0022E1 E0               [24]  291 	movx	a,@dptr
      0022E2 F9               [12]  292 	mov	r1,a
      0022E3 A3               [24]  293 	inc	dptr
      0022E4 E0               [24]  294 	movx	a,@dptr
      0022E5 FA               [12]  295 	mov	r2,a
      0022E6 A3               [24]  296 	inc	dptr
      0022E7 E0               [24]  297 	movx	a,@dptr
      0022E8 FB               [12]  298 	mov	r3,a
      0022E9 C3               [12]  299 	clr	c
      0022EA E8               [12]  300 	mov	a,r0
      0022EB 94 7F            [12]  301 	subb	a,#0x7f
      0022ED E9               [12]  302 	mov	a,r1
      0022EE 94 00            [12]  303 	subb	a,#0x00
      0022F0 EA               [12]  304 	mov	a,r2
      0022F1 94 00            [12]  305 	subb	a,#0x00
      0022F3 EB               [12]  306 	mov	a,r3
      0022F4 94 00            [12]  307 	subb	a,#0x00
      0022F6 50 23            [24]  308 	jnc	00108$
      0022F8 90 04 08         [24]  309 	mov	dptr,#_delay_n_65536_26
      0022FB E0               [24]  310 	movx	a,@dptr
      0022FC F8               [12]  311 	mov	r0,a
      0022FD A3               [24]  312 	inc	dptr
      0022FE E0               [24]  313 	movx	a,@dptr
      0022FF F9               [12]  314 	mov	r1,a
      002300 A3               [24]  315 	inc	dptr
      002301 E0               [24]  316 	movx	a,@dptr
      002302 FA               [12]  317 	mov	r2,a
      002303 A3               [24]  318 	inc	dptr
      002304 E0               [24]  319 	movx	a,@dptr
      002305 FB               [12]  320 	mov	r3,a
      002306 90 04 08         [24]  321 	mov	dptr,#_delay_n_65536_26
      002309 74 01            [12]  322 	mov	a,#0x01
      00230B 28               [12]  323 	add	a,r0
      00230C F0               [24]  324 	movx	@dptr,a
      00230D E4               [12]  325 	clr	a
      00230E 39               [12]  326 	addc	a,r1
      00230F A3               [24]  327 	inc	dptr
      002310 F0               [24]  328 	movx	@dptr,a
      002311 E4               [12]  329 	clr	a
      002312 3A               [12]  330 	addc	a,r2
      002313 A3               [24]  331 	inc	dptr
      002314 F0               [24]  332 	movx	@dptr,a
      002315 E4               [12]  333 	clr	a
      002316 3B               [12]  334 	addc	a,r3
      002317 A3               [24]  335 	inc	dptr
      002318 F0               [24]  336 	movx	@dptr,a
      002319 80 C0            [24]  337 	sjmp	00104$
      00231B                        338 00108$:
                           0000AE   339 	C$LCD_Functions.c$43$2_0$27 ==.
                                    340 ;	LCD_Functions.c:43: for(i=0;i<time;i++)
      00231B 90 04 04         [24]  341 	mov	dptr,#_delay_i_65536_26
      00231E E0               [24]  342 	movx	a,@dptr
      00231F F8               [12]  343 	mov	r0,a
      002320 A3               [24]  344 	inc	dptr
      002321 E0               [24]  345 	movx	a,@dptr
      002322 F9               [12]  346 	mov	r1,a
      002323 A3               [24]  347 	inc	dptr
      002324 E0               [24]  348 	movx	a,@dptr
      002325 FA               [12]  349 	mov	r2,a
      002326 A3               [24]  350 	inc	dptr
      002327 E0               [24]  351 	movx	a,@dptr
      002328 FB               [12]  352 	mov	r3,a
      002329 90 04 04         [24]  353 	mov	dptr,#_delay_i_65536_26
      00232C 74 01            [12]  354 	mov	a,#0x01
      00232E 28               [12]  355 	add	a,r0
      00232F F0               [24]  356 	movx	@dptr,a
      002330 E4               [12]  357 	clr	a
      002331 39               [12]  358 	addc	a,r1
      002332 A3               [24]  359 	inc	dptr
      002333 F0               [24]  360 	movx	@dptr,a
      002334 E4               [12]  361 	clr	a
      002335 3A               [12]  362 	addc	a,r2
      002336 A3               [24]  363 	inc	dptr
      002337 F0               [24]  364 	movx	@dptr,a
      002338 E4               [12]  365 	clr	a
      002339 3B               [12]  366 	addc	a,r3
      00233A A3               [24]  367 	inc	dptr
      00233B F0               [24]  368 	movx	@dptr,a
      00233C 02 22 B7         [24]  369 	ljmp	00107$
      00233F                        370 00109$:
                           0000D2   371 	C$LCD_Functions.c$50$2_0$27 ==.
                                    372 ;	LCD_Functions.c:50: }
                           0000D2   373 	C$LCD_Functions.c$50$2_0$27 ==.
                           0000D2   374 	XG$delay$0$0 ==.
      00233F 22               [24]  375 	ret
                                    376 ;------------------------------------------------------------
                                    377 ;Allocation info for local variables in function 'LCD_Init'
                                    378 ;------------------------------------------------------------
                           0000D3   379 	G$LCD_Init$0$0 ==.
                           0000D3   380 	C$LCD_Functions.c$56$2_0$32 ==.
                                    381 ;	LCD_Functions.c:56: void LCD_Init(void)
                                    382 ;	-----------------------------------------
                                    383 ;	 function LCD_Init
                                    384 ;	-----------------------------------------
      002340                        385 _LCD_Init:
                           0000D3   386 	C$LCD_Functions.c$60$1_0$32 ==.
                                    387 ;	LCD_Functions.c:60: delay(15);
      002340 90 00 0F         [24]  388 	mov	dptr,#(0x0f&0x00ff)
      002343 E4               [12]  389 	clr	a
      002344 F5 F0            [12]  390 	mov	b,a
      002346 12 22 75         [24]  391 	lcall	_delay
                           0000DC   392 	C$LCD_Functions.c$61$1_0$32 ==.
                                    393 ;	LCD_Functions.c:61: IR_Write = LCD_Function_set;
      002349 90 F0 00         [24]  394 	mov	dptr,#_IR_Write
      00234C 74 38            [12]  395 	mov	a,#0x38
      00234E F0               [24]  396 	movx	@dptr,a
                           0000E2   397 	C$LCD_Functions.c$63$1_0$32 ==.
                                    398 ;	LCD_Functions.c:63: delay(5);
      00234F 90 00 05         [24]  399 	mov	dptr,#(0x05&0x00ff)
      002352 E4               [12]  400 	clr	a
      002353 F5 F0            [12]  401 	mov	b,a
      002355 12 22 75         [24]  402 	lcall	_delay
                           0000EB   403 	C$LCD_Functions.c$64$1_0$32 ==.
                                    404 ;	LCD_Functions.c:64: IR_Write = LCD_Function_set;
      002358 90 F0 00         [24]  405 	mov	dptr,#_IR_Write
      00235B 74 38            [12]  406 	mov	a,#0x38
      00235D F0               [24]  407 	movx	@dptr,a
                           0000F1   408 	C$LCD_Functions.c$66$1_0$32 ==.
                                    409 ;	LCD_Functions.c:66: delay(1);
      00235E 90 00 01         [24]  410 	mov	dptr,#(0x01&0x00ff)
      002361 E4               [12]  411 	clr	a
      002362 F5 F0            [12]  412 	mov	b,a
      002364 12 22 75         [24]  413 	lcall	_delay
                           0000FA   414 	C$LCD_Functions.c$67$1_0$32 ==.
                                    415 ;	LCD_Functions.c:67: IR_Write = LCD_Function_set;
      002367 90 F0 00         [24]  416 	mov	dptr,#_IR_Write
      00236A 74 38            [12]  417 	mov	a,#0x38
      00236C F0               [24]  418 	movx	@dptr,a
                           000100   419 	C$LCD_Functions.c$69$1_0$32 ==.
                                    420 ;	LCD_Functions.c:69: lcdbusywait();
      00236D 12 22 6D         [24]  421 	lcall	_lcdbusywait
                           000103   422 	C$LCD_Functions.c$71$1_0$32 ==.
                                    423 ;	LCD_Functions.c:71: IR_Write = LCD_Function_set;
      002370 90 F0 00         [24]  424 	mov	dptr,#_IR_Write
      002373 74 38            [12]  425 	mov	a,#0x38
      002375 F0               [24]  426 	movx	@dptr,a
                           000109   427 	C$LCD_Functions.c$73$1_0$32 ==.
                                    428 ;	LCD_Functions.c:73: lcdbusywait();
      002376 12 22 6D         [24]  429 	lcall	_lcdbusywait
                           00010C   430 	C$LCD_Functions.c$75$1_0$32 ==.
                                    431 ;	LCD_Functions.c:75: IR_Write = LCD_display_off;
      002379 90 F0 00         [24]  432 	mov	dptr,#_IR_Write
      00237C 74 08            [12]  433 	mov	a,#0x08
      00237E F0               [24]  434 	movx	@dptr,a
                           000112   435 	C$LCD_Functions.c$77$1_0$32 ==.
                                    436 ;	LCD_Functions.c:77: lcdbusywait();
      00237F 12 22 6D         [24]  437 	lcall	_lcdbusywait
                           000115   438 	C$LCD_Functions.c$79$1_0$32 ==.
                                    439 ;	LCD_Functions.c:79: IR_Write = LCD_display_on;
      002382 90 F0 00         [24]  440 	mov	dptr,#_IR_Write
      002385 74 0E            [12]  441 	mov	a,#0x0e
      002387 F0               [24]  442 	movx	@dptr,a
                           00011B   443 	C$LCD_Functions.c$81$1_0$32 ==.
                                    444 ;	LCD_Functions.c:81: lcdbusywait();
      002388 12 22 6D         [24]  445 	lcall	_lcdbusywait
                           00011E   446 	C$LCD_Functions.c$83$1_0$32 ==.
                                    447 ;	LCD_Functions.c:83: IR_Write = LCD_entrymode_set;
      00238B 90 F0 00         [24]  448 	mov	dptr,#_IR_Write
      00238E 74 06            [12]  449 	mov	a,#0x06
      002390 F0               [24]  450 	movx	@dptr,a
                           000124   451 	C$LCD_Functions.c$85$1_0$32 ==.
                                    452 ;	LCD_Functions.c:85: lcdbusywait();
      002391 12 22 6D         [24]  453 	lcall	_lcdbusywait
                           000127   454 	C$LCD_Functions.c$87$1_0$32 ==.
                                    455 ;	LCD_Functions.c:87: IR_Write = LCD_Clearscreen;
      002394 90 F0 00         [24]  456 	mov	dptr,#_IR_Write
      002397 74 01            [12]  457 	mov	a,#0x01
      002399 F0               [24]  458 	movx	@dptr,a
                           00012D   459 	C$LCD_Functions.c$88$1_0$32 ==.
                                    460 ;	LCD_Functions.c:88: }
                           00012D   461 	C$LCD_Functions.c$88$1_0$32 ==.
                           00012D   462 	XG$LCD_Init$0$0 ==.
      00239A 22               [24]  463 	ret
                                    464 ;------------------------------------------------------------
                                    465 ;Allocation info for local variables in function 'LCD_putch'
                                    466 ;------------------------------------------------------------
                                    467 ;ch                        Allocated with name '_LCD_putch_ch_65536_33'
                                    468 ;------------------------------------------------------------
                           00012E   469 	G$LCD_putch$0$0 ==.
                           00012E   470 	C$LCD_Functions.c$95$1_0$34 ==.
                                    471 ;	LCD_Functions.c:95: void LCD_putch(__xdata uint8_t ch)
                                    472 ;	-----------------------------------------
                                    473 ;	 function LCD_putch
                                    474 ;	-----------------------------------------
      00239B                        475 _LCD_putch:
      00239B E5 82            [12]  476 	mov	a,dpl
      00239D 90 04 0C         [24]  477 	mov	dptr,#_LCD_putch_ch_65536_33
      0023A0 F0               [24]  478 	movx	@dptr,a
                           000134   479 	C$LCD_Functions.c$97$1_0$34 ==.
                                    480 ;	LCD_Functions.c:97: lcdbusywait();
      0023A1 12 22 6D         [24]  481 	lcall	_lcdbusywait
                           000137   482 	C$LCD_Functions.c$98$1_0$34 ==.
                                    483 ;	LCD_Functions.c:98: DR_WRITE=ch;
      0023A4 90 04 0C         [24]  484 	mov	dptr,#_LCD_putch_ch_65536_33
      0023A7 E0               [24]  485 	movx	a,@dptr
      0023A8 90 F1 00         [24]  486 	mov	dptr,#_DR_WRITE
      0023AB F0               [24]  487 	movx	@dptr,a
                           00013F   488 	C$LCD_Functions.c$99$1_0$34 ==.
                                    489 ;	LCD_Functions.c:99: }
                           00013F   490 	C$LCD_Functions.c$99$1_0$34 ==.
                           00013F   491 	XG$LCD_putch$0$0 ==.
      0023AC 22               [24]  492 	ret
                                    493 ;------------------------------------------------------------
                                    494 ;Allocation info for local variables in function 'LCD_putstr'
                                    495 ;------------------------------------------------------------
                                    496 ;str                       Allocated with name '_LCD_putstr_str_65536_35'
                                    497 ;------------------------------------------------------------
                           000140   498 	G$LCD_putstr$0$0 ==.
                           000140   499 	C$LCD_Functions.c$106$1_0$36 ==.
                                    500 ;	LCD_Functions.c:106: void LCD_putstr(__xdata uint8_t * str)
                                    501 ;	-----------------------------------------
                                    502 ;	 function LCD_putstr
                                    503 ;	-----------------------------------------
      0023AD                        504 _LCD_putstr:
      0023AD AF 83            [24]  505 	mov	r7,dph
      0023AF E5 82            [12]  506 	mov	a,dpl
      0023B1 90 04 0D         [24]  507 	mov	dptr,#_LCD_putstr_str_65536_35
      0023B4 F0               [24]  508 	movx	@dptr,a
      0023B5 EF               [12]  509 	mov	a,r7
      0023B6 A3               [24]  510 	inc	dptr
      0023B7 F0               [24]  511 	movx	@dptr,a
                           00014B   512 	C$LCD_Functions.c$108$1_0$36 ==.
                                    513 ;	LCD_Functions.c:108: while(*str!='\0')
      0023B8 90 04 0D         [24]  514 	mov	dptr,#_LCD_putstr_str_65536_35
      0023BB E0               [24]  515 	movx	a,@dptr
      0023BC FE               [12]  516 	mov	r6,a
      0023BD A3               [24]  517 	inc	dptr
      0023BE E0               [24]  518 	movx	a,@dptr
      0023BF FF               [12]  519 	mov	r7,a
      0023C0                        520 00103$:
      0023C0 8E 82            [24]  521 	mov	dpl,r6
      0023C2 8F 83            [24]  522 	mov	dph,r7
      0023C4 E0               [24]  523 	movx	a,@dptr
      0023C5 70 03            [24]  524 	jnz	00121$
      0023C7 02 24 53         [24]  525 	ljmp	00111$
      0023CA                        526 00121$:
                           00015D   527 	C$LCD_Functions.c$110$2_0$37 ==.
                                    528 ;	LCD_Functions.c:110: lcdbusywait();
      0023CA C0 07            [24]  529 	push	ar7
      0023CC C0 06            [24]  530 	push	ar6
      0023CE 12 22 6D         [24]  531 	lcall	_lcdbusywait
      0023D1 D0 06            [24]  532 	pop	ar6
      0023D3 D0 07            [24]  533 	pop	ar7
                           000168   534 	C$LCD_Functions.c$111$2_0$37 ==.
                                    535 ;	LCD_Functions.c:111: LCD_putch(*str++);
      0023D5 8E 82            [24]  536 	mov	dpl,r6
      0023D7 8F 83            [24]  537 	mov	dph,r7
      0023D9 E0               [24]  538 	movx	a,@dptr
      0023DA FD               [12]  539 	mov	r5,a
      0023DB A3               [24]  540 	inc	dptr
      0023DC AE 82            [24]  541 	mov	r6,dpl
      0023DE AF 83            [24]  542 	mov	r7,dph
      0023E0 90 04 0D         [24]  543 	mov	dptr,#_LCD_putstr_str_65536_35
      0023E3 EE               [12]  544 	mov	a,r6
      0023E4 F0               [24]  545 	movx	@dptr,a
      0023E5 EF               [12]  546 	mov	a,r7
      0023E6 A3               [24]  547 	inc	dptr
      0023E7 F0               [24]  548 	movx	@dptr,a
      0023E8 8D 82            [24]  549 	mov	dpl,r5
      0023EA C0 07            [24]  550 	push	ar7
      0023EC C0 06            [24]  551 	push	ar6
      0023EE 12 23 9B         [24]  552 	lcall	_LCD_putch
      0023F1 D0 06            [24]  553 	pop	ar6
      0023F3 D0 07            [24]  554 	pop	ar7
                           000188   555 	C$LCD_Functions.c$112$2_0$37 ==.
                                    556 ;	LCD_Functions.c:112: column_pos++;
      0023F5 90 04 9D         [24]  557 	mov	dptr,#_column_pos
      0023F8 E0               [24]  558 	movx	a,@dptr
      0023F9 FC               [12]  559 	mov	r4,a
      0023FA A3               [24]  560 	inc	dptr
      0023FB E0               [24]  561 	movx	a,@dptr
      0023FC FD               [12]  562 	mov	r5,a
      0023FD 90 04 9D         [24]  563 	mov	dptr,#_column_pos
      002400 74 01            [12]  564 	mov	a,#0x01
      002402 2C               [12]  565 	add	a,r4
      002403 F0               [24]  566 	movx	@dptr,a
      002404 E4               [12]  567 	clr	a
      002405 3D               [12]  568 	addc	a,r5
      002406 A3               [24]  569 	inc	dptr
      002407 F0               [24]  570 	movx	@dptr,a
                           00019B   571 	C$LCD_Functions.c$113$2_0$37 ==.
                                    572 ;	LCD_Functions.c:113: if(column_pos==16)
      002408 90 04 9D         [24]  573 	mov	dptr,#_column_pos
      00240B E0               [24]  574 	movx	a,@dptr
      00240C FC               [12]  575 	mov	r4,a
      00240D A3               [24]  576 	inc	dptr
      00240E E0               [24]  577 	movx	a,@dptr
      00240F FD               [12]  578 	mov	r5,a
      002410 BC 10 AD         [24]  579 	cjne	r4,#0x10,00103$
      002413 BD 00 AA         [24]  580 	cjne	r5,#0x00,00103$
                           0001A9   581 	C$LCD_Functions.c$115$3_0$38 ==.
                                    582 ;	LCD_Functions.c:115: row_pos++;
      002416 90 04 9F         [24]  583 	mov	dptr,#_row_pos
      002419 E0               [24]  584 	movx	a,@dptr
      00241A FC               [12]  585 	mov	r4,a
      00241B A3               [24]  586 	inc	dptr
      00241C E0               [24]  587 	movx	a,@dptr
      00241D FD               [12]  588 	mov	r5,a
      00241E 90 04 9F         [24]  589 	mov	dptr,#_row_pos
      002421 74 01            [12]  590 	mov	a,#0x01
      002423 2C               [12]  591 	add	a,r4
      002424 F0               [24]  592 	movx	@dptr,a
      002425 E4               [12]  593 	clr	a
      002426 3D               [12]  594 	addc	a,r5
      002427 A3               [24]  595 	inc	dptr
      002428 F0               [24]  596 	movx	@dptr,a
                           0001BC   597 	C$LCD_Functions.c$116$3_0$38 ==.
                                    598 ;	LCD_Functions.c:116: column_pos=0;
      002429 90 04 9D         [24]  599 	mov	dptr,#_column_pos
      00242C E4               [12]  600 	clr	a
      00242D F0               [24]  601 	movx	@dptr,a
      00242E A3               [24]  602 	inc	dptr
      00242F F0               [24]  603 	movx	@dptr,a
                           0001C3   604 	C$LCD_Functions.c$117$3_0$38 ==.
                                    605 ;	LCD_Functions.c:117: lcd_gotoxy(row_pos,column_pos);
      002430 90 04 9F         [24]  606 	mov	dptr,#_row_pos
      002433 E0               [24]  607 	movx	a,@dptr
      002434 FC               [12]  608 	mov	r4,a
      002435 A3               [24]  609 	inc	dptr
      002436 E0               [24]  610 	movx	a,@dptr
      002437 90 04 9D         [24]  611 	mov	dptr,#_column_pos
      00243A E0               [24]  612 	movx	a,@dptr
      00243B FB               [12]  613 	mov	r3,a
      00243C A3               [24]  614 	inc	dptr
      00243D E0               [24]  615 	movx	a,@dptr
      00243E 90 04 10         [24]  616 	mov	dptr,#_lcd_gotoxy_PARM_2
      002441 EB               [12]  617 	mov	a,r3
      002442 F0               [24]  618 	movx	@dptr,a
      002443 8C 82            [24]  619 	mov	dpl,r4
      002445 C0 07            [24]  620 	push	ar7
      002447 C0 06            [24]  621 	push	ar6
      002449 12 24 7A         [24]  622 	lcall	_lcd_gotoxy
      00244C D0 06            [24]  623 	pop	ar6
      00244E D0 07            [24]  624 	pop	ar7
      002450 02 23 C0         [24]  625 	ljmp	00103$
      002453                        626 00111$:
      002453 90 04 0D         [24]  627 	mov	dptr,#_LCD_putstr_str_65536_35
      002456 EE               [12]  628 	mov	a,r6
      002457 F0               [24]  629 	movx	@dptr,a
      002458 EF               [12]  630 	mov	a,r7
      002459 A3               [24]  631 	inc	dptr
      00245A F0               [24]  632 	movx	@dptr,a
                           0001EE   633 	C$LCD_Functions.c$120$1_0$36 ==.
                                    634 ;	LCD_Functions.c:120: }
                           0001EE   635 	C$LCD_Functions.c$120$1_0$36 ==.
                           0001EE   636 	XG$LCD_putstr$0$0 ==.
      00245B 22               [24]  637 	ret
                                    638 ;------------------------------------------------------------
                                    639 ;Allocation info for local variables in function 'lcd_clear'
                                    640 ;------------------------------------------------------------
                           0001EF   641 	G$lcd_clear$0$0 ==.
                           0001EF   642 	C$LCD_Functions.c$127$1_0$40 ==.
                                    643 ;	LCD_Functions.c:127: void lcd_clear(void)
                                    644 ;	-----------------------------------------
                                    645 ;	 function lcd_clear
                                    646 ;	-----------------------------------------
      00245C                        647 _lcd_clear:
                           0001EF   648 	C$LCD_Functions.c$128$1_0$40 ==.
                                    649 ;	LCD_Functions.c:128: {   lcdbusywait();
      00245C 12 22 6D         [24]  650 	lcall	_lcdbusywait
                           0001F2   651 	C$LCD_Functions.c$129$1_0$40 ==.
                                    652 ;	LCD_Functions.c:129: IR_Write=LCD_Clearscreen;
      00245F 90 F0 00         [24]  653 	mov	dptr,#_IR_Write
      002462 74 01            [12]  654 	mov	a,#0x01
      002464 F0               [24]  655 	movx	@dptr,a
                           0001F8   656 	C$LCD_Functions.c$130$1_0$40 ==.
                                    657 ;	LCD_Functions.c:130: }
                           0001F8   658 	C$LCD_Functions.c$130$1_0$40 ==.
                           0001F8   659 	XG$lcd_clear$0$0 ==.
      002465 22               [24]  660 	ret
                                    661 ;------------------------------------------------------------
                                    662 ;Allocation info for local variables in function 'lcd_gotoaddr'
                                    663 ;------------------------------------------------------------
                                    664 ;addr                      Allocated with name '_lcd_gotoaddr_addr_65536_41'
                                    665 ;------------------------------------------------------------
                           0001F9   666 	G$lcd_gotoaddr$0$0 ==.
                           0001F9   667 	C$LCD_Functions.c$136$1_0$42 ==.
                                    668 ;	LCD_Functions.c:136: void lcd_gotoaddr(unsigned char addr)
                                    669 ;	-----------------------------------------
                                    670 ;	 function lcd_gotoaddr
                                    671 ;	-----------------------------------------
      002466                        672 _lcd_gotoaddr:
      002466 E5 82            [12]  673 	mov	a,dpl
      002468 90 04 0F         [24]  674 	mov	dptr,#_lcd_gotoaddr_addr_65536_41
      00246B F0               [24]  675 	movx	@dptr,a
                           0001FF   676 	C$LCD_Functions.c$138$1_0$42 ==.
                                    677 ;	LCD_Functions.c:138: lcdbusywait();
      00246C 12 22 6D         [24]  678 	lcall	_lcdbusywait
                           000202   679 	C$LCD_Functions.c$139$1_0$42 ==.
                                    680 ;	LCD_Functions.c:139: IR_Write=addr|0x80;
      00246F 90 04 0F         [24]  681 	mov	dptr,#_lcd_gotoaddr_addr_65536_41
      002472 E0               [24]  682 	movx	a,@dptr
      002473 90 F0 00         [24]  683 	mov	dptr,#_IR_Write
      002476 44 80            [12]  684 	orl	a,#0x80
      002478 F0               [24]  685 	movx	@dptr,a
                           00020C   686 	C$LCD_Functions.c$140$1_0$42 ==.
                                    687 ;	LCD_Functions.c:140: }
                           00020C   688 	C$LCD_Functions.c$140$1_0$42 ==.
                           00020C   689 	XG$lcd_gotoaddr$0$0 ==.
      002479 22               [24]  690 	ret
                                    691 ;------------------------------------------------------------
                                    692 ;Allocation info for local variables in function 'lcd_gotoxy'
                                    693 ;------------------------------------------------------------
                                    694 ;column                    Allocated with name '_lcd_gotoxy_PARM_2'
                                    695 ;row                       Allocated with name '_lcd_gotoxy_row_65536_43'
                                    696 ;------------------------------------------------------------
                           00020D   697 	G$lcd_gotoxy$0$0 ==.
                           00020D   698 	C$LCD_Functions.c$146$1_0$44 ==.
                                    699 ;	LCD_Functions.c:146: void lcd_gotoxy(unsigned char row,unsigned char column)
                                    700 ;	-----------------------------------------
                                    701 ;	 function lcd_gotoxy
                                    702 ;	-----------------------------------------
      00247A                        703 _lcd_gotoxy:
      00247A E5 82            [12]  704 	mov	a,dpl
      00247C 90 04 11         [24]  705 	mov	dptr,#_lcd_gotoxy_row_65536_43
      00247F F0               [24]  706 	movx	@dptr,a
                           000213   707 	C$LCD_Functions.c$147$1_0$44 ==.
                                    708 ;	LCD_Functions.c:147: {   column_pos=column;
      002480 90 04 10         [24]  709 	mov	dptr,#_lcd_gotoxy_PARM_2
      002483 E0               [24]  710 	movx	a,@dptr
      002484 FF               [12]  711 	mov	r7,a
      002485 90 04 9D         [24]  712 	mov	dptr,#_column_pos
      002488 F0               [24]  713 	movx	@dptr,a
      002489 E4               [12]  714 	clr	a
      00248A A3               [24]  715 	inc	dptr
      00248B F0               [24]  716 	movx	@dptr,a
                           00021F   717 	C$LCD_Functions.c$148$1_0$44 ==.
                                    718 ;	LCD_Functions.c:148: row_pos=row;
      00248C 90 04 11         [24]  719 	mov	dptr,#_lcd_gotoxy_row_65536_43
      00248F E0               [24]  720 	movx	a,@dptr
      002490 FE               [12]  721 	mov	r6,a
      002491 90 04 9F         [24]  722 	mov	dptr,#_row_pos
      002494 F0               [24]  723 	movx	@dptr,a
      002495 E4               [12]  724 	clr	a
      002496 A3               [24]  725 	inc	dptr
      002497 F0               [24]  726 	movx	@dptr,a
                           00022B   727 	C$LCD_Functions.c$149$1_0$44 ==.
                                    728 ;	LCD_Functions.c:149: switch(row)
      002498 BE 01 02         [24]  729 	cjne	r6,#0x01,00125$
      00249B 80 0F            [24]  730 	sjmp	00101$
      00249D                        731 00125$:
      00249D BE 02 02         [24]  732 	cjne	r6,#0x02,00126$
      0024A0 80 11            [24]  733 	sjmp	00102$
      0024A2                        734 00126$:
      0024A2 BE 03 02         [24]  735 	cjne	r6,#0x03,00127$
      0024A5 80 18            [24]  736 	sjmp	00103$
      0024A7                        737 00127$:
                           00023A   738 	C$LCD_Functions.c$151$2_0$45 ==.
                                    739 ;	LCD_Functions.c:151: case 1: lcd_gotoaddr(column);
      0024A7 BE 04 29         [24]  740 	cjne	r6,#0x04,00107$
      0024AA 80 1F            [24]  741 	sjmp	00104$
      0024AC                        742 00101$:
      0024AC 8F 82            [24]  743 	mov	dpl,r7
      0024AE 12 24 66         [24]  744 	lcall	_lcd_gotoaddr
                           000244   745 	C$LCD_Functions.c$152$2_0$45 ==.
                                    746 ;	LCD_Functions.c:152: break;
                           000244   747 	C$LCD_Functions.c$153$2_0$45 ==.
                                    748 ;	LCD_Functions.c:153: case 2: lcd_gotoaddr(63+column);        //Got the values of the addresses through trial and error method
      0024B1 80 20            [24]  749 	sjmp	00107$
      0024B3                        750 00102$:
      0024B3 8F 06            [24]  751 	mov	ar6,r7
      0024B5 74 3F            [12]  752 	mov	a,#0x3f
      0024B7 2E               [12]  753 	add	a,r6
      0024B8 F5 82            [12]  754 	mov	dpl,a
      0024BA 12 24 66         [24]  755 	lcall	_lcd_gotoaddr
                           000250   756 	C$LCD_Functions.c$154$2_0$45 ==.
                                    757 ;	LCD_Functions.c:154: break;
                           000250   758 	C$LCD_Functions.c$155$2_0$45 ==.
                                    759 ;	LCD_Functions.c:155: case 3: lcd_gotoaddr(15+column);
      0024BD 80 14            [24]  760 	sjmp	00107$
      0024BF                        761 00103$:
      0024BF 8F 06            [24]  762 	mov	ar6,r7
      0024C1 74 0F            [12]  763 	mov	a,#0x0f
      0024C3 2E               [12]  764 	add	a,r6
      0024C4 F5 82            [12]  765 	mov	dpl,a
      0024C6 12 24 66         [24]  766 	lcall	_lcd_gotoaddr
                           00025C   767 	C$LCD_Functions.c$156$2_0$45 ==.
                                    768 ;	LCD_Functions.c:156: break;
                           00025C   769 	C$LCD_Functions.c$157$2_0$45 ==.
                                    770 ;	LCD_Functions.c:157: case 4: lcd_gotoaddr(80+column);
      0024C9 80 08            [24]  771 	sjmp	00107$
      0024CB                        772 00104$:
      0024CB 74 50            [12]  773 	mov	a,#0x50
      0024CD 2F               [12]  774 	add	a,r7
      0024CE F5 82            [12]  775 	mov	dpl,a
      0024D0 12 24 66         [24]  776 	lcall	_lcd_gotoaddr
                           000266   777 	C$LCD_Functions.c$161$1_0$44 ==.
                                    778 ;	LCD_Functions.c:161: }
      0024D3                        779 00107$:
                           000266   780 	C$LCD_Functions.c$162$1_0$44 ==.
                                    781 ;	LCD_Functions.c:162: }
                           000266   782 	C$LCD_Functions.c$162$1_0$44 ==.
                           000266   783 	XG$lcd_gotoxy$0$0 ==.
      0024D3 22               [24]  784 	ret
                                    785 ;------------------------------------------------------------
                                    786 ;Allocation info for local variables in function 'ddram_dump'
                                    787 ;------------------------------------------------------------
                                    788 ;Data                      Allocated with name '_ddram_dump_Data_65536_46'
                                    789 ;i                         Allocated with name '_ddram_dump_i_65536_46'
                                    790 ;j                         Allocated with name '_ddram_dump_j_65536_46'
                                    791 ;------------------------------------------------------------
                           000267   792 	G$ddram_dump$0$0 ==.
                           000267   793 	C$LCD_Functions.c$168$1_0$46 ==.
                                    794 ;	LCD_Functions.c:168: void ddram_dump()
                                    795 ;	-----------------------------------------
                                    796 ;	 function ddram_dump
                                    797 ;	-----------------------------------------
      0024D4                        798 _ddram_dump:
                           000267   799 	C$LCD_Functions.c$171$1_0$46 ==.
                                    800 ;	LCD_Functions.c:171: IR_Write=0x80;
      0024D4 90 F0 00         [24]  801 	mov	dptr,#_IR_Write
      0024D7 74 80            [12]  802 	mov	a,#0x80
      0024D9 F0               [24]  803 	movx	@dptr,a
                           00026D   804 	C$LCD_Functions.c$172$1_0$46 ==.
                                    805 ;	LCD_Functions.c:172: lcdbusywait();
      0024DA 12 22 6D         [24]  806 	lcall	_lcdbusywait
                           000270   807 	C$LCD_Functions.c$173$1_0$46 ==.
                                    808 ;	LCD_Functions.c:173: Data=DR_READ;
      0024DD 90 F3 00         [24]  809 	mov	dptr,#_DR_READ
      0024E0 E0               [24]  810 	movx	a,@dptr
                           000274   811 	C$LCD_Functions.c$174$2_0$47 ==.
                                    812 ;	LCD_Functions.c:174: for(i=0;i<5;i++)
      0024E1 90 04 12         [24]  813 	mov	dptr,#_ddram_dump_i_65536_46
      0024E4 E4               [12]  814 	clr	a
      0024E5 F0               [24]  815 	movx	@dptr,a
      0024E6                        816 00107$:
      0024E6 90 04 12         [24]  817 	mov	dptr,#_ddram_dump_i_65536_46
      0024E9 E0               [24]  818 	movx	a,@dptr
      0024EA FF               [12]  819 	mov	r7,a
      0024EB BF 05 00         [24]  820 	cjne	r7,#0x05,00127$
      0024EE                        821 00127$:
      0024EE 50 51            [24]  822 	jnc	00109$
                           000283   823 	C$LCD_Functions.c$175$3_0$48 ==.
                                    824 ;	LCD_Functions.c:175: {       printf_tiny("\n\r");
      0024F0 74 6B            [12]  825 	mov	a,#___str_0
      0024F2 C0 E0            [24]  826 	push	acc
      0024F4 74 3A            [12]  827 	mov	a,#(___str_0 >> 8)
      0024F6 C0 E0            [24]  828 	push	acc
      0024F8 12 2C 9F         [24]  829 	lcall	_printf_tiny
      0024FB 15 81            [12]  830 	dec	sp
      0024FD 15 81            [12]  831 	dec	sp
                           000292   832 	C$LCD_Functions.c$176$4_0$49 ==.
                                    833 ;	LCD_Functions.c:176: for(j=0;j<16;j++)
      0024FF 90 04 13         [24]  834 	mov	dptr,#_ddram_dump_j_65536_46
      002502 E4               [12]  835 	clr	a
      002503 F0               [24]  836 	movx	@dptr,a
      002504                        837 00104$:
      002504 90 04 13         [24]  838 	mov	dptr,#_ddram_dump_j_65536_46
      002507 E0               [24]  839 	movx	a,@dptr
      002508 FF               [12]  840 	mov	r7,a
      002509 BF 10 00         [24]  841 	cjne	r7,#0x10,00129$
      00250C                        842 00129$:
      00250C 50 2B            [24]  843 	jnc	00108$
                           0002A1   844 	C$LCD_Functions.c$177$5_0$50 ==.
                                    845 ;	LCD_Functions.c:177: {   lcdbusywait();
      00250E 12 22 6D         [24]  846 	lcall	_lcdbusywait
                           0002A4   847 	C$LCD_Functions.c$178$5_0$50 ==.
                                    848 ;	LCD_Functions.c:178: Data=DR_READ;
      002511 90 F3 00         [24]  849 	mov	dptr,#_DR_READ
      002514 E0               [24]  850 	movx	a,@dptr
      002515 FF               [12]  851 	mov	r7,a
                           0002A9   852 	C$LCD_Functions.c$179$5_0$50 ==.
                                    853 ;	LCD_Functions.c:179: printf("   %x",Data);
      002516 7E 00            [12]  854 	mov	r6,#0x00
      002518 C0 07            [24]  855 	push	ar7
      00251A C0 06            [24]  856 	push	ar6
      00251C 74 6E            [12]  857 	mov	a,#___str_1
      00251E C0 E0            [24]  858 	push	acc
      002520 74 3A            [12]  859 	mov	a,#(___str_1 >> 8)
      002522 C0 E0            [24]  860 	push	acc
      002524 74 80            [12]  861 	mov	a,#0x80
      002526 C0 E0            [24]  862 	push	acc
      002528 12 30 09         [24]  863 	lcall	_printf
      00252B E5 81            [12]  864 	mov	a,sp
      00252D 24 FB            [12]  865 	add	a,#0xfb
      00252F F5 81            [12]  866 	mov	sp,a
                           0002C4   867 	C$LCD_Functions.c$176$4_0$49 ==.
                                    868 ;	LCD_Functions.c:176: for(j=0;j<16;j++)
      002531 90 04 13         [24]  869 	mov	dptr,#_ddram_dump_j_65536_46
      002534 E0               [24]  870 	movx	a,@dptr
      002535 04               [12]  871 	inc	a
      002536 F0               [24]  872 	movx	@dptr,a
      002537 80 CB            [24]  873 	sjmp	00104$
      002539                        874 00108$:
                           0002CC   875 	C$LCD_Functions.c$174$2_0$47 ==.
                                    876 ;	LCD_Functions.c:174: for(i=0;i<5;i++)
      002539 90 04 12         [24]  877 	mov	dptr,#_ddram_dump_i_65536_46
      00253C E0               [24]  878 	movx	a,@dptr
      00253D 04               [12]  879 	inc	a
      00253E F0               [24]  880 	movx	@dptr,a
      00253F 80 A5            [24]  881 	sjmp	00107$
      002541                        882 00109$:
                           0002D4   883 	C$LCD_Functions.c$182$2_0$46 ==.
                                    884 ;	LCD_Functions.c:182: }
                           0002D4   885 	C$LCD_Functions.c$182$2_0$46 ==.
                           0002D4   886 	XG$ddram_dump$0$0 ==.
      002541 22               [24]  887 	ret
                                    888 	.area CSEG    (CODE)
                                    889 	.area CONST   (CODE)
                           000000   890 FLCD_Functions$__str_0$0_0$0 == .
                                    891 	.area CONST   (CODE)
      003A6B                        892 ___str_0:
      003A6B 0A                     893 	.db 0x0a
      003A6C 0D                     894 	.db 0x0d
      003A6D 00                     895 	.db 0x00
                                    896 	.area CSEG    (CODE)
                           0002D5   897 FLCD_Functions$__str_1$0_0$0 == .
                                    898 	.area CONST   (CODE)
      003A6E                        899 ___str_1:
      003A6E 20 20 20 25 78         900 	.ascii "   %x"
      003A73 00                     901 	.db 0x00
                                    902 	.area CSEG    (CODE)
                                    903 	.area XINIT   (CODE)
                           000000   904 FLCD_Functions$__xinit_column_pos$0_0$0 == .
      003EFC                        905 __xinit__column_pos:
      003EFC 00 00                  906 	.byte #0x00, #0x00	; 0
                           000002   907 FLCD_Functions$__xinit_row_pos$0_0$0 == .
      003EFE                        908 __xinit__row_pos:
      003EFE 00 00                  909 	.byte #0x00, #0x00	; 0
                                    910 	.area CABS    (ABS,CODE)
