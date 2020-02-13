                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.9.0 #11195 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _help
                                     13 	.globl _eereset
                                     14 	.globl _get_block
                                     15 	.globl _getstr_data
                                     16 	.globl _getstr_addr
                                     17 	.globl _getchar
                                     18 	.globl _delay
                                     19 	.globl _dummy_write
                                     20 	.globl _dummy_read
                                     21 	.globl _reeprom_seq
                                     22 	.globl _reeprom
                                     23 	.globl _weeprom
                                     24 	.globl _printf_tiny
                                     25 ;--------------------------------------------------------
                                     26 ; special function registers
                                     27 ;--------------------------------------------------------
                                     28 	.area RSEG    (ABS,DATA)
      000000                         29 	.org 0x0000
                                     30 ;--------------------------------------------------------
                                     31 ; special function bits
                                     32 ;--------------------------------------------------------
                                     33 	.area RSEG    (ABS,DATA)
      000000                         34 	.org 0x0000
                                     35 ;--------------------------------------------------------
                                     36 ; overlayable register banks
                                     37 ;--------------------------------------------------------
                                     38 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         39 	.ds 8
                                     40 ;--------------------------------------------------------
                                     41 ; internal ram data
                                     42 ;--------------------------------------------------------
                                     43 	.area DSEG    (DATA)
                                     44 ;--------------------------------------------------------
                                     45 ; overlayable items in internal ram 
                                     46 ;--------------------------------------------------------
                                     47 ;--------------------------------------------------------
                                     48 ; Stack segment in internal ram 
                                     49 ;--------------------------------------------------------
                                     50 	.area	SSEG
      000015                         51 __start__stack:
      000015                         52 	.ds	1
                                     53 
                                     54 ;--------------------------------------------------------
                                     55 ; indirectly addressable internal ram data
                                     56 ;--------------------------------------------------------
                                     57 	.area ISEG    (DATA)
                                     58 ;--------------------------------------------------------
                                     59 ; absolute internal ram data
                                     60 ;--------------------------------------------------------
                                     61 	.area IABS    (ABS,DATA)
                                     62 	.area IABS    (ABS,DATA)
                                     63 ;--------------------------------------------------------
                                     64 ; bit data
                                     65 ;--------------------------------------------------------
                                     66 	.area BSEG    (BIT)
                                     67 ;--------------------------------------------------------
                                     68 ; paged external ram data
                                     69 ;--------------------------------------------------------
                                     70 	.area PSEG    (PAG,XDATA)
                                     71 ;--------------------------------------------------------
                                     72 ; external ram data
                                     73 ;--------------------------------------------------------
                                     74 	.area XSEG    (XDATA)
                           000000    75 Lmain.main$choice$1_0$29==.
      000440                         76 _main_choice_65536_29:
      000440                         77 	.ds 1
                                     78 ;--------------------------------------------------------
                                     79 ; absolute external ram data
                                     80 ;--------------------------------------------------------
                                     81 	.area XABS    (ABS,XDATA)
                                     82 ;--------------------------------------------------------
                                     83 ; external initialized ram data
                                     84 ;--------------------------------------------------------
                                     85 	.area XISEG   (XDATA)
                                     86 	.area HOME    (CODE)
                                     87 	.area GSINIT0 (CODE)
                                     88 	.area GSINIT1 (CODE)
                                     89 	.area GSINIT2 (CODE)
                                     90 	.area GSINIT3 (CODE)
                                     91 	.area GSINIT4 (CODE)
                                     92 	.area GSINIT5 (CODE)
                                     93 	.area GSINIT  (CODE)
                                     94 	.area GSFINAL (CODE)
                                     95 	.area CSEG    (CODE)
                                     96 ;--------------------------------------------------------
                                     97 ; interrupt vector 
                                     98 ;--------------------------------------------------------
                                     99 	.area HOME    (CODE)
      002200                        100 __interrupt_vect:
      002200 02 22 06         [24]  101 	ljmp	__sdcc_gsinit_startup
                                    102 ;--------------------------------------------------------
                                    103 ; global & static initialisations
                                    104 ;--------------------------------------------------------
                                    105 	.area HOME    (CODE)
                                    106 	.area GSINIT  (CODE)
                                    107 	.area GSFINAL (CODE)
                                    108 	.area GSINIT  (CODE)
                                    109 	.globl __sdcc_gsinit_startup
                                    110 	.globl __sdcc_program_startup
                                    111 	.globl __start__stack
                                    112 	.globl __mcs51_genXINIT
                                    113 	.globl __mcs51_genXRAMCLEAR
                                    114 	.globl __mcs51_genRAMCLEAR
                                    115 	.area GSFINAL (CODE)
      00225F 02 22 03         [24]  116 	ljmp	__sdcc_program_startup
                                    117 ;--------------------------------------------------------
                                    118 ; Home
                                    119 ;--------------------------------------------------------
                                    120 	.area HOME    (CODE)
                                    121 	.area HOME    (CODE)
      002203                        122 __sdcc_program_startup:
      002203 02 2F 82         [24]  123 	ljmp	_main
                                    124 ;	return from main will return to caller
                                    125 ;--------------------------------------------------------
                                    126 ; code
                                    127 ;--------------------------------------------------------
                                    128 	.area CSEG    (CODE)
                                    129 ;------------------------------------------------------------
                                    130 ;Allocation info for local variables in function 'help'
                                    131 ;------------------------------------------------------------
                           000000   132 	G$help$0$0 ==.
                           000000   133 	C$main.c$7$0_0$27 ==.
                                    134 ;	main.c:7: void help()
                                    135 ;	-----------------------------------------
                                    136 ;	 function help
                                    137 ;	-----------------------------------------
      002ED9                        138 _help:
                           000007   139 	ar7 = 0x07
                           000006   140 	ar6 = 0x06
                           000005   141 	ar5 = 0x05
                           000004   142 	ar4 = 0x04
                           000003   143 	ar3 = 0x03
                           000002   144 	ar2 = 0x02
                           000001   145 	ar1 = 0x01
                           000000   146 	ar0 = 0x00
                           000000   147 	C$main.c$10$1_0$27 ==.
                                    148 ;	main.c:10: printf_tiny("\n\rWelcome Teaching Assistant to the Demo of the I2C on the AT89C51 board ");
      002ED9 74 02            [12]  149 	mov	a,#___str_0
      002EDB C0 E0            [24]  150 	push	acc
      002EDD 74 41            [12]  151 	mov	a,#(___str_0 >> 8)
      002EDF C0 E0            [24]  152 	push	acc
      002EE1 12 32 37         [24]  153 	lcall	_printf_tiny
      002EE4 15 81            [12]  154 	dec	sp
      002EE6 15 81            [12]  155 	dec	sp
                           00000F   156 	C$main.c$11$1_0$27 ==.
                                    157 ;	main.c:11: printf_tiny("\n\rBefore Starting the program, I have some rules for you");
      002EE8 74 4C            [12]  158 	mov	a,#___str_1
      002EEA C0 E0            [24]  159 	push	acc
      002EEC 74 41            [12]  160 	mov	a,#(___str_1 >> 8)
      002EEE C0 E0            [24]  161 	push	acc
      002EF0 12 32 37         [24]  162 	lcall	_printf_tiny
      002EF3 15 81            [12]  163 	dec	sp
      002EF5 15 81            [12]  164 	dec	sp
                           00001E   165 	C$main.c$12$1_0$27 ==.
                                    166 ;	main.c:12: printf_tiny("\n\r ->Please try to enter valid values, extensive testing hurts me a lot and might even break me.");
      002EF7 74 85            [12]  167 	mov	a,#___str_2
      002EF9 C0 E0            [24]  168 	push	acc
      002EFB 74 41            [12]  169 	mov	a,#(___str_2 >> 8)
      002EFD C0 E0            [24]  170 	push	acc
      002EFF 12 32 37         [24]  171 	lcall	_printf_tiny
      002F02 15 81            [12]  172 	dec	sp
      002F04 15 81            [12]  173 	dec	sp
                           00002D   174 	C$main.c$13$1_0$27 ==.
                                    175 ;	main.c:13: printf_tiny("\n\r ->Please make sure before entering a hex value don't add 0x before it.");
      002F06 74 E6            [12]  176 	mov	a,#___str_3
      002F08 C0 E0            [24]  177 	push	acc
      002F0A 74 41            [12]  178 	mov	a,#(___str_3 >> 8)
      002F0C C0 E0            [24]  179 	push	acc
      002F0E 12 32 37         [24]  180 	lcall	_printf_tiny
      002F11 15 81            [12]  181 	dec	sp
      002F13 15 81            [12]  182 	dec	sp
                           00003C   183 	C$main.c$14$1_0$27 ==.
                                    184 ;	main.c:14: printf_tiny("\n\r ->As Described in the assignment, all values are in hexadecimal, any decimal entered will be treated as hex.");
      002F15 74 30            [12]  185 	mov	a,#___str_4
      002F17 C0 E0            [24]  186 	push	acc
      002F19 74 42            [12]  187 	mov	a,#(___str_4 >> 8)
      002F1B C0 E0            [24]  188 	push	acc
      002F1D 12 32 37         [24]  189 	lcall	_printf_tiny
      002F20 15 81            [12]  190 	dec	sp
      002F22 15 81            [12]  191 	dec	sp
                           00004B   192 	C$main.c$15$1_0$27 ==.
                                    193 ;	main.c:15: printf_tiny("\n\r ->Please look at all the choices and give the choice number as described.");
      002F24 74 A0            [12]  194 	mov	a,#___str_5
      002F26 C0 E0            [24]  195 	push	acc
      002F28 74 42            [12]  196 	mov	a,#(___str_5 >> 8)
      002F2A C0 E0            [24]  197 	push	acc
      002F2C 12 32 37         [24]  198 	lcall	_printf_tiny
      002F2F 15 81            [12]  199 	dec	sp
      002F31 15 81            [12]  200 	dec	sp
                           00005A   201 	C$main.c$16$1_0$27 ==.
                                    202 ;	main.c:16: printf_tiny("\n\r ->The Maximum address that can be entered is 7FF.");
      002F33 74 ED            [12]  203 	mov	a,#___str_6
      002F35 C0 E0            [24]  204 	push	acc
      002F37 74 42            [12]  205 	mov	a,#(___str_6 >> 8)
      002F39 C0 E0            [24]  206 	push	acc
      002F3B 12 32 37         [24]  207 	lcall	_printf_tiny
      002F3E 15 81            [12]  208 	dec	sp
      002F40 15 81            [12]  209 	dec	sp
                           000069   210 	C$main.c$17$1_0$27 ==.
                                    211 ;	main.c:17: printf_tiny("\n\r ->Please Enter the First Address greater than last address(duh!!).");
      002F42 74 22            [12]  212 	mov	a,#___str_7
      002F44 C0 E0            [24]  213 	push	acc
      002F46 74 43            [12]  214 	mov	a,#(___str_7 >> 8)
      002F48 C0 E0            [24]  215 	push	acc
      002F4A 12 32 37         [24]  216 	lcall	_printf_tiny
      002F4D 15 81            [12]  217 	dec	sp
      002F4F 15 81            [12]  218 	dec	sp
                           000078   219 	C$main.c$18$1_0$27 ==.
                                    220 ;	main.c:18: printf_tiny("\n\r ->I will try to give as many error condition as possible.");
      002F51 74 68            [12]  221 	mov	a,#___str_8
      002F53 C0 E0            [24]  222 	push	acc
      002F55 74 43            [12]  223 	mov	a,#(___str_8 >> 8)
      002F57 C0 E0            [24]  224 	push	acc
      002F59 12 32 37         [24]  225 	lcall	_printf_tiny
      002F5C 15 81            [12]  226 	dec	sp
      002F5E 15 81            [12]  227 	dec	sp
                           000087   228 	C$main.c$19$1_0$27 ==.
                                    229 ;	main.c:19: printf_tiny("\n\r ->Enough Chit-Chat and lets start with the program.");
      002F60 74 A5            [12]  230 	mov	a,#___str_9
      002F62 C0 E0            [24]  231 	push	acc
      002F64 74 43            [12]  232 	mov	a,#(___str_9 >> 8)
      002F66 C0 E0            [24]  233 	push	acc
      002F68 12 32 37         [24]  234 	lcall	_printf_tiny
      002F6B 15 81            [12]  235 	dec	sp
      002F6D 15 81            [12]  236 	dec	sp
                           000096   237 	C$main.c$20$1_0$27 ==.
                                    238 ;	main.c:20: printf_tiny("\n\n\n\r \t\t\tPRESS ANY KEY TO CONTINUE");
      002F6F 74 DC            [12]  239 	mov	a,#___str_10
      002F71 C0 E0            [24]  240 	push	acc
      002F73 74 43            [12]  241 	mov	a,#(___str_10 >> 8)
      002F75 C0 E0            [24]  242 	push	acc
      002F77 12 32 37         [24]  243 	lcall	_printf_tiny
      002F7A 15 81            [12]  244 	dec	sp
      002F7C 15 81            [12]  245 	dec	sp
                           0000A5   246 	C$main.c$22$1_0$27 ==.
                                    247 ;	main.c:22: getchar();
      002F7E 12 23 E0         [24]  248 	lcall	_getchar
                           0000A8   249 	C$main.c$23$1_0$27 ==.
                                    250 ;	main.c:23: }
                           0000A8   251 	C$main.c$23$1_0$27 ==.
                           0000A8   252 	XG$help$0$0 ==.
      002F81 22               [24]  253 	ret
                                    254 ;------------------------------------------------------------
                                    255 ;Allocation info for local variables in function 'main'
                                    256 ;------------------------------------------------------------
                                    257 ;choice                    Allocated with name '_main_choice_65536_29'
                                    258 ;Address1                  Allocated with name '_main_Address1_65536_29'
                                    259 ;Address2                  Allocated with name '_main_Address2_65536_29'
                                    260 ;Data                      Allocated with name '_main_Data_65536_29'
                                    261 ;block                     Allocated with name '_main_block_65536_29'
                                    262 ;DataR                     Allocated with name '_main_DataR_65536_29'
                                    263 ;------------------------------------------------------------
                           0000A9   264 	G$main$0$0 ==.
                           0000A9   265 	C$main.c$24$1_0$29 ==.
                                    266 ;	main.c:24: void main(void)
                                    267 ;	-----------------------------------------
                                    268 ;	 function main
                                    269 ;	-----------------------------------------
      002F82                        270 _main:
                           0000A9   271 	C$main.c$29$1_0$29 ==.
                                    272 ;	main.c:29: help();
      002F82 12 2E D9         [24]  273 	lcall	_help
                           0000AC   274 	C$main.c$30$1_0$29 ==.
                                    275 ;	main.c:30: do
      002F85                        276 00115$:
                           0000AC   277 	C$main.c$32$2_0$30 ==.
                                    278 ;	main.c:32: printf_tiny("\n\n\n\r So, Your Choices for the Program are:");
      002F85 74 FE            [12]  279 	mov	a,#___str_11
      002F87 C0 E0            [24]  280 	push	acc
      002F89 74 43            [12]  281 	mov	a,#(___str_11 >> 8)
      002F8B C0 E0            [24]  282 	push	acc
      002F8D 12 32 37         [24]  283 	lcall	_printf_tiny
      002F90 15 81            [12]  284 	dec	sp
      002F92 15 81            [12]  285 	dec	sp
                           0000BB   286 	C$main.c$33$2_0$30 ==.
                                    287 ;	main.c:33: printf_tiny("\n\r1.Write a Byte value in the EEPROM.");
      002F94 74 29            [12]  288 	mov	a,#___str_12
      002F96 C0 E0            [24]  289 	push	acc
      002F98 74 44            [12]  290 	mov	a,#(___str_12 >> 8)
      002F9A C0 E0            [24]  291 	push	acc
      002F9C 12 32 37         [24]  292 	lcall	_printf_tiny
      002F9F 15 81            [12]  293 	dec	sp
      002FA1 15 81            [12]  294 	dec	sp
                           0000CA   295 	C$main.c$34$2_0$30 ==.
                                    296 ;	main.c:34: printf_tiny("\n\r2.Read a Byte value in the EEPROM.");
      002FA3 74 4F            [12]  297 	mov	a,#___str_13
      002FA5 C0 E0            [24]  298 	push	acc
      002FA7 74 44            [12]  299 	mov	a,#(___str_13 >> 8)
      002FA9 C0 E0            [24]  300 	push	acc
      002FAB 12 32 37         [24]  301 	lcall	_printf_tiny
      002FAE 15 81            [12]  302 	dec	sp
      002FB0 15 81            [12]  303 	dec	sp
                           0000D9   304 	C$main.c$35$2_0$30 ==.
                                    305 ;	main.c:35: printf_tiny("\n\r3.Dump the values in the EEPROM between the given addresses using Sequential Read.");
      002FB2 74 74            [12]  306 	mov	a,#___str_14
      002FB4 C0 E0            [24]  307 	push	acc
      002FB6 74 44            [12]  308 	mov	a,#(___str_14 >> 8)
      002FB8 C0 E0            [24]  309 	push	acc
      002FBA 12 32 37         [24]  310 	lcall	_printf_tiny
      002FBD 15 81            [12]  311 	dec	sp
      002FBF 15 81            [12]  312 	dec	sp
                           0000E8   313 	C$main.c$36$2_0$30 ==.
                                    314 ;	main.c:36: printf_tiny("\n\r4.Reset the EEPROM.");
      002FC1 74 C9            [12]  315 	mov	a,#___str_15
      002FC3 C0 E0            [24]  316 	push	acc
      002FC5 74 44            [12]  317 	mov	a,#(___str_15 >> 8)
      002FC7 C0 E0            [24]  318 	push	acc
      002FC9 12 32 37         [24]  319 	lcall	_printf_tiny
      002FCC 15 81            [12]  320 	dec	sp
      002FCE 15 81            [12]  321 	dec	sp
                           0000F7   322 	C$main.c$37$2_0$30 ==.
                                    323 ;	main.c:37: printf_tiny("\n\r5.Help Menu.");
      002FD0 74 DF            [12]  324 	mov	a,#___str_16
      002FD2 C0 E0            [24]  325 	push	acc
      002FD4 74 44            [12]  326 	mov	a,#(___str_16 >> 8)
      002FD6 C0 E0            [24]  327 	push	acc
      002FD8 12 32 37         [24]  328 	lcall	_printf_tiny
      002FDB 15 81            [12]  329 	dec	sp
      002FDD 15 81            [12]  330 	dec	sp
                           000106   331 	C$main.c$38$2_0$30 ==.
                                    332 ;	main.c:38: printf_tiny("\n\r6.Exit the program");
      002FDF 74 EE            [12]  333 	mov	a,#___str_17
      002FE1 C0 E0            [24]  334 	push	acc
      002FE3 74 44            [12]  335 	mov	a,#(___str_17 >> 8)
      002FE5 C0 E0            [24]  336 	push	acc
      002FE7 12 32 37         [24]  337 	lcall	_printf_tiny
      002FEA 15 81            [12]  338 	dec	sp
      002FEC 15 81            [12]  339 	dec	sp
                           000115   340 	C$main.c$39$2_0$30 ==.
                                    341 ;	main.c:39: printf_tiny("\n\rEnter the valid choice:");
      002FEE 74 03            [12]  342 	mov	a,#___str_18
      002FF0 C0 E0            [24]  343 	push	acc
      002FF2 74 45            [12]  344 	mov	a,#(___str_18 >> 8)
      002FF4 C0 E0            [24]  345 	push	acc
      002FF6 12 32 37         [24]  346 	lcall	_printf_tiny
      002FF9 15 81            [12]  347 	dec	sp
      002FFB 15 81            [12]  348 	dec	sp
                           000124   349 	C$main.c$40$2_0$30 ==.
                                    350 ;	main.c:40: choice=getchar();
      002FFD 12 23 E0         [24]  351 	lcall	_getchar
      003000 AE 82            [24]  352 	mov	r6,dpl
      003002 90 04 40         [24]  353 	mov	dptr,#_main_choice_65536_29
      003005 EE               [12]  354 	mov	a,r6
      003006 F0               [24]  355 	movx	@dptr,a
                           00012E   356 	C$main.c$41$2_0$30 ==.
                                    357 ;	main.c:41: switch(choice)
      003007 E0               [24]  358 	movx	a,@dptr
      003008 FF               [12]  359 	mov	r7,a
      003009 BF 31 02         [24]  360 	cjne	r7,#0x31,00167$
      00300C 80 21            [24]  361 	sjmp	00101$
      00300E                        362 00167$:
      00300E BF 32 03         [24]  363 	cjne	r7,#0x32,00168$
      003011 02 30 F3         [24]  364 	ljmp	00105$
      003014                        365 00168$:
      003014 BF 33 03         [24]  366 	cjne	r7,#0x33,00169$
      003017 02 31 4C         [24]  367 	ljmp	00106$
      00301A                        368 00169$:
      00301A BF 34 03         [24]  369 	cjne	r7,#0x34,00170$
      00301D 02 31 DE         [24]  370 	ljmp	00110$
      003020                        371 00170$:
      003020 BF 35 03         [24]  372 	cjne	r7,#0x35,00171$
      003023 02 31 F2         [24]  373 	ljmp	00111$
      003026                        374 00171$:
      003026 BF 36 03         [24]  375 	cjne	r7,#0x36,00172$
      003029 02 32 06         [24]  376 	ljmp	00114$
      00302C                        377 00172$:
      00302C 02 31 F7         [24]  378 	ljmp	00113$
                           000156   379 	C$main.c$43$3_0$31 ==.
                                    380 ;	main.c:43: case '1' :
      00302F                        381 00101$:
                           000156   382 	C$main.c$44$3_0$31 ==.
                                    383 ;	main.c:44: printf_tiny("\n\r Enter the Address where the Data is to be Stored:");
      00302F 74 1D            [12]  384 	mov	a,#___str_19
      003031 C0 E0            [24]  385 	push	acc
      003033 74 45            [12]  386 	mov	a,#(___str_19 >> 8)
      003035 C0 E0            [24]  387 	push	acc
      003037 12 32 37         [24]  388 	lcall	_printf_tiny
      00303A 15 81            [12]  389 	dec	sp
      00303C 15 81            [12]  390 	dec	sp
                           000165   391 	C$main.c$45$3_0$31 ==.
                                    392 ;	main.c:45: Address1=getstr_addr();
      00303E 12 23 EE         [24]  393 	lcall	_getstr_addr
      003041 AE 82            [24]  394 	mov	r6,dpl
      003043 AF 83            [24]  395 	mov	r7,dph
                           00016C   396 	C$main.c$46$3_0$31 ==.
                                    397 ;	main.c:46: block=get_block();
      003045 C0 07            [24]  398 	push	ar7
      003047 C0 06            [24]  399 	push	ar6
      003049 12 29 78         [24]  400 	lcall	_get_block
      00304C AC 82            [24]  401 	mov	r4,dpl
      00304E AD 83            [24]  402 	mov	r5,dph
                           000177   403 	C$main.c$47$3_0$31 ==.
                                    404 ;	main.c:47: printf_tiny("\n\r Enter the Data to be stored:");
      003050 C0 05            [24]  405 	push	ar5
      003052 C0 04            [24]  406 	push	ar4
      003054 74 52            [12]  407 	mov	a,#___str_20
      003056 C0 E0            [24]  408 	push	acc
      003058 74 45            [12]  409 	mov	a,#(___str_20 >> 8)
      00305A C0 E0            [24]  410 	push	acc
      00305C 12 32 37         [24]  411 	lcall	_printf_tiny
      00305F 15 81            [12]  412 	dec	sp
      003061 15 81            [12]  413 	dec	sp
                           00018A   414 	C$main.c$48$3_0$31 ==.
                                    415 ;	main.c:48: Data=getstr_data();
      003063 12 27 96         [24]  416 	lcall	_getstr_data
      003066 AA 82            [24]  417 	mov	r2,dpl
      003068 AB 83            [24]  418 	mov	r3,dph
                           000191   419 	C$main.c$49$3_0$31 ==.
                                    420 ;	main.c:49: dummy_write(0,0);
      00306A 90 04 3A         [24]  421 	mov	dptr,#_dummy_write_PARM_2
      00306D E4               [12]  422 	clr	a
      00306E F0               [24]  423 	movx	@dptr,a
      00306F A3               [24]  424 	inc	dptr
      003070 F0               [24]  425 	movx	@dptr,a
      003071 90 00 00         [24]  426 	mov	dptr,#0x0000
      003074 C0 03            [24]  427 	push	ar3
      003076 C0 02            [24]  428 	push	ar2
      003078 12 2E 4A         [24]  429 	lcall	_dummy_write
                           0001A2   430 	C$main.c$50$3_0$31 ==.
                                    431 ;	main.c:50: delay();
      00307B 12 22 62         [24]  432 	lcall	_delay
      00307E D0 02            [24]  433 	pop	ar2
      003080 D0 03            [24]  434 	pop	ar3
      003082 D0 04            [24]  435 	pop	ar4
      003084 D0 05            [24]  436 	pop	ar5
      003086 D0 06            [24]  437 	pop	ar6
      003088 D0 07            [24]  438 	pop	ar7
                           0001B1   439 	C$main.c$51$3_0$31 ==.
                                    440 ;	main.c:51: weeprom(block,Address1,Data);
      00308A 8A 07            [24]  441 	mov	ar7,r2
      00308C 90 04 22         [24]  442 	mov	dptr,#_weeprom_PARM_2
      00308F EE               [12]  443 	mov	a,r6
      003090 F0               [24]  444 	movx	@dptr,a
      003091 90 04 23         [24]  445 	mov	dptr,#_weeprom_PARM_3
      003094 EF               [12]  446 	mov	a,r7
      003095 F0               [24]  447 	movx	@dptr,a
      003096 8C 82            [24]  448 	mov	dpl,r4
      003098 C0 06            [24]  449 	push	ar6
      00309A C0 04            [24]  450 	push	ar4
      00309C C0 03            [24]  451 	push	ar3
      00309E C0 02            [24]  452 	push	ar2
      0030A0 12 29 84         [24]  453 	lcall	_weeprom
                           0001CA   454 	C$main.c$52$3_0$31 ==.
                                    455 ;	main.c:52: dummy_read();
      0030A3 12 2E 3E         [24]  456 	lcall	_dummy_read
                           0001CD   457 	C$main.c$53$3_0$31 ==.
                                    458 ;	main.c:53: delay();
      0030A6 12 22 62         [24]  459 	lcall	_delay
      0030A9 D0 02            [24]  460 	pop	ar2
      0030AB D0 03            [24]  461 	pop	ar3
      0030AD D0 04            [24]  462 	pop	ar4
      0030AF D0 06            [24]  463 	pop	ar6
                           0001D8   464 	C$main.c$54$3_0$31 ==.
                                    465 ;	main.c:54: DataR=reeprom(block,Address1);
      0030B1 90 04 25         [24]  466 	mov	dptr,#_reeprom_PARM_2
      0030B4 EE               [12]  467 	mov	a,r6
      0030B5 F0               [24]  468 	movx	@dptr,a
      0030B6 8C 82            [24]  469 	mov	dpl,r4
      0030B8 C0 03            [24]  470 	push	ar3
      0030BA C0 02            [24]  471 	push	ar2
      0030BC 12 29 B4         [24]  472 	lcall	_reeprom
      0030BF AF 82            [24]  473 	mov	r7,dpl
      0030C1 D0 02            [24]  474 	pop	ar2
      0030C3 D0 03            [24]  475 	pop	ar3
      0030C5 7E 00            [12]  476 	mov	r6,#0x00
                           0001EE   477 	C$main.c$55$3_0$31 ==.
                                    478 ;	main.c:55: if(DataR==Data)
      0030C7 EF               [12]  479 	mov	a,r7
      0030C8 B5 02 16         [24]  480 	cjne	a,ar2,00103$
      0030CB EE               [12]  481 	mov	a,r6
      0030CC B5 03 12         [24]  482 	cjne	a,ar3,00103$
                           0001F6   483 	C$main.c$57$4_0$32 ==.
                                    484 ;	main.c:57: printf_tiny("\n\r Data Entered Successfully.");
      0030CF 74 72            [12]  485 	mov	a,#___str_21
      0030D1 C0 E0            [24]  486 	push	acc
      0030D3 74 45            [12]  487 	mov	a,#(___str_21 >> 8)
      0030D5 C0 E0            [24]  488 	push	acc
      0030D7 12 32 37         [24]  489 	lcall	_printf_tiny
      0030DA 15 81            [12]  490 	dec	sp
      0030DC 15 81            [12]  491 	dec	sp
      0030DE 02 32 06         [24]  492 	ljmp	00114$
      0030E1                        493 00103$:
                           000208   494 	C$main.c$62$4_0$33 ==.
                                    495 ;	main.c:62: printf_tiny("\n\r Data Writing Failed.");
      0030E1 74 90            [12]  496 	mov	a,#___str_22
      0030E3 C0 E0            [24]  497 	push	acc
      0030E5 74 45            [12]  498 	mov	a,#(___str_22 >> 8)
      0030E7 C0 E0            [24]  499 	push	acc
      0030E9 12 32 37         [24]  500 	lcall	_printf_tiny
      0030EC 15 81            [12]  501 	dec	sp
      0030EE 15 81            [12]  502 	dec	sp
                           000217   503 	C$main.c$64$3_0$31 ==.
                                    504 ;	main.c:64: break;
      0030F0 02 32 06         [24]  505 	ljmp	00114$
                           00021A   506 	C$main.c$65$3_0$31 ==.
                                    507 ;	main.c:65: case '2' :  printf_tiny("\n\r Enter the Address where the Data is to be Searched:");
      0030F3                        508 00105$:
      0030F3 74 A8            [12]  509 	mov	a,#___str_23
      0030F5 C0 E0            [24]  510 	push	acc
      0030F7 74 45            [12]  511 	mov	a,#(___str_23 >> 8)
      0030F9 C0 E0            [24]  512 	push	acc
      0030FB 12 32 37         [24]  513 	lcall	_printf_tiny
      0030FE 15 81            [12]  514 	dec	sp
      003100 15 81            [12]  515 	dec	sp
                           000229   516 	C$main.c$66$3_0$31 ==.
                                    517 ;	main.c:66: Address1=getstr_addr();
      003102 12 23 EE         [24]  518 	lcall	_getstr_addr
      003105 AE 82            [24]  519 	mov	r6,dpl
      003107 AF 83            [24]  520 	mov	r7,dph
                           000230   521 	C$main.c$67$3_0$31 ==.
                                    522 ;	main.c:67: block=get_block();
      003109 C0 07            [24]  523 	push	ar7
      00310B C0 06            [24]  524 	push	ar6
      00310D 12 29 78         [24]  525 	lcall	_get_block
      003110 AC 82            [24]  526 	mov	r4,dpl
      003112 AD 83            [24]  527 	mov	r5,dph
                           00023B   528 	C$main.c$68$3_0$31 ==.
                                    529 ;	main.c:68: dummy_read();
      003114 C0 05            [24]  530 	push	ar5
      003116 C0 04            [24]  531 	push	ar4
      003118 12 2E 3E         [24]  532 	lcall	_dummy_read
                           000242   533 	C$main.c$69$3_0$31 ==.
                                    534 ;	main.c:69: delay();
      00311B 12 22 62         [24]  535 	lcall	_delay
      00311E D0 04            [24]  536 	pop	ar4
      003120 D0 05            [24]  537 	pop	ar5
      003122 D0 06            [24]  538 	pop	ar6
      003124 D0 07            [24]  539 	pop	ar7
                           00024D   540 	C$main.c$70$3_0$31 ==.
                                    541 ;	main.c:70: Data=reeprom(block,Address1);
      003126 90 04 25         [24]  542 	mov	dptr,#_reeprom_PARM_2
      003129 EE               [12]  543 	mov	a,r6
      00312A F0               [24]  544 	movx	@dptr,a
      00312B 8C 82            [24]  545 	mov	dpl,r4
      00312D 12 29 B4         [24]  546 	lcall	_reeprom
      003130 AF 82            [24]  547 	mov	r7,dpl
      003132 7E 00            [12]  548 	mov	r6,#0x00
                           00025B   549 	C$main.c$71$3_0$31 ==.
                                    550 ;	main.c:71: printf_tiny("\n\rData=%x",Data);
      003134 C0 07            [24]  551 	push	ar7
      003136 C0 06            [24]  552 	push	ar6
      003138 74 DF            [12]  553 	mov	a,#___str_24
      00313A C0 E0            [24]  554 	push	acc
      00313C 74 45            [12]  555 	mov	a,#(___str_24 >> 8)
      00313E C0 E0            [24]  556 	push	acc
      003140 12 32 37         [24]  557 	lcall	_printf_tiny
      003143 E5 81            [12]  558 	mov	a,sp
      003145 24 FC            [12]  559 	add	a,#0xfc
      003147 F5 81            [12]  560 	mov	sp,a
                           000270   561 	C$main.c$72$3_0$31 ==.
                                    562 ;	main.c:72: break;
      003149 02 32 06         [24]  563 	ljmp	00114$
                           000273   564 	C$main.c$73$3_0$31 ==.
                                    565 ;	main.c:73: case '3' :  printf_tiny("\n\rEnter the First Address:");
      00314C                        566 00106$:
      00314C 74 E9            [12]  567 	mov	a,#___str_25
      00314E C0 E0            [24]  568 	push	acc
      003150 74 45            [12]  569 	mov	a,#(___str_25 >> 8)
      003152 C0 E0            [24]  570 	push	acc
      003154 12 32 37         [24]  571 	lcall	_printf_tiny
      003157 15 81            [12]  572 	dec	sp
      003159 15 81            [12]  573 	dec	sp
                           000282   574 	C$main.c$74$3_0$31 ==.
                                    575 ;	main.c:74: Address1=getstr_addr();
      00315B 12 23 EE         [24]  576 	lcall	_getstr_addr
      00315E AE 82            [24]  577 	mov	r6,dpl
      003160 AF 83            [24]  578 	mov	r7,dph
                           000289   579 	C$main.c$75$3_0$31 ==.
                                    580 ;	main.c:75: block=get_block();
      003162 C0 07            [24]  581 	push	ar7
      003164 C0 06            [24]  582 	push	ar6
      003166 12 29 78         [24]  583 	lcall	_get_block
      003169 AC 82            [24]  584 	mov	r4,dpl
      00316B AD 83            [24]  585 	mov	r5,dph
                           000294   586 	C$main.c$76$3_0$31 ==.
                                    587 ;	main.c:76: printf_tiny("\n\rEnter the Last Address:");
      00316D C0 05            [24]  588 	push	ar5
      00316F C0 04            [24]  589 	push	ar4
      003171 74 04            [12]  590 	mov	a,#___str_26
      003173 C0 E0            [24]  591 	push	acc
      003175 74 46            [12]  592 	mov	a,#(___str_26 >> 8)
      003177 C0 E0            [24]  593 	push	acc
      003179 12 32 37         [24]  594 	lcall	_printf_tiny
      00317C 15 81            [12]  595 	dec	sp
      00317E 15 81            [12]  596 	dec	sp
                           0002A7   597 	C$main.c$77$3_0$31 ==.
                                    598 ;	main.c:77: Address2=getstr_addr();
      003180 12 23 EE         [24]  599 	lcall	_getstr_addr
      003183 AA 82            [24]  600 	mov	r2,dpl
      003185 AB 83            [24]  601 	mov	r3,dph
      003187 D0 04            [24]  602 	pop	ar4
      003189 D0 05            [24]  603 	pop	ar5
      00318B D0 06            [24]  604 	pop	ar6
      00318D D0 07            [24]  605 	pop	ar7
                           0002B6   606 	C$main.c$78$3_0$31 ==.
                                    607 ;	main.c:78: if(Address1>=Address2)
      00318F C3               [12]  608 	clr	c
      003190 EE               [12]  609 	mov	a,r6
      003191 9A               [12]  610 	subb	a,r2
      003192 EF               [12]  611 	mov	a,r7
      003193 9B               [12]  612 	subb	a,r3
      003194 40 11            [24]  613 	jc	00108$
                           0002BD   614 	C$main.c$80$4_0$34 ==.
                                    615 ;	main.c:80: printf_tiny("\n\r Sorry, The First Address is greater than or equal to last address,Please select the Option Again.");
      003196 74 1E            [12]  616 	mov	a,#___str_27
      003198 C0 E0            [24]  617 	push	acc
      00319A 74 46            [12]  618 	mov	a,#(___str_27 >> 8)
      00319C C0 E0            [24]  619 	push	acc
      00319E 12 32 37         [24]  620 	lcall	_printf_tiny
      0031A1 15 81            [12]  621 	dec	sp
      0031A3 15 81            [12]  622 	dec	sp
      0031A5 80 5F            [24]  623 	sjmp	00114$
      0031A7                        624 00108$:
                           0002CE   625 	C$main.c$84$4_0$35 ==.
                                    626 ;	main.c:84: dummy_read();
      0031A7 C0 07            [24]  627 	push	ar7
      0031A9 C0 06            [24]  628 	push	ar6
      0031AB C0 05            [24]  629 	push	ar5
      0031AD C0 04            [24]  630 	push	ar4
      0031AF C0 03            [24]  631 	push	ar3
      0031B1 C0 02            [24]  632 	push	ar2
      0031B3 12 2E 3E         [24]  633 	lcall	_dummy_read
                           0002DD   634 	C$main.c$85$4_0$35 ==.
                                    635 ;	main.c:85: delay();
      0031B6 12 22 62         [24]  636 	lcall	_delay
      0031B9 D0 02            [24]  637 	pop	ar2
      0031BB D0 03            [24]  638 	pop	ar3
      0031BD D0 04            [24]  639 	pop	ar4
      0031BF D0 05            [24]  640 	pop	ar5
      0031C1 D0 06            [24]  641 	pop	ar6
      0031C3 D0 07            [24]  642 	pop	ar7
                           0002EC   643 	C$main.c$86$4_0$35 ==.
                                    644 ;	main.c:86: reeprom_seq(block,Address1,Address2);
      0031C5 90 04 2B         [24]  645 	mov	dptr,#_reeprom_seq_PARM_2
      0031C8 EE               [12]  646 	mov	a,r6
      0031C9 F0               [24]  647 	movx	@dptr,a
      0031CA EF               [12]  648 	mov	a,r7
      0031CB A3               [24]  649 	inc	dptr
      0031CC F0               [24]  650 	movx	@dptr,a
      0031CD 90 04 2D         [24]  651 	mov	dptr,#_reeprom_seq_PARM_3
      0031D0 EA               [12]  652 	mov	a,r2
      0031D1 F0               [24]  653 	movx	@dptr,a
      0031D2 EB               [12]  654 	mov	a,r3
      0031D3 A3               [24]  655 	inc	dptr
      0031D4 F0               [24]  656 	movx	@dptr,a
      0031D5 8C 82            [24]  657 	mov	dpl,r4
      0031D7 8D 83            [24]  658 	mov	dph,r5
      0031D9 12 2B 28         [24]  659 	lcall	_reeprom_seq
                           000303   660 	C$main.c$88$3_0$31 ==.
                                    661 ;	main.c:88: break;
                           000303   662 	C$main.c$89$3_0$31 ==.
                                    663 ;	main.c:89: case '4' :  eereset();
      0031DC 80 28            [24]  664 	sjmp	00114$
      0031DE                        665 00110$:
      0031DE 12 2A E4         [24]  666 	lcall	_eereset
                           000308   667 	C$main.c$90$3_0$31 ==.
                                    668 ;	main.c:90: printf_tiny("\n\rReset Successfully");
      0031E1 74 83            [12]  669 	mov	a,#___str_28
      0031E3 C0 E0            [24]  670 	push	acc
      0031E5 74 46            [12]  671 	mov	a,#(___str_28 >> 8)
      0031E7 C0 E0            [24]  672 	push	acc
      0031E9 12 32 37         [24]  673 	lcall	_printf_tiny
      0031EC 15 81            [12]  674 	dec	sp
      0031EE 15 81            [12]  675 	dec	sp
                           000317   676 	C$main.c$91$3_0$31 ==.
                                    677 ;	main.c:91: break;
                           000317   678 	C$main.c$92$3_0$31 ==.
                                    679 ;	main.c:92: case '5' :  help();
      0031F0 80 14            [24]  680 	sjmp	00114$
      0031F2                        681 00111$:
      0031F2 12 2E D9         [24]  682 	lcall	_help
                           00031C   683 	C$main.c$93$3_0$31 ==.
                                    684 ;	main.c:93: break;
                           00031C   685 	C$main.c$95$3_0$31 ==.
                                    686 ;	main.c:95: default  :  printf_tiny("\n\rWrong Choice Selected Please Enter Again");
      0031F5 80 0F            [24]  687 	sjmp	00114$
      0031F7                        688 00113$:
      0031F7 74 98            [12]  689 	mov	a,#___str_29
      0031F9 C0 E0            [24]  690 	push	acc
      0031FB 74 46            [12]  691 	mov	a,#(___str_29 >> 8)
      0031FD C0 E0            [24]  692 	push	acc
      0031FF 12 32 37         [24]  693 	lcall	_printf_tiny
      003202 15 81            [12]  694 	dec	sp
      003204 15 81            [12]  695 	dec	sp
                           00032D   696 	C$main.c$97$2_0$30 ==.
                                    697 ;	main.c:97: }
      003206                        698 00114$:
                           00032D   699 	C$main.c$98$2_0$30 ==.
                                    700 ;	main.c:98: printf_tiny("\n\n\n\r \t\t\t\t\tPRESS ANY KEY TO CONTINUE");
      003206 74 C3            [12]  701 	mov	a,#___str_30
      003208 C0 E0            [24]  702 	push	acc
      00320A 74 46            [12]  703 	mov	a,#(___str_30 >> 8)
      00320C C0 E0            [24]  704 	push	acc
      00320E 12 32 37         [24]  705 	lcall	_printf_tiny
      003211 15 81            [12]  706 	dec	sp
      003213 15 81            [12]  707 	dec	sp
                           00033C   708 	C$main.c$99$2_0$30 ==.
                                    709 ;	main.c:99: getchar();
      003215 12 23 E0         [24]  710 	lcall	_getchar
                           00033F   711 	C$main.c$100$1_0$29 ==.
                                    712 ;	main.c:100: }while(choice!='7');
      003218 90 04 40         [24]  713 	mov	dptr,#_main_choice_65536_29
      00321B E0               [24]  714 	movx	a,@dptr
      00321C FF               [12]  715 	mov	r7,a
      00321D BF 37 02         [24]  716 	cjne	r7,#0x37,00176$
      003220 80 03            [24]  717 	sjmp	00177$
      003222                        718 00176$:
      003222 02 2F 85         [24]  719 	ljmp	00115$
      003225                        720 00177$:
                           00034C   721 	C$main.c$101$1_0$29 ==.
                                    722 ;	main.c:101: printf_tiny("\n\r Thank you for your patience and Handling. Please visit again.");
      003225 74 E7            [12]  723 	mov	a,#___str_31
      003227 C0 E0            [24]  724 	push	acc
      003229 74 46            [12]  725 	mov	a,#(___str_31 >> 8)
      00322B C0 E0            [24]  726 	push	acc
      00322D 12 32 37         [24]  727 	lcall	_printf_tiny
      003230 15 81            [12]  728 	dec	sp
      003232 15 81            [12]  729 	dec	sp
                           00035B   730 	C$main.c$102$1_0$29 ==.
                                    731 ;	main.c:102: while(1);
      003234                        732 00119$:
      003234 80 FE            [24]  733 	sjmp	00119$
                           00035D   734 	C$main.c$103$1_0$29 ==.
                                    735 ;	main.c:103: }
                           00035D   736 	C$main.c$103$1_0$29 ==.
                           00035D   737 	XG$main$0$0 ==.
      003236 22               [24]  738 	ret
                                    739 	.area CSEG    (CODE)
                                    740 	.area CONST   (CODE)
                           000000   741 Fmain$__str_0$0_0$0 == .
                                    742 	.area CONST   (CODE)
      004102                        743 ___str_0:
      004102 0A                     744 	.db 0x0a
      004103 0D                     745 	.db 0x0d
      004104 57 65 6C 63 6F 6D 65   746 	.ascii "Welcome Teaching Assistant to the Demo of the I2C on the AT8"
             20 54 65 61 63 68 69
             6E 67 20 41 73 73 69
             73 74 61 6E 74 20 74
             6F 20 74 68 65 20 44
             65 6D 6F 20 6F 66 20
             74 68 65 20 49 32 43
             20 6F 6E 20 74 68 65
             20 41 54 38
      004140 39 43 35 31 20 62 6F   747 	.ascii "9C51 board "
             61 72 64 20
      00414B 00                     748 	.db 0x00
                                    749 	.area CSEG    (CODE)
                           00035E   750 Fmain$__str_1$0_0$0 == .
                                    751 	.area CONST   (CODE)
      00414C                        752 ___str_1:
      00414C 0A                     753 	.db 0x0a
      00414D 0D                     754 	.db 0x0d
      00414E 42 65 66 6F 72 65 20   755 	.ascii "Before Starting the program, I have some rules for you"
             53 74 61 72 74 69 6E
             67 20 74 68 65 20 70
             72 6F 67 72 61 6D 2C
             20 49 20 68 61 76 65
             20 73 6F 6D 65 20 72
             75 6C 65 73 20 66 6F
             72 20 79 6F 75
      004184 00                     756 	.db 0x00
                                    757 	.area CSEG    (CODE)
                           00035E   758 Fmain$__str_2$0_0$0 == .
                                    759 	.area CONST   (CODE)
      004185                        760 ___str_2:
      004185 0A                     761 	.db 0x0a
      004186 0D                     762 	.db 0x0d
      004187 20 2D 3E 50 6C 65 61   763 	.ascii " ->Please try to enter valid values, extensive testing hurts"
             73 65 20 74 72 79 20
             74 6F 20 65 6E 74 65
             72 20 76 61 6C 69 64
             20 76 61 6C 75 65 73
             2C 20 65 78 74 65 6E
             73 69 76 65 20 74 65
             73 74 69 6E 67 20 68
             75 72 74 73
      0041C3 20 6D 65 20 61 20 6C   764 	.ascii " me a lot and might even break me."
             6F 74 20 61 6E 64 20
             6D 69 67 68 74 20 65
             76 65 6E 20 62 72 65
             61 6B 20 6D 65 2E
      0041E5 00                     765 	.db 0x00
                                    766 	.area CSEG    (CODE)
                           00035E   767 Fmain$__str_3$0_0$0 == .
                                    768 	.area CONST   (CODE)
      0041E6                        769 ___str_3:
      0041E6 0A                     770 	.db 0x0a
      0041E7 0D                     771 	.db 0x0d
      0041E8 20 2D 3E 50 6C 65 61   772 	.ascii " ->Please make sure before entering a hex value don't add 0x"
             73 65 20 6D 61 6B 65
             20 73 75 72 65 20 62
             65 66 6F 72 65 20 65
             6E 74 65 72 69 6E 67
             20 61 20 68 65 78 20
             76 61 6C 75 65 20 64
             6F 6E 27 74 20 61 64
             64 20 30 78
      004224 20 62 65 66 6F 72 65   773 	.ascii " before it."
             20 69 74 2E
      00422F 00                     774 	.db 0x00
                                    775 	.area CSEG    (CODE)
                           00035E   776 Fmain$__str_4$0_0$0 == .
                                    777 	.area CONST   (CODE)
      004230                        778 ___str_4:
      004230 0A                     779 	.db 0x0a
      004231 0D                     780 	.db 0x0d
      004232 20 2D 3E 41 73 20 44   781 	.ascii " ->As Described in the assignment, all values are in hexadec"
             65 73 63 72 69 62 65
             64 20 69 6E 20 74 68
             65 20 61 73 73 69 67
             6E 6D 65 6E 74 2C 20
             61 6C 6C 20 76 61 6C
             75 65 73 20 61 72 65
             20 69 6E 20 68 65 78
             61 64 65 63
      00426E 69 6D 61 6C 2C 20 61   782 	.ascii "imal, any decimal entered will be treated as hex."
             6E 79 20 64 65 63 69
             6D 61 6C 20 65 6E 74
             65 72 65 64 20 77 69
             6C 6C 20 62 65 20 74
             72 65 61 74 65 64 20
             61 73 20 68 65 78 2E
      00429F 00                     783 	.db 0x00
                                    784 	.area CSEG    (CODE)
                           00035E   785 Fmain$__str_5$0_0$0 == .
                                    786 	.area CONST   (CODE)
      0042A0                        787 ___str_5:
      0042A0 0A                     788 	.db 0x0a
      0042A1 0D                     789 	.db 0x0d
      0042A2 20 2D 3E 50 6C 65 61   790 	.ascii " ->Please look at all the choices and give the choice number"
             73 65 20 6C 6F 6F 6B
             20 61 74 20 61 6C 6C
             20 74 68 65 20 63 68
             6F 69 63 65 73 20 61
             6E 64 20 67 69 76 65
             20 74 68 65 20 63 68
             6F 69 63 65 20 6E 75
             6D 62 65 72
      0042DE 20 61 73 20 64 65 73   791 	.ascii " as described."
             63 72 69 62 65 64 2E
      0042EC 00                     792 	.db 0x00
                                    793 	.area CSEG    (CODE)
                           00035E   794 Fmain$__str_6$0_0$0 == .
                                    795 	.area CONST   (CODE)
      0042ED                        796 ___str_6:
      0042ED 0A                     797 	.db 0x0a
      0042EE 0D                     798 	.db 0x0d
      0042EF 20 2D 3E 54 68 65 20   799 	.ascii " ->The Maximum address that can be entered is 7FF."
             4D 61 78 69 6D 75 6D
             20 61 64 64 72 65 73
             73 20 74 68 61 74 20
             63 61 6E 20 62 65 20
             65 6E 74 65 72 65 64
             20 69 73 20 37 46 46
             2E
      004321 00                     800 	.db 0x00
                                    801 	.area CSEG    (CODE)
                           00035E   802 Fmain$__str_7$0_0$0 == .
                                    803 	.area CONST   (CODE)
      004322                        804 ___str_7:
      004322 0A                     805 	.db 0x0a
      004323 0D                     806 	.db 0x0d
      004324 20 2D 3E 50 6C 65 61   807 	.ascii " ->Please Enter the First Address greater than last address("
             73 65 20 45 6E 74 65
             72 20 74 68 65 20 46
             69 72 73 74 20 41 64
             64 72 65 73 73 20 67
             72 65 61 74 65 72 20
             74 68 61 6E 20 6C 61
             73 74 20 61 64 64 72
             65 73 73 28
      004360 64 75 68 21 21 29 2E   808 	.ascii "duh!!)."
      004367 00                     809 	.db 0x00
                                    810 	.area CSEG    (CODE)
                           00035E   811 Fmain$__str_8$0_0$0 == .
                                    812 	.area CONST   (CODE)
      004368                        813 ___str_8:
      004368 0A                     814 	.db 0x0a
      004369 0D                     815 	.db 0x0d
      00436A 20 2D 3E 49 20 77 69   816 	.ascii " ->I will try to give as many error condition as possible."
             6C 6C 20 74 72 79 20
             74 6F 20 67 69 76 65
             20 61 73 20 6D 61 6E
             79 20 65 72 72 6F 72
             20 63 6F 6E 64 69 74
             69 6F 6E 20 61 73 20
             70 6F 73 73 69 62 6C
             65 2E
      0043A4 00                     817 	.db 0x00
                                    818 	.area CSEG    (CODE)
                           00035E   819 Fmain$__str_9$0_0$0 == .
                                    820 	.area CONST   (CODE)
      0043A5                        821 ___str_9:
      0043A5 0A                     822 	.db 0x0a
      0043A6 0D                     823 	.db 0x0d
      0043A7 20 2D 3E 45 6E 6F 75   824 	.ascii " ->Enough Chit-Chat and lets start with the program."
             67 68 20 43 68 69 74
             2D 43 68 61 74 20 61
             6E 64 20 6C 65 74 73
             20 73 74 61 72 74 20
             77 69 74 68 20 74 68
             65 20 70 72 6F 67 72
             61 6D 2E
      0043DB 00                     825 	.db 0x00
                                    826 	.area CSEG    (CODE)
                           00035E   827 Fmain$__str_10$0_0$0 == .
                                    828 	.area CONST   (CODE)
      0043DC                        829 ___str_10:
      0043DC 0A                     830 	.db 0x0a
      0043DD 0A                     831 	.db 0x0a
      0043DE 0A                     832 	.db 0x0a
      0043DF 0D                     833 	.db 0x0d
      0043E0 20                     834 	.ascii " "
      0043E1 09                     835 	.db 0x09
      0043E2 09                     836 	.db 0x09
      0043E3 09                     837 	.db 0x09
      0043E4 50 52 45 53 53 20 41   838 	.ascii "PRESS ANY KEY TO CONTINUE"
             4E 59 20 4B 45 59 20
             54 4F 20 43 4F 4E 54
             49 4E 55 45
      0043FD 00                     839 	.db 0x00
                                    840 	.area CSEG    (CODE)
                           00035E   841 Fmain$__str_11$0_0$0 == .
                                    842 	.area CONST   (CODE)
      0043FE                        843 ___str_11:
      0043FE 0A                     844 	.db 0x0a
      0043FF 0A                     845 	.db 0x0a
      004400 0A                     846 	.db 0x0a
      004401 0D                     847 	.db 0x0d
      004402 20 53 6F 2C 20 59 6F   848 	.ascii " So, Your Choices for the Program are:"
             75 72 20 43 68 6F 69
             63 65 73 20 66 6F 72
             20 74 68 65 20 50 72
             6F 67 72 61 6D 20 61
             72 65 3A
      004428 00                     849 	.db 0x00
                                    850 	.area CSEG    (CODE)
                           00035E   851 Fmain$__str_12$0_0$0 == .
                                    852 	.area CONST   (CODE)
      004429                        853 ___str_12:
      004429 0A                     854 	.db 0x0a
      00442A 0D                     855 	.db 0x0d
      00442B 31 2E 57 72 69 74 65   856 	.ascii "1.Write a Byte value in the EEPROM."
             20 61 20 42 79 74 65
             20 76 61 6C 75 65 20
             69 6E 20 74 68 65 20
             45 45 50 52 4F 4D 2E
      00444E 00                     857 	.db 0x00
                                    858 	.area CSEG    (CODE)
                           00035E   859 Fmain$__str_13$0_0$0 == .
                                    860 	.area CONST   (CODE)
      00444F                        861 ___str_13:
      00444F 0A                     862 	.db 0x0a
      004450 0D                     863 	.db 0x0d
      004451 32 2E 52 65 61 64 20   864 	.ascii "2.Read a Byte value in the EEPROM."
             61 20 42 79 74 65 20
             76 61 6C 75 65 20 69
             6E 20 74 68 65 20 45
             45 50 52 4F 4D 2E
      004473 00                     865 	.db 0x00
                                    866 	.area CSEG    (CODE)
                           00035E   867 Fmain$__str_14$0_0$0 == .
                                    868 	.area CONST   (CODE)
      004474                        869 ___str_14:
      004474 0A                     870 	.db 0x0a
      004475 0D                     871 	.db 0x0d
      004476 33 2E 44 75 6D 70 20   872 	.ascii "3.Dump the values in the EEPROM between the given addresses "
             74 68 65 20 76 61 6C
             75 65 73 20 69 6E 20
             74 68 65 20 45 45 50
             52 4F 4D 20 62 65 74
             77 65 65 6E 20 74 68
             65 20 67 69 76 65 6E
             20 61 64 64 72 65 73
             73 65 73 20
      0044B2 75 73 69 6E 67 20 53   873 	.ascii "using Sequential Read."
             65 71 75 65 6E 74 69
             61 6C 20 52 65 61 64
             2E
      0044C8 00                     874 	.db 0x00
                                    875 	.area CSEG    (CODE)
                           00035E   876 Fmain$__str_15$0_0$0 == .
                                    877 	.area CONST   (CODE)
      0044C9                        878 ___str_15:
      0044C9 0A                     879 	.db 0x0a
      0044CA 0D                     880 	.db 0x0d
      0044CB 34 2E 52 65 73 65 74   881 	.ascii "4.Reset the EEPROM."
             20 74 68 65 20 45 45
             50 52 4F 4D 2E
      0044DE 00                     882 	.db 0x00
                                    883 	.area CSEG    (CODE)
                           00035E   884 Fmain$__str_16$0_0$0 == .
                                    885 	.area CONST   (CODE)
      0044DF                        886 ___str_16:
      0044DF 0A                     887 	.db 0x0a
      0044E0 0D                     888 	.db 0x0d
      0044E1 35 2E 48 65 6C 70 20   889 	.ascii "5.Help Menu."
             4D 65 6E 75 2E
      0044ED 00                     890 	.db 0x00
                                    891 	.area CSEG    (CODE)
                           00035E   892 Fmain$__str_17$0_0$0 == .
                                    893 	.area CONST   (CODE)
      0044EE                        894 ___str_17:
      0044EE 0A                     895 	.db 0x0a
      0044EF 0D                     896 	.db 0x0d
      0044F0 36 2E 45 78 69 74 20   897 	.ascii "6.Exit the program"
             74 68 65 20 70 72 6F
             67 72 61 6D
      004502 00                     898 	.db 0x00
                                    899 	.area CSEG    (CODE)
                           00035E   900 Fmain$__str_18$0_0$0 == .
                                    901 	.area CONST   (CODE)
      004503                        902 ___str_18:
      004503 0A                     903 	.db 0x0a
      004504 0D                     904 	.db 0x0d
      004505 45 6E 74 65 72 20 74   905 	.ascii "Enter the valid choice:"
             68 65 20 76 61 6C 69
             64 20 63 68 6F 69 63
             65 3A
      00451C 00                     906 	.db 0x00
                                    907 	.area CSEG    (CODE)
                           00035E   908 Fmain$__str_19$0_0$0 == .
                                    909 	.area CONST   (CODE)
      00451D                        910 ___str_19:
      00451D 0A                     911 	.db 0x0a
      00451E 0D                     912 	.db 0x0d
      00451F 20 45 6E 74 65 72 20   913 	.ascii " Enter the Address where the Data is to be Stored:"
             74 68 65 20 41 64 64
             72 65 73 73 20 77 68
             65 72 65 20 74 68 65
             20 44 61 74 61 20 69
             73 20 74 6F 20 62 65
             20 53 74 6F 72 65 64
             3A
      004551 00                     914 	.db 0x00
                                    915 	.area CSEG    (CODE)
                           00035E   916 Fmain$__str_20$0_0$0 == .
                                    917 	.area CONST   (CODE)
      004552                        918 ___str_20:
      004552 0A                     919 	.db 0x0a
      004553 0D                     920 	.db 0x0d
      004554 20 45 6E 74 65 72 20   921 	.ascii " Enter the Data to be stored:"
             74 68 65 20 44 61 74
             61 20 74 6F 20 62 65
             20 73 74 6F 72 65 64
             3A
      004571 00                     922 	.db 0x00
                                    923 	.area CSEG    (CODE)
                           00035E   924 Fmain$__str_21$0_0$0 == .
                                    925 	.area CONST   (CODE)
      004572                        926 ___str_21:
      004572 0A                     927 	.db 0x0a
      004573 0D                     928 	.db 0x0d
      004574 20 44 61 74 61 20 45   929 	.ascii " Data Entered Successfully."
             6E 74 65 72 65 64 20
             53 75 63 63 65 73 73
             66 75 6C 6C 79 2E
      00458F 00                     930 	.db 0x00
                                    931 	.area CSEG    (CODE)
                           00035E   932 Fmain$__str_22$0_0$0 == .
                                    933 	.area CONST   (CODE)
      004590                        934 ___str_22:
      004590 0A                     935 	.db 0x0a
      004591 0D                     936 	.db 0x0d
      004592 20 44 61 74 61 20 57   937 	.ascii " Data Writing Failed."
             72 69 74 69 6E 67 20
             46 61 69 6C 65 64 2E
      0045A7 00                     938 	.db 0x00
                                    939 	.area CSEG    (CODE)
                           00035E   940 Fmain$__str_23$0_0$0 == .
                                    941 	.area CONST   (CODE)
      0045A8                        942 ___str_23:
      0045A8 0A                     943 	.db 0x0a
      0045A9 0D                     944 	.db 0x0d
      0045AA 20 45 6E 74 65 72 20   945 	.ascii " Enter the Address where the Data is to be Searched:"
             74 68 65 20 41 64 64
             72 65 73 73 20 77 68
             65 72 65 20 74 68 65
             20 44 61 74 61 20 69
             73 20 74 6F 20 62 65
             20 53 65 61 72 63 68
             65 64 3A
      0045DE 00                     946 	.db 0x00
                                    947 	.area CSEG    (CODE)
                           00035E   948 Fmain$__str_24$0_0$0 == .
                                    949 	.area CONST   (CODE)
      0045DF                        950 ___str_24:
      0045DF 0A                     951 	.db 0x0a
      0045E0 0D                     952 	.db 0x0d
      0045E1 44 61 74 61 3D 25 78   953 	.ascii "Data=%x"
      0045E8 00                     954 	.db 0x00
                                    955 	.area CSEG    (CODE)
                           00035E   956 Fmain$__str_25$0_0$0 == .
                                    957 	.area CONST   (CODE)
      0045E9                        958 ___str_25:
      0045E9 0A                     959 	.db 0x0a
      0045EA 0D                     960 	.db 0x0d
      0045EB 45 6E 74 65 72 20 74   961 	.ascii "Enter the First Address:"
             68 65 20 46 69 72 73
             74 20 41 64 64 72 65
             73 73 3A
      004603 00                     962 	.db 0x00
                                    963 	.area CSEG    (CODE)
                           00035E   964 Fmain$__str_26$0_0$0 == .
                                    965 	.area CONST   (CODE)
      004604                        966 ___str_26:
      004604 0A                     967 	.db 0x0a
      004605 0D                     968 	.db 0x0d
      004606 45 6E 74 65 72 20 74   969 	.ascii "Enter the Last Address:"
             68 65 20 4C 61 73 74
             20 41 64 64 72 65 73
             73 3A
      00461D 00                     970 	.db 0x00
                                    971 	.area CSEG    (CODE)
                           00035E   972 Fmain$__str_27$0_0$0 == .
                                    973 	.area CONST   (CODE)
      00461E                        974 ___str_27:
      00461E 0A                     975 	.db 0x0a
      00461F 0D                     976 	.db 0x0d
      004620 20 53 6F 72 72 79 2C   977 	.ascii " Sorry, The First Address is greater than or equal to last a"
             20 54 68 65 20 46 69
             72 73 74 20 41 64 64
             72 65 73 73 20 69 73
             20 67 72 65 61 74 65
             72 20 74 68 61 6E 20
             6F 72 20 65 71 75 61
             6C 20 74 6F 20 6C 61
             73 74 20 61
      00465C 64 64 72 65 73 73 2C   978 	.ascii "ddress,Please select the Option Again."
             50 6C 65 61 73 65 20
             73 65 6C 65 63 74 20
             74 68 65 20 4F 70 74
             69 6F 6E 20 41 67 61
             69 6E 2E
      004682 00                     979 	.db 0x00
                                    980 	.area CSEG    (CODE)
                           00035E   981 Fmain$__str_28$0_0$0 == .
                                    982 	.area CONST   (CODE)
      004683                        983 ___str_28:
      004683 0A                     984 	.db 0x0a
      004684 0D                     985 	.db 0x0d
      004685 52 65 73 65 74 20 53   986 	.ascii "Reset Successfully"
             75 63 63 65 73 73 66
             75 6C 6C 79
      004697 00                     987 	.db 0x00
                                    988 	.area CSEG    (CODE)
                           00035E   989 Fmain$__str_29$0_0$0 == .
                                    990 	.area CONST   (CODE)
      004698                        991 ___str_29:
      004698 0A                     992 	.db 0x0a
      004699 0D                     993 	.db 0x0d
      00469A 57 72 6F 6E 67 20 43   994 	.ascii "Wrong Choice Selected Please Enter Again"
             68 6F 69 63 65 20 53
             65 6C 65 63 74 65 64
             20 50 6C 65 61 73 65
             20 45 6E 74 65 72 20
             41 67 61 69 6E
      0046C2 00                     995 	.db 0x00
                                    996 	.area CSEG    (CODE)
                           00035E   997 Fmain$__str_30$0_0$0 == .
                                    998 	.area CONST   (CODE)
      0046C3                        999 ___str_30:
      0046C3 0A                    1000 	.db 0x0a
      0046C4 0A                    1001 	.db 0x0a
      0046C5 0A                    1002 	.db 0x0a
      0046C6 0D                    1003 	.db 0x0d
      0046C7 20                    1004 	.ascii " "
      0046C8 09                    1005 	.db 0x09
      0046C9 09                    1006 	.db 0x09
      0046CA 09                    1007 	.db 0x09
      0046CB 09                    1008 	.db 0x09
      0046CC 09                    1009 	.db 0x09
      0046CD 50 52 45 53 53 20 41  1010 	.ascii "PRESS ANY KEY TO CONTINUE"
             4E 59 20 4B 45 59 20
             54 4F 20 43 4F 4E 54
             49 4E 55 45
      0046E6 00                    1011 	.db 0x00
                                   1012 	.area CSEG    (CODE)
                           00035E  1013 Fmain$__str_31$0_0$0 == .
                                   1014 	.area CONST   (CODE)
      0046E7                       1015 ___str_31:
      0046E7 0A                    1016 	.db 0x0a
      0046E8 0D                    1017 	.db 0x0d
      0046E9 20 54 68 61 6E 6B 20  1018 	.ascii " Thank you for your patience and Handling. Please visit agai"
             79 6F 75 20 66 6F 72
             20 79 6F 75 72 20 70
             61 74 69 65 6E 63 65
             20 61 6E 64 20 48 61
             6E 64 6C 69 6E 67 2E
             20 50 6C 65 61 73 65
             20 76 69 73 69 74 20
             61 67 61 69
      004725 6E 2E                 1019 	.ascii "n."
      004727 00                    1020 	.db 0x00
                                   1021 	.area CSEG    (CODE)
                                   1022 	.area XINIT   (CODE)
                                   1023 	.area CABS    (ABS,CODE)
