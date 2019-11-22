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
                                     11 	.globl _row_pos
                                     12 	.globl _column_pos
                                     13 	.globl _lcd_gotoxy_PARM_2
                                     14 	.globl _DR_READ
                                     15 	.globl _DR_WRITE
                                     16 	.globl _BF_Read
                                     17 	.globl _IR_Write
                                     18 	.globl _lcdbusywait
                                     19 	.globl _delay
                                     20 	.globl _LCD_Init
                                     21 	.globl _LCD_putch
                                     22 	.globl _LCD_putstr
                                     23 	.globl _lcd_clear
                                     24 	.globl _lcd_gotoaddr
                                     25 	.globl _lcd_gotoxy
                                     26 ;--------------------------------------------------------
                                     27 ; special function registers
                                     28 ;--------------------------------------------------------
                                     29 	.area RSEG    (ABS,DATA)
      000000                         30 	.org 0x0000
                                     31 ;--------------------------------------------------------
                                     32 ; special function bits
                                     33 ;--------------------------------------------------------
                                     34 	.area RSEG    (ABS,DATA)
      000000                         35 	.org 0x0000
                                     36 ;--------------------------------------------------------
                                     37 ; overlayable register banks
                                     38 ;--------------------------------------------------------
                                     39 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         40 	.ds 8
                                     41 ;--------------------------------------------------------
                                     42 ; internal ram data
                                     43 ;--------------------------------------------------------
                                     44 	.area DSEG    (DATA)
                                     45 ;--------------------------------------------------------
                                     46 ; overlayable items in internal ram 
                                     47 ;--------------------------------------------------------
                                     48 ;--------------------------------------------------------
                                     49 ; indirectly addressable internal ram data
                                     50 ;--------------------------------------------------------
                                     51 	.area ISEG    (DATA)
                                     52 ;--------------------------------------------------------
                                     53 ; absolute internal ram data
                                     54 ;--------------------------------------------------------
                                     55 	.area IABS    (ABS,DATA)
                                     56 	.area IABS    (ABS,DATA)
                                     57 ;--------------------------------------------------------
                                     58 ; bit data
                                     59 ;--------------------------------------------------------
                                     60 	.area BSEG    (BIT)
                                     61 ;--------------------------------------------------------
                                     62 ; paged external ram data
                                     63 ;--------------------------------------------------------
                                     64 	.area PSEG    (PAG,XDATA)
                                     65 ;--------------------------------------------------------
                                     66 ; external ram data
                                     67 ;--------------------------------------------------------
                                     68 	.area XSEG    (XDATA)
                           00F000    69 G$IR_Write$0_0$0 == 0xf000
                           00F000    70 _IR_Write	=	0xf000
                           00F200    71 G$BF_Read$0_0$0 == 0xf200
                           00F200    72 _BF_Read	=	0xf200
                           00F100    73 G$DR_WRITE$0_0$0 == 0xf100
                           00F100    74 _DR_WRITE	=	0xf100
                           00F300    75 G$DR_READ$0_0$0 == 0xf300
                           00F300    76 _DR_READ	=	0xf300
                           000000    77 LLCD_Functions.delay$time$1_0$25==.
      000400                         78 _delay_time_65536_25:
      000400                         79 	.ds 4
                           000004    80 LLCD_Functions.delay$i$1_0$26==.
      000404                         81 _delay_i_65536_26:
      000404                         82 	.ds 4
                           000008    83 LLCD_Functions.delay$n$1_0$26==.
      000408                         84 _delay_n_65536_26:
      000408                         85 	.ds 4
                           00000C    86 LLCD_Functions.LCD_putch$ch$1_0$33==.
      00040C                         87 _LCD_putch_ch_65536_33:
      00040C                         88 	.ds 1
                           00000D    89 LLCD_Functions.LCD_putstr$str$1_0$35==.
      00040D                         90 _LCD_putstr_str_65536_35:
      00040D                         91 	.ds 2
                           00000F    92 LLCD_Functions.lcd_gotoaddr$addr$1_0$41==.
      00040F                         93 _lcd_gotoaddr_addr_65536_41:
      00040F                         94 	.ds 1
                           000010    95 LLCD_Functions.lcd_gotoxy$column$1_0$43==.
      000410                         96 _lcd_gotoxy_PARM_2:
      000410                         97 	.ds 1
                           000011    98 LLCD_Functions.lcd_gotoxy$row$1_0$43==.
      000411                         99 _lcd_gotoxy_row_65536_43:
      000411                        100 	.ds 1
                                    101 ;--------------------------------------------------------
                                    102 ; absolute external ram data
                                    103 ;--------------------------------------------------------
                                    104 	.area XABS    (ABS,XDATA)
                                    105 ;--------------------------------------------------------
                                    106 ; external initialized ram data
                                    107 ;--------------------------------------------------------
                                    108 	.area XISEG   (XDATA)
                           000000   109 G$column_pos$0_0$0==.
      000461                        110 _column_pos::
      000461                        111 	.ds 2
                           000002   112 G$row_pos$0_0$0==.
      000463                        113 _row_pos::
      000463                        114 	.ds 2
                                    115 	.area HOME    (CODE)
                                    116 	.area GSINIT0 (CODE)
                                    117 	.area GSINIT1 (CODE)
                                    118 	.area GSINIT2 (CODE)
                                    119 	.area GSINIT3 (CODE)
                                    120 	.area GSINIT4 (CODE)
                                    121 	.area GSINIT5 (CODE)
                                    122 	.area GSINIT  (CODE)
                                    123 	.area GSFINAL (CODE)
                                    124 	.area CSEG    (CODE)
                                    125 ;--------------------------------------------------------
                                    126 ; global & static initialisations
                                    127 ;--------------------------------------------------------
                                    128 	.area HOME    (CODE)
                                    129 	.area GSINIT  (CODE)
                                    130 	.area GSFINAL (CODE)
                                    131 	.area GSINIT  (CODE)
                                    132 ;--------------------------------------------------------
                                    133 ; Home
                                    134 ;--------------------------------------------------------
                                    135 	.area HOME    (CODE)
                                    136 	.area HOME    (CODE)
                                    137 ;--------------------------------------------------------
                                    138 ; code
                                    139 ;--------------------------------------------------------
                                    140 	.area CSEG    (CODE)
                                    141 ;------------------------------------------------------------
                                    142 ;Allocation info for local variables in function 'lcdbusywait'
                                    143 ;------------------------------------------------------------
                           000000   144 	G$lcdbusywait$0$0 ==.
                           000000   145 	C$LCD_Functions.c$29$0_0$24 ==.
                                    146 ;	LCD_Functions.c:29: void lcdbusywait(void)
                                    147 ;	-----------------------------------------
                                    148 ;	 function lcdbusywait
                                    149 ;	-----------------------------------------
      00226D                        150 _lcdbusywait:
                           000007   151 	ar7 = 0x07
                           000006   152 	ar6 = 0x06
                           000005   153 	ar5 = 0x05
                           000004   154 	ar4 = 0x04
                           000003   155 	ar3 = 0x03
                           000002   156 	ar2 = 0x02
                           000001   157 	ar1 = 0x01
                           000000   158 	ar0 = 0x00
                           000000   159 	C$LCD_Functions.c$31$1_0$24 ==.
                                    160 ;	LCD_Functions.c:31: while(BF_Read & 0x80);
      00226D                        161 00101$:
      00226D 90 F2 00         [24]  162 	mov	dptr,#_BF_Read
      002270 E0               [24]  163 	movx	a,@dptr
      002271 20 E7 F9         [24]  164 	jb	acc.7,00101$
                           000007   165 	C$LCD_Functions.c$33$1_0$24 ==.
                                    166 ;	LCD_Functions.c:33: }
                           000007   167 	C$LCD_Functions.c$33$1_0$24 ==.
                           000007   168 	XG$lcdbusywait$0$0 ==.
      002274 22               [24]  169 	ret
                                    170 ;------------------------------------------------------------
                                    171 ;Allocation info for local variables in function 'delay'
                                    172 ;------------------------------------------------------------
                                    173 ;time                      Allocated with name '_delay_time_65536_25'
                                    174 ;i                         Allocated with name '_delay_i_65536_26'
                                    175 ;n                         Allocated with name '_delay_n_65536_26'
                                    176 ;------------------------------------------------------------
                           000008   177 	G$delay$0$0 ==.
                           000008   178 	C$LCD_Functions.c$39$1_0$27 ==.
                                    179 ;	LCD_Functions.c:39: void delay(uint32_t time)
                                    180 ;	-----------------------------------------
                                    181 ;	 function delay
                                    182 ;	-----------------------------------------
      002275                        183 _delay:
      002275 AF 82            [24]  184 	mov	r7,dpl
      002277 AE 83            [24]  185 	mov	r6,dph
      002279 AD F0            [24]  186 	mov	r5,b
      00227B FC               [12]  187 	mov	r4,a
      00227C 90 04 00         [24]  188 	mov	dptr,#_delay_time_65536_25
      00227F EF               [12]  189 	mov	a,r7
      002280 F0               [24]  190 	movx	@dptr,a
      002281 EE               [12]  191 	mov	a,r6
      002282 A3               [24]  192 	inc	dptr
      002283 F0               [24]  193 	movx	@dptr,a
      002284 ED               [12]  194 	mov	a,r5
      002285 A3               [24]  195 	inc	dptr
      002286 F0               [24]  196 	movx	@dptr,a
      002287 EC               [12]  197 	mov	a,r4
      002288 A3               [24]  198 	inc	dptr
      002289 F0               [24]  199 	movx	@dptr,a
                           00001D   200 	C$LCD_Functions.c$41$2_0$27 ==.
                                    201 ;	LCD_Functions.c:41: volatile uint32_t i = 0;
      00228A 90 04 04         [24]  202 	mov	dptr,#_delay_i_65536_26
      00228D E4               [12]  203 	clr	a
      00228E F0               [24]  204 	movx	@dptr,a
      00228F A3               [24]  205 	inc	dptr
      002290 F0               [24]  206 	movx	@dptr,a
      002291 A3               [24]  207 	inc	dptr
      002292 F0               [24]  208 	movx	@dptr,a
      002293 A3               [24]  209 	inc	dptr
      002294 F0               [24]  210 	movx	@dptr,a
                           000028   211 	C$LCD_Functions.c$42$2_0$27 ==.
                                    212 ;	LCD_Functions.c:42: volatile uint32_t n = 0;
      002295 90 04 08         [24]  213 	mov	dptr,#_delay_n_65536_26
      002298 F0               [24]  214 	movx	@dptr,a
      002299 A3               [24]  215 	inc	dptr
      00229A F0               [24]  216 	movx	@dptr,a
      00229B A3               [24]  217 	inc	dptr
      00229C F0               [24]  218 	movx	@dptr,a
      00229D A3               [24]  219 	inc	dptr
      00229E F0               [24]  220 	movx	@dptr,a
                           000032   221 	C$LCD_Functions.c$43$2_0$27 ==.
                                    222 ;	LCD_Functions.c:43: for(i=0;i<time;i++)
      00229F 90 04 04         [24]  223 	mov	dptr,#_delay_i_65536_26
      0022A2 F0               [24]  224 	movx	@dptr,a
      0022A3 A3               [24]  225 	inc	dptr
      0022A4 F0               [24]  226 	movx	@dptr,a
      0022A5 A3               [24]  227 	inc	dptr
      0022A6 F0               [24]  228 	movx	@dptr,a
      0022A7 A3               [24]  229 	inc	dptr
      0022A8 F0               [24]  230 	movx	@dptr,a
      0022A9 90 04 00         [24]  231 	mov	dptr,#_delay_time_65536_25
      0022AC E0               [24]  232 	movx	a,@dptr
      0022AD FC               [12]  233 	mov	r4,a
      0022AE A3               [24]  234 	inc	dptr
      0022AF E0               [24]  235 	movx	a,@dptr
      0022B0 FD               [12]  236 	mov	r5,a
      0022B1 A3               [24]  237 	inc	dptr
      0022B2 E0               [24]  238 	movx	a,@dptr
      0022B3 FE               [12]  239 	mov	r6,a
      0022B4 A3               [24]  240 	inc	dptr
      0022B5 E0               [24]  241 	movx	a,@dptr
      0022B6 FF               [12]  242 	mov	r7,a
      0022B7                        243 00107$:
      0022B7 90 04 04         [24]  244 	mov	dptr,#_delay_i_65536_26
      0022BA E0               [24]  245 	movx	a,@dptr
      0022BB F8               [12]  246 	mov	r0,a
      0022BC A3               [24]  247 	inc	dptr
      0022BD E0               [24]  248 	movx	a,@dptr
      0022BE F9               [12]  249 	mov	r1,a
      0022BF A3               [24]  250 	inc	dptr
      0022C0 E0               [24]  251 	movx	a,@dptr
      0022C1 FA               [12]  252 	mov	r2,a
      0022C2 A3               [24]  253 	inc	dptr
      0022C3 E0               [24]  254 	movx	a,@dptr
      0022C4 FB               [12]  255 	mov	r3,a
      0022C5 C3               [12]  256 	clr	c
      0022C6 E8               [12]  257 	mov	a,r0
      0022C7 9C               [12]  258 	subb	a,r4
      0022C8 E9               [12]  259 	mov	a,r1
      0022C9 9D               [12]  260 	subb	a,r5
      0022CA EA               [12]  261 	mov	a,r2
      0022CB 9E               [12]  262 	subb	a,r6
      0022CC EB               [12]  263 	mov	a,r3
      0022CD 9F               [12]  264 	subb	a,r7
      0022CE 50 6F            [24]  265 	jnc	00109$
                           000063   266 	C$LCD_Functions.c$45$4_0$29 ==.
                                    267 ;	LCD_Functions.c:45: for(n=0;n<127;n++)
      0022D0 90 04 08         [24]  268 	mov	dptr,#_delay_n_65536_26
      0022D3 E4               [12]  269 	clr	a
      0022D4 F0               [24]  270 	movx	@dptr,a
      0022D5 A3               [24]  271 	inc	dptr
      0022D6 F0               [24]  272 	movx	@dptr,a
      0022D7 A3               [24]  273 	inc	dptr
      0022D8 F0               [24]  274 	movx	@dptr,a
      0022D9 A3               [24]  275 	inc	dptr
      0022DA F0               [24]  276 	movx	@dptr,a
      0022DB                        277 00104$:
      0022DB 90 04 08         [24]  278 	mov	dptr,#_delay_n_65536_26
      0022DE E0               [24]  279 	movx	a,@dptr
      0022DF F8               [12]  280 	mov	r0,a
      0022E0 A3               [24]  281 	inc	dptr
      0022E1 E0               [24]  282 	movx	a,@dptr
      0022E2 F9               [12]  283 	mov	r1,a
      0022E3 A3               [24]  284 	inc	dptr
      0022E4 E0               [24]  285 	movx	a,@dptr
      0022E5 FA               [12]  286 	mov	r2,a
      0022E6 A3               [24]  287 	inc	dptr
      0022E7 E0               [24]  288 	movx	a,@dptr
      0022E8 FB               [12]  289 	mov	r3,a
      0022E9 C3               [12]  290 	clr	c
      0022EA E8               [12]  291 	mov	a,r0
      0022EB 94 7F            [12]  292 	subb	a,#0x7f
      0022ED E9               [12]  293 	mov	a,r1
      0022EE 94 00            [12]  294 	subb	a,#0x00
      0022F0 EA               [12]  295 	mov	a,r2
      0022F1 94 00            [12]  296 	subb	a,#0x00
      0022F3 EB               [12]  297 	mov	a,r3
      0022F4 94 00            [12]  298 	subb	a,#0x00
      0022F6 50 23            [24]  299 	jnc	00108$
      0022F8 90 04 08         [24]  300 	mov	dptr,#_delay_n_65536_26
      0022FB E0               [24]  301 	movx	a,@dptr
      0022FC F8               [12]  302 	mov	r0,a
      0022FD A3               [24]  303 	inc	dptr
      0022FE E0               [24]  304 	movx	a,@dptr
      0022FF F9               [12]  305 	mov	r1,a
      002300 A3               [24]  306 	inc	dptr
      002301 E0               [24]  307 	movx	a,@dptr
      002302 FA               [12]  308 	mov	r2,a
      002303 A3               [24]  309 	inc	dptr
      002304 E0               [24]  310 	movx	a,@dptr
      002305 FB               [12]  311 	mov	r3,a
      002306 90 04 08         [24]  312 	mov	dptr,#_delay_n_65536_26
      002309 74 01            [12]  313 	mov	a,#0x01
      00230B 28               [12]  314 	add	a,r0
      00230C F0               [24]  315 	movx	@dptr,a
      00230D E4               [12]  316 	clr	a
      00230E 39               [12]  317 	addc	a,r1
      00230F A3               [24]  318 	inc	dptr
      002310 F0               [24]  319 	movx	@dptr,a
      002311 E4               [12]  320 	clr	a
      002312 3A               [12]  321 	addc	a,r2
      002313 A3               [24]  322 	inc	dptr
      002314 F0               [24]  323 	movx	@dptr,a
      002315 E4               [12]  324 	clr	a
      002316 3B               [12]  325 	addc	a,r3
      002317 A3               [24]  326 	inc	dptr
      002318 F0               [24]  327 	movx	@dptr,a
      002319 80 C0            [24]  328 	sjmp	00104$
      00231B                        329 00108$:
                           0000AE   330 	C$LCD_Functions.c$43$2_0$27 ==.
                                    331 ;	LCD_Functions.c:43: for(i=0;i<time;i++)
      00231B 90 04 04         [24]  332 	mov	dptr,#_delay_i_65536_26
      00231E E0               [24]  333 	movx	a,@dptr
      00231F F8               [12]  334 	mov	r0,a
      002320 A3               [24]  335 	inc	dptr
      002321 E0               [24]  336 	movx	a,@dptr
      002322 F9               [12]  337 	mov	r1,a
      002323 A3               [24]  338 	inc	dptr
      002324 E0               [24]  339 	movx	a,@dptr
      002325 FA               [12]  340 	mov	r2,a
      002326 A3               [24]  341 	inc	dptr
      002327 E0               [24]  342 	movx	a,@dptr
      002328 FB               [12]  343 	mov	r3,a
      002329 90 04 04         [24]  344 	mov	dptr,#_delay_i_65536_26
      00232C 74 01            [12]  345 	mov	a,#0x01
      00232E 28               [12]  346 	add	a,r0
      00232F F0               [24]  347 	movx	@dptr,a
      002330 E4               [12]  348 	clr	a
      002331 39               [12]  349 	addc	a,r1
      002332 A3               [24]  350 	inc	dptr
      002333 F0               [24]  351 	movx	@dptr,a
      002334 E4               [12]  352 	clr	a
      002335 3A               [12]  353 	addc	a,r2
      002336 A3               [24]  354 	inc	dptr
      002337 F0               [24]  355 	movx	@dptr,a
      002338 E4               [12]  356 	clr	a
      002339 3B               [12]  357 	addc	a,r3
      00233A A3               [24]  358 	inc	dptr
      00233B F0               [24]  359 	movx	@dptr,a
      00233C 02 22 B7         [24]  360 	ljmp	00107$
      00233F                        361 00109$:
                           0000D2   362 	C$LCD_Functions.c$50$2_0$27 ==.
                                    363 ;	LCD_Functions.c:50: }
                           0000D2   364 	C$LCD_Functions.c$50$2_0$27 ==.
                           0000D2   365 	XG$delay$0$0 ==.
      00233F 22               [24]  366 	ret
                                    367 ;------------------------------------------------------------
                                    368 ;Allocation info for local variables in function 'LCD_Init'
                                    369 ;------------------------------------------------------------
                           0000D3   370 	G$LCD_Init$0$0 ==.
                           0000D3   371 	C$LCD_Functions.c$56$2_0$32 ==.
                                    372 ;	LCD_Functions.c:56: void LCD_Init(void)
                                    373 ;	-----------------------------------------
                                    374 ;	 function LCD_Init
                                    375 ;	-----------------------------------------
      002340                        376 _LCD_Init:
                           0000D3   377 	C$LCD_Functions.c$60$1_0$32 ==.
                                    378 ;	LCD_Functions.c:60: delay(15);
      002340 90 00 0F         [24]  379 	mov	dptr,#(0x0f&0x00ff)
      002343 E4               [12]  380 	clr	a
      002344 F5 F0            [12]  381 	mov	b,a
      002346 12 22 75         [24]  382 	lcall	_delay
                           0000DC   383 	C$LCD_Functions.c$61$1_0$32 ==.
                                    384 ;	LCD_Functions.c:61: IR_Write = LCD_Function_set;
      002349 90 F0 00         [24]  385 	mov	dptr,#_IR_Write
      00234C 74 38            [12]  386 	mov	a,#0x38
      00234E F0               [24]  387 	movx	@dptr,a
                           0000E2   388 	C$LCD_Functions.c$63$1_0$32 ==.
                                    389 ;	LCD_Functions.c:63: delay(5);
      00234F 90 00 05         [24]  390 	mov	dptr,#(0x05&0x00ff)
      002352 E4               [12]  391 	clr	a
      002353 F5 F0            [12]  392 	mov	b,a
      002355 12 22 75         [24]  393 	lcall	_delay
                           0000EB   394 	C$LCD_Functions.c$64$1_0$32 ==.
                                    395 ;	LCD_Functions.c:64: IR_Write = LCD_Function_set;
      002358 90 F0 00         [24]  396 	mov	dptr,#_IR_Write
      00235B 74 38            [12]  397 	mov	a,#0x38
      00235D F0               [24]  398 	movx	@dptr,a
                           0000F1   399 	C$LCD_Functions.c$66$1_0$32 ==.
                                    400 ;	LCD_Functions.c:66: delay(1);
      00235E 90 00 01         [24]  401 	mov	dptr,#(0x01&0x00ff)
      002361 E4               [12]  402 	clr	a
      002362 F5 F0            [12]  403 	mov	b,a
      002364 12 22 75         [24]  404 	lcall	_delay
                           0000FA   405 	C$LCD_Functions.c$67$1_0$32 ==.
                                    406 ;	LCD_Functions.c:67: IR_Write = LCD_Function_set;
      002367 90 F0 00         [24]  407 	mov	dptr,#_IR_Write
      00236A 74 38            [12]  408 	mov	a,#0x38
      00236C F0               [24]  409 	movx	@dptr,a
                           000100   410 	C$LCD_Functions.c$69$1_0$32 ==.
                                    411 ;	LCD_Functions.c:69: lcdbusywait();
      00236D 12 22 6D         [24]  412 	lcall	_lcdbusywait
                           000103   413 	C$LCD_Functions.c$71$1_0$32 ==.
                                    414 ;	LCD_Functions.c:71: IR_Write = LCD_Function_set;
      002370 90 F0 00         [24]  415 	mov	dptr,#_IR_Write
      002373 74 38            [12]  416 	mov	a,#0x38
      002375 F0               [24]  417 	movx	@dptr,a
                           000109   418 	C$LCD_Functions.c$73$1_0$32 ==.
                                    419 ;	LCD_Functions.c:73: lcdbusywait();
      002376 12 22 6D         [24]  420 	lcall	_lcdbusywait
                           00010C   421 	C$LCD_Functions.c$75$1_0$32 ==.
                                    422 ;	LCD_Functions.c:75: IR_Write = LCD_display_off;
      002379 90 F0 00         [24]  423 	mov	dptr,#_IR_Write
      00237C 74 08            [12]  424 	mov	a,#0x08
      00237E F0               [24]  425 	movx	@dptr,a
                           000112   426 	C$LCD_Functions.c$77$1_0$32 ==.
                                    427 ;	LCD_Functions.c:77: lcdbusywait();
      00237F 12 22 6D         [24]  428 	lcall	_lcdbusywait
                           000115   429 	C$LCD_Functions.c$79$1_0$32 ==.
                                    430 ;	LCD_Functions.c:79: IR_Write = LCD_display_on;
      002382 90 F0 00         [24]  431 	mov	dptr,#_IR_Write
      002385 74 0E            [12]  432 	mov	a,#0x0e
      002387 F0               [24]  433 	movx	@dptr,a
                           00011B   434 	C$LCD_Functions.c$81$1_0$32 ==.
                                    435 ;	LCD_Functions.c:81: lcdbusywait();
      002388 12 22 6D         [24]  436 	lcall	_lcdbusywait
                           00011E   437 	C$LCD_Functions.c$83$1_0$32 ==.
                                    438 ;	LCD_Functions.c:83: IR_Write = LCD_entrymode_set;
      00238B 90 F0 00         [24]  439 	mov	dptr,#_IR_Write
      00238E 74 06            [12]  440 	mov	a,#0x06
      002390 F0               [24]  441 	movx	@dptr,a
                           000124   442 	C$LCD_Functions.c$85$1_0$32 ==.
                                    443 ;	LCD_Functions.c:85: lcdbusywait();
      002391 12 22 6D         [24]  444 	lcall	_lcdbusywait
                           000127   445 	C$LCD_Functions.c$87$1_0$32 ==.
                                    446 ;	LCD_Functions.c:87: IR_Write = LCD_Clearscreen;
      002394 90 F0 00         [24]  447 	mov	dptr,#_IR_Write
      002397 74 01            [12]  448 	mov	a,#0x01
      002399 F0               [24]  449 	movx	@dptr,a
                           00012D   450 	C$LCD_Functions.c$88$1_0$32 ==.
                                    451 ;	LCD_Functions.c:88: }
                           00012D   452 	C$LCD_Functions.c$88$1_0$32 ==.
                           00012D   453 	XG$LCD_Init$0$0 ==.
      00239A 22               [24]  454 	ret
                                    455 ;------------------------------------------------------------
                                    456 ;Allocation info for local variables in function 'LCD_putch'
                                    457 ;------------------------------------------------------------
                                    458 ;ch                        Allocated with name '_LCD_putch_ch_65536_33'
                                    459 ;------------------------------------------------------------
                           00012E   460 	G$LCD_putch$0$0 ==.
                           00012E   461 	C$LCD_Functions.c$95$1_0$34 ==.
                                    462 ;	LCD_Functions.c:95: void LCD_putch(__xdata uint8_t ch)
                                    463 ;	-----------------------------------------
                                    464 ;	 function LCD_putch
                                    465 ;	-----------------------------------------
      00239B                        466 _LCD_putch:
      00239B E5 82            [12]  467 	mov	a,dpl
      00239D 90 04 0C         [24]  468 	mov	dptr,#_LCD_putch_ch_65536_33
      0023A0 F0               [24]  469 	movx	@dptr,a
                           000134   470 	C$LCD_Functions.c$97$1_0$34 ==.
                                    471 ;	LCD_Functions.c:97: lcdbusywait();
      0023A1 12 22 6D         [24]  472 	lcall	_lcdbusywait
                           000137   473 	C$LCD_Functions.c$98$1_0$34 ==.
                                    474 ;	LCD_Functions.c:98: DR_WRITE=ch;
      0023A4 90 04 0C         [24]  475 	mov	dptr,#_LCD_putch_ch_65536_33
      0023A7 E0               [24]  476 	movx	a,@dptr
      0023A8 90 F1 00         [24]  477 	mov	dptr,#_DR_WRITE
      0023AB F0               [24]  478 	movx	@dptr,a
                           00013F   479 	C$LCD_Functions.c$99$1_0$34 ==.
                                    480 ;	LCD_Functions.c:99: }
                           00013F   481 	C$LCD_Functions.c$99$1_0$34 ==.
                           00013F   482 	XG$LCD_putch$0$0 ==.
      0023AC 22               [24]  483 	ret
                                    484 ;------------------------------------------------------------
                                    485 ;Allocation info for local variables in function 'LCD_putstr'
                                    486 ;------------------------------------------------------------
                                    487 ;str                       Allocated with name '_LCD_putstr_str_65536_35'
                                    488 ;------------------------------------------------------------
                           000140   489 	G$LCD_putstr$0$0 ==.
                           000140   490 	C$LCD_Functions.c$106$1_0$36 ==.
                                    491 ;	LCD_Functions.c:106: void LCD_putstr(__xdata uint8_t * str)
                                    492 ;	-----------------------------------------
                                    493 ;	 function LCD_putstr
                                    494 ;	-----------------------------------------
      0023AD                        495 _LCD_putstr:
      0023AD AF 83            [24]  496 	mov	r7,dph
      0023AF E5 82            [12]  497 	mov	a,dpl
      0023B1 90 04 0D         [24]  498 	mov	dptr,#_LCD_putstr_str_65536_35
      0023B4 F0               [24]  499 	movx	@dptr,a
      0023B5 EF               [12]  500 	mov	a,r7
      0023B6 A3               [24]  501 	inc	dptr
      0023B7 F0               [24]  502 	movx	@dptr,a
                           00014B   503 	C$LCD_Functions.c$108$1_0$36 ==.
                                    504 ;	LCD_Functions.c:108: while(*str!='\0')
      0023B8 90 04 0D         [24]  505 	mov	dptr,#_LCD_putstr_str_65536_35
      0023BB E0               [24]  506 	movx	a,@dptr
      0023BC FE               [12]  507 	mov	r6,a
      0023BD A3               [24]  508 	inc	dptr
      0023BE E0               [24]  509 	movx	a,@dptr
      0023BF FF               [12]  510 	mov	r7,a
      0023C0                        511 00103$:
      0023C0 8E 82            [24]  512 	mov	dpl,r6
      0023C2 8F 83            [24]  513 	mov	dph,r7
      0023C4 E0               [24]  514 	movx	a,@dptr
      0023C5 70 03            [24]  515 	jnz	00121$
      0023C7 02 24 53         [24]  516 	ljmp	00111$
      0023CA                        517 00121$:
                           00015D   518 	C$LCD_Functions.c$110$2_0$37 ==.
                                    519 ;	LCD_Functions.c:110: lcdbusywait();
      0023CA C0 07            [24]  520 	push	ar7
      0023CC C0 06            [24]  521 	push	ar6
      0023CE 12 22 6D         [24]  522 	lcall	_lcdbusywait
      0023D1 D0 06            [24]  523 	pop	ar6
      0023D3 D0 07            [24]  524 	pop	ar7
                           000168   525 	C$LCD_Functions.c$111$2_0$37 ==.
                                    526 ;	LCD_Functions.c:111: LCD_putch(*str++);
      0023D5 8E 82            [24]  527 	mov	dpl,r6
      0023D7 8F 83            [24]  528 	mov	dph,r7
      0023D9 E0               [24]  529 	movx	a,@dptr
      0023DA FD               [12]  530 	mov	r5,a
      0023DB A3               [24]  531 	inc	dptr
      0023DC AE 82            [24]  532 	mov	r6,dpl
      0023DE AF 83            [24]  533 	mov	r7,dph
      0023E0 90 04 0D         [24]  534 	mov	dptr,#_LCD_putstr_str_65536_35
      0023E3 EE               [12]  535 	mov	a,r6
      0023E4 F0               [24]  536 	movx	@dptr,a
      0023E5 EF               [12]  537 	mov	a,r7
      0023E6 A3               [24]  538 	inc	dptr
      0023E7 F0               [24]  539 	movx	@dptr,a
      0023E8 8D 82            [24]  540 	mov	dpl,r5
      0023EA C0 07            [24]  541 	push	ar7
      0023EC C0 06            [24]  542 	push	ar6
      0023EE 12 23 9B         [24]  543 	lcall	_LCD_putch
      0023F1 D0 06            [24]  544 	pop	ar6
      0023F3 D0 07            [24]  545 	pop	ar7
                           000188   546 	C$LCD_Functions.c$112$2_0$37 ==.
                                    547 ;	LCD_Functions.c:112: column_pos++;
      0023F5 90 04 61         [24]  548 	mov	dptr,#_column_pos
      0023F8 E0               [24]  549 	movx	a,@dptr
      0023F9 FC               [12]  550 	mov	r4,a
      0023FA A3               [24]  551 	inc	dptr
      0023FB E0               [24]  552 	movx	a,@dptr
      0023FC FD               [12]  553 	mov	r5,a
      0023FD 90 04 61         [24]  554 	mov	dptr,#_column_pos
      002400 74 01            [12]  555 	mov	a,#0x01
      002402 2C               [12]  556 	add	a,r4
      002403 F0               [24]  557 	movx	@dptr,a
      002404 E4               [12]  558 	clr	a
      002405 3D               [12]  559 	addc	a,r5
      002406 A3               [24]  560 	inc	dptr
      002407 F0               [24]  561 	movx	@dptr,a
                           00019B   562 	C$LCD_Functions.c$113$2_0$37 ==.
                                    563 ;	LCD_Functions.c:113: if(column_pos==16)
      002408 90 04 61         [24]  564 	mov	dptr,#_column_pos
      00240B E0               [24]  565 	movx	a,@dptr
      00240C FC               [12]  566 	mov	r4,a
      00240D A3               [24]  567 	inc	dptr
      00240E E0               [24]  568 	movx	a,@dptr
      00240F FD               [12]  569 	mov	r5,a
      002410 BC 10 AD         [24]  570 	cjne	r4,#0x10,00103$
      002413 BD 00 AA         [24]  571 	cjne	r5,#0x00,00103$
                           0001A9   572 	C$LCD_Functions.c$115$3_0$38 ==.
                                    573 ;	LCD_Functions.c:115: row_pos++;
      002416 90 04 63         [24]  574 	mov	dptr,#_row_pos
      002419 E0               [24]  575 	movx	a,@dptr
      00241A FC               [12]  576 	mov	r4,a
      00241B A3               [24]  577 	inc	dptr
      00241C E0               [24]  578 	movx	a,@dptr
      00241D FD               [12]  579 	mov	r5,a
      00241E 90 04 63         [24]  580 	mov	dptr,#_row_pos
      002421 74 01            [12]  581 	mov	a,#0x01
      002423 2C               [12]  582 	add	a,r4
      002424 F0               [24]  583 	movx	@dptr,a
      002425 E4               [12]  584 	clr	a
      002426 3D               [12]  585 	addc	a,r5
      002427 A3               [24]  586 	inc	dptr
      002428 F0               [24]  587 	movx	@dptr,a
                           0001BC   588 	C$LCD_Functions.c$116$3_0$38 ==.
                                    589 ;	LCD_Functions.c:116: column_pos=0;
      002429 90 04 61         [24]  590 	mov	dptr,#_column_pos
      00242C E4               [12]  591 	clr	a
      00242D F0               [24]  592 	movx	@dptr,a
      00242E A3               [24]  593 	inc	dptr
      00242F F0               [24]  594 	movx	@dptr,a
                           0001C3   595 	C$LCD_Functions.c$117$3_0$38 ==.
                                    596 ;	LCD_Functions.c:117: lcd_gotoxy(row_pos,column_pos);
      002430 90 04 63         [24]  597 	mov	dptr,#_row_pos
      002433 E0               [24]  598 	movx	a,@dptr
      002434 FC               [12]  599 	mov	r4,a
      002435 A3               [24]  600 	inc	dptr
      002436 E0               [24]  601 	movx	a,@dptr
      002437 90 04 61         [24]  602 	mov	dptr,#_column_pos
      00243A E0               [24]  603 	movx	a,@dptr
      00243B FB               [12]  604 	mov	r3,a
      00243C A3               [24]  605 	inc	dptr
      00243D E0               [24]  606 	movx	a,@dptr
      00243E 90 04 10         [24]  607 	mov	dptr,#_lcd_gotoxy_PARM_2
      002441 EB               [12]  608 	mov	a,r3
      002442 F0               [24]  609 	movx	@dptr,a
      002443 8C 82            [24]  610 	mov	dpl,r4
      002445 C0 07            [24]  611 	push	ar7
      002447 C0 06            [24]  612 	push	ar6
      002449 12 24 7A         [24]  613 	lcall	_lcd_gotoxy
      00244C D0 06            [24]  614 	pop	ar6
      00244E D0 07            [24]  615 	pop	ar7
      002450 02 23 C0         [24]  616 	ljmp	00103$
      002453                        617 00111$:
      002453 90 04 0D         [24]  618 	mov	dptr,#_LCD_putstr_str_65536_35
      002456 EE               [12]  619 	mov	a,r6
      002457 F0               [24]  620 	movx	@dptr,a
      002458 EF               [12]  621 	mov	a,r7
      002459 A3               [24]  622 	inc	dptr
      00245A F0               [24]  623 	movx	@dptr,a
                           0001EE   624 	C$LCD_Functions.c$120$1_0$36 ==.
                                    625 ;	LCD_Functions.c:120: }
                           0001EE   626 	C$LCD_Functions.c$120$1_0$36 ==.
                           0001EE   627 	XG$LCD_putstr$0$0 ==.
      00245B 22               [24]  628 	ret
                                    629 ;------------------------------------------------------------
                                    630 ;Allocation info for local variables in function 'lcd_clear'
                                    631 ;------------------------------------------------------------
                           0001EF   632 	G$lcd_clear$0$0 ==.
                           0001EF   633 	C$LCD_Functions.c$127$1_0$40 ==.
                                    634 ;	LCD_Functions.c:127: void lcd_clear(void)
                                    635 ;	-----------------------------------------
                                    636 ;	 function lcd_clear
                                    637 ;	-----------------------------------------
      00245C                        638 _lcd_clear:
                           0001EF   639 	C$LCD_Functions.c$129$1_0$40 ==.
                                    640 ;	LCD_Functions.c:129: lcdbusywait();
      00245C 12 22 6D         [24]  641 	lcall	_lcdbusywait
                           0001F2   642 	C$LCD_Functions.c$130$1_0$40 ==.
                                    643 ;	LCD_Functions.c:130: IR_Write=LCD_Clearscreen;
      00245F 90 F0 00         [24]  644 	mov	dptr,#_IR_Write
      002462 74 01            [12]  645 	mov	a,#0x01
      002464 F0               [24]  646 	movx	@dptr,a
                           0001F8   647 	C$LCD_Functions.c$131$1_0$40 ==.
                                    648 ;	LCD_Functions.c:131: }
                           0001F8   649 	C$LCD_Functions.c$131$1_0$40 ==.
                           0001F8   650 	XG$lcd_clear$0$0 ==.
      002465 22               [24]  651 	ret
                                    652 ;------------------------------------------------------------
                                    653 ;Allocation info for local variables in function 'lcd_gotoaddr'
                                    654 ;------------------------------------------------------------
                                    655 ;addr                      Allocated with name '_lcd_gotoaddr_addr_65536_41'
                                    656 ;------------------------------------------------------------
                           0001F9   657 	G$lcd_gotoaddr$0$0 ==.
                           0001F9   658 	C$LCD_Functions.c$132$1_0$42 ==.
                                    659 ;	LCD_Functions.c:132: void lcd_gotoaddr(unsigned char addr)
                                    660 ;	-----------------------------------------
                                    661 ;	 function lcd_gotoaddr
                                    662 ;	-----------------------------------------
      002466                        663 _lcd_gotoaddr:
      002466 E5 82            [12]  664 	mov	a,dpl
      002468 90 04 0F         [24]  665 	mov	dptr,#_lcd_gotoaddr_addr_65536_41
      00246B F0               [24]  666 	movx	@dptr,a
                           0001FF   667 	C$LCD_Functions.c$134$1_0$42 ==.
                                    668 ;	LCD_Functions.c:134: lcdbusywait();
      00246C 12 22 6D         [24]  669 	lcall	_lcdbusywait
                           000202   670 	C$LCD_Functions.c$135$1_0$42 ==.
                                    671 ;	LCD_Functions.c:135: IR_Write=addr|0x80;
      00246F 90 04 0F         [24]  672 	mov	dptr,#_lcd_gotoaddr_addr_65536_41
      002472 E0               [24]  673 	movx	a,@dptr
      002473 90 F0 00         [24]  674 	mov	dptr,#_IR_Write
      002476 44 80            [12]  675 	orl	a,#0x80
      002478 F0               [24]  676 	movx	@dptr,a
                           00020C   677 	C$LCD_Functions.c$136$1_0$42 ==.
                                    678 ;	LCD_Functions.c:136: }
                           00020C   679 	C$LCD_Functions.c$136$1_0$42 ==.
                           00020C   680 	XG$lcd_gotoaddr$0$0 ==.
      002479 22               [24]  681 	ret
                                    682 ;------------------------------------------------------------
                                    683 ;Allocation info for local variables in function 'lcd_gotoxy'
                                    684 ;------------------------------------------------------------
                                    685 ;column                    Allocated with name '_lcd_gotoxy_PARM_2'
                                    686 ;row                       Allocated with name '_lcd_gotoxy_row_65536_43'
                                    687 ;------------------------------------------------------------
                           00020D   688 	G$lcd_gotoxy$0$0 ==.
                           00020D   689 	C$LCD_Functions.c$137$1_0$44 ==.
                                    690 ;	LCD_Functions.c:137: void lcd_gotoxy(unsigned char row,unsigned char column)
                                    691 ;	-----------------------------------------
                                    692 ;	 function lcd_gotoxy
                                    693 ;	-----------------------------------------
      00247A                        694 _lcd_gotoxy:
      00247A E5 82            [12]  695 	mov	a,dpl
      00247C 90 04 11         [24]  696 	mov	dptr,#_lcd_gotoxy_row_65536_43
      00247F F0               [24]  697 	movx	@dptr,a
                           000213   698 	C$LCD_Functions.c$138$1_0$44 ==.
                                    699 ;	LCD_Functions.c:138: {   column_pos=column;
      002480 90 04 10         [24]  700 	mov	dptr,#_lcd_gotoxy_PARM_2
      002483 E0               [24]  701 	movx	a,@dptr
      002484 FF               [12]  702 	mov	r7,a
      002485 90 04 61         [24]  703 	mov	dptr,#_column_pos
      002488 F0               [24]  704 	movx	@dptr,a
      002489 E4               [12]  705 	clr	a
      00248A A3               [24]  706 	inc	dptr
      00248B F0               [24]  707 	movx	@dptr,a
                           00021F   708 	C$LCD_Functions.c$139$1_0$44 ==.
                                    709 ;	LCD_Functions.c:139: row_pos=row;
      00248C 90 04 11         [24]  710 	mov	dptr,#_lcd_gotoxy_row_65536_43
      00248F E0               [24]  711 	movx	a,@dptr
      002490 FE               [12]  712 	mov	r6,a
      002491 90 04 63         [24]  713 	mov	dptr,#_row_pos
      002494 F0               [24]  714 	movx	@dptr,a
      002495 E4               [12]  715 	clr	a
      002496 A3               [24]  716 	inc	dptr
      002497 F0               [24]  717 	movx	@dptr,a
                           00022B   718 	C$LCD_Functions.c$140$1_0$44 ==.
                                    719 ;	LCD_Functions.c:140: switch(row)
      002498 BE 01 02         [24]  720 	cjne	r6,#0x01,00125$
      00249B 80 0F            [24]  721 	sjmp	00101$
      00249D                        722 00125$:
      00249D BE 02 02         [24]  723 	cjne	r6,#0x02,00126$
      0024A0 80 11            [24]  724 	sjmp	00102$
      0024A2                        725 00126$:
      0024A2 BE 03 02         [24]  726 	cjne	r6,#0x03,00127$
      0024A5 80 18            [24]  727 	sjmp	00103$
      0024A7                        728 00127$:
                           00023A   729 	C$LCD_Functions.c$142$2_0$45 ==.
                                    730 ;	LCD_Functions.c:142: case 1: lcd_gotoaddr(column);
      0024A7 BE 04 29         [24]  731 	cjne	r6,#0x04,00107$
      0024AA 80 1F            [24]  732 	sjmp	00104$
      0024AC                        733 00101$:
      0024AC 8F 82            [24]  734 	mov	dpl,r7
      0024AE 12 24 66         [24]  735 	lcall	_lcd_gotoaddr
                           000244   736 	C$LCD_Functions.c$143$2_0$45 ==.
                                    737 ;	LCD_Functions.c:143: break;
                           000244   738 	C$LCD_Functions.c$144$2_0$45 ==.
                                    739 ;	LCD_Functions.c:144: case 2: lcd_gotoaddr(63+column);
      0024B1 80 20            [24]  740 	sjmp	00107$
      0024B3                        741 00102$:
      0024B3 8F 06            [24]  742 	mov	ar6,r7
      0024B5 74 3F            [12]  743 	mov	a,#0x3f
      0024B7 2E               [12]  744 	add	a,r6
      0024B8 F5 82            [12]  745 	mov	dpl,a
      0024BA 12 24 66         [24]  746 	lcall	_lcd_gotoaddr
                           000250   747 	C$LCD_Functions.c$145$2_0$45 ==.
                                    748 ;	LCD_Functions.c:145: break;
                           000250   749 	C$LCD_Functions.c$146$2_0$45 ==.
                                    750 ;	LCD_Functions.c:146: case 3: lcd_gotoaddr(15+column);
      0024BD 80 14            [24]  751 	sjmp	00107$
      0024BF                        752 00103$:
      0024BF 8F 06            [24]  753 	mov	ar6,r7
      0024C1 74 0F            [12]  754 	mov	a,#0x0f
      0024C3 2E               [12]  755 	add	a,r6
      0024C4 F5 82            [12]  756 	mov	dpl,a
      0024C6 12 24 66         [24]  757 	lcall	_lcd_gotoaddr
                           00025C   758 	C$LCD_Functions.c$147$2_0$45 ==.
                                    759 ;	LCD_Functions.c:147: break;
                           00025C   760 	C$LCD_Functions.c$148$2_0$45 ==.
                                    761 ;	LCD_Functions.c:148: case 4: lcd_gotoaddr(80+column);
      0024C9 80 08            [24]  762 	sjmp	00107$
      0024CB                        763 00104$:
      0024CB 74 50            [12]  764 	mov	a,#0x50
      0024CD 2F               [12]  765 	add	a,r7
      0024CE F5 82            [12]  766 	mov	dpl,a
      0024D0 12 24 66         [24]  767 	lcall	_lcd_gotoaddr
                           000266   768 	C$LCD_Functions.c$152$1_0$44 ==.
                                    769 ;	LCD_Functions.c:152: }
      0024D3                        770 00107$:
                           000266   771 	C$LCD_Functions.c$153$1_0$44 ==.
                                    772 ;	LCD_Functions.c:153: }
                           000266   773 	C$LCD_Functions.c$153$1_0$44 ==.
                           000266   774 	XG$lcd_gotoxy$0$0 ==.
      0024D3 22               [24]  775 	ret
                                    776 	.area CSEG    (CODE)
                                    777 	.area CONST   (CODE)
                                    778 	.area XINIT   (CODE)
                           000000   779 FLCD_Functions$__xinit_column_pos$0_0$0 == .
      0032F0                        780 __xinit__column_pos:
      0032F0 00 00                  781 	.byte #0x00, #0x00	; 0
                           000002   782 FLCD_Functions$__xinit_row_pos$0_0$0 == .
      0032F2                        783 __xinit__row_pos:
      0032F2 00 00                  784 	.byte #0x00, #0x00	; 0
                                    785 	.area CABS    (ABS,CODE)
