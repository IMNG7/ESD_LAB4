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
                                     13 	.globl _timer0_ISR
                                     14 	.globl _inttostr
                                     15 	.globl _timer_init
                                     16 	.globl _getchar
                                     17 	.globl _ddram_dump
                                     18 	.globl _lcd_gotoxy
                                     19 	.globl _LCD_putch
                                     20 	.globl _lcdbusywait
                                     21 	.globl _LCD_Init
                                     22 	.globl _printf_tiny
                                     23 	.globl _printf
                                     24 	.globl _P5_7
                                     25 	.globl _P5_6
                                     26 	.globl _P5_5
                                     27 	.globl _P5_4
                                     28 	.globl _P5_3
                                     29 	.globl _P5_2
                                     30 	.globl _P5_1
                                     31 	.globl _P5_0
                                     32 	.globl _P4_7
                                     33 	.globl _P4_6
                                     34 	.globl _P4_5
                                     35 	.globl _P4_4
                                     36 	.globl _P4_3
                                     37 	.globl _P4_2
                                     38 	.globl _P4_1
                                     39 	.globl _P4_0
                                     40 	.globl _PX0L
                                     41 	.globl _PT0L
                                     42 	.globl _PX1L
                                     43 	.globl _PT1L
                                     44 	.globl _PSL
                                     45 	.globl _PT2L
                                     46 	.globl _PPCL
                                     47 	.globl _EC
                                     48 	.globl _CCF0
                                     49 	.globl _CCF1
                                     50 	.globl _CCF2
                                     51 	.globl _CCF3
                                     52 	.globl _CCF4
                                     53 	.globl _CR
                                     54 	.globl _CF
                                     55 	.globl _TF2
                                     56 	.globl _EXF2
                                     57 	.globl _RCLK
                                     58 	.globl _TCLK
                                     59 	.globl _EXEN2
                                     60 	.globl _TR2
                                     61 	.globl _C_T2
                                     62 	.globl _CP_RL2
                                     63 	.globl _T2CON_7
                                     64 	.globl _T2CON_6
                                     65 	.globl _T2CON_5
                                     66 	.globl _T2CON_4
                                     67 	.globl _T2CON_3
                                     68 	.globl _T2CON_2
                                     69 	.globl _T2CON_1
                                     70 	.globl _T2CON_0
                                     71 	.globl _PT2
                                     72 	.globl _ET2
                                     73 	.globl _CY
                                     74 	.globl _AC
                                     75 	.globl _F0
                                     76 	.globl _RS1
                                     77 	.globl _RS0
                                     78 	.globl _OV
                                     79 	.globl _F1
                                     80 	.globl _P
                                     81 	.globl _PS
                                     82 	.globl _PT1
                                     83 	.globl _PX1
                                     84 	.globl _PT0
                                     85 	.globl _PX0
                                     86 	.globl _RD
                                     87 	.globl _WR
                                     88 	.globl _T1
                                     89 	.globl _T0
                                     90 	.globl _INT1
                                     91 	.globl _INT0
                                     92 	.globl _TXD
                                     93 	.globl _RXD
                                     94 	.globl _P3_7
                                     95 	.globl _P3_6
                                     96 	.globl _P3_5
                                     97 	.globl _P3_4
                                     98 	.globl _P3_3
                                     99 	.globl _P3_2
                                    100 	.globl _P3_1
                                    101 	.globl _P3_0
                                    102 	.globl _EA
                                    103 	.globl _ES
                                    104 	.globl _ET1
                                    105 	.globl _EX1
                                    106 	.globl _ET0
                                    107 	.globl _EX0
                                    108 	.globl _P2_7
                                    109 	.globl _P2_6
                                    110 	.globl _P2_5
                                    111 	.globl _P2_4
                                    112 	.globl _P2_3
                                    113 	.globl _P2_2
                                    114 	.globl _P2_1
                                    115 	.globl _P2_0
                                    116 	.globl _SM0
                                    117 	.globl _SM1
                                    118 	.globl _SM2
                                    119 	.globl _REN
                                    120 	.globl _TB8
                                    121 	.globl _RB8
                                    122 	.globl _TI
                                    123 	.globl _RI
                                    124 	.globl _P1_7
                                    125 	.globl _P1_6
                                    126 	.globl _P1_5
                                    127 	.globl _P1_4
                                    128 	.globl _P1_3
                                    129 	.globl _P1_2
                                    130 	.globl _P1_1
                                    131 	.globl _P1_0
                                    132 	.globl _TF1
                                    133 	.globl _TR1
                                    134 	.globl _TF0
                                    135 	.globl _TR0
                                    136 	.globl _IE1
                                    137 	.globl _IT1
                                    138 	.globl _IE0
                                    139 	.globl _IT0
                                    140 	.globl _P0_7
                                    141 	.globl _P0_6
                                    142 	.globl _P0_5
                                    143 	.globl _P0_4
                                    144 	.globl _P0_3
                                    145 	.globl _P0_2
                                    146 	.globl _P0_1
                                    147 	.globl _P0_0
                                    148 	.globl _EECON
                                    149 	.globl _KBF
                                    150 	.globl _KBE
                                    151 	.globl _KBLS
                                    152 	.globl _BRL
                                    153 	.globl _BDRCON
                                    154 	.globl _T2MOD
                                    155 	.globl _SPDAT
                                    156 	.globl _SPSTA
                                    157 	.globl _SPCON
                                    158 	.globl _SADEN
                                    159 	.globl _SADDR
                                    160 	.globl _WDTPRG
                                    161 	.globl _WDTRST
                                    162 	.globl _P5
                                    163 	.globl _P4
                                    164 	.globl _IPH1
                                    165 	.globl _IPL1
                                    166 	.globl _IPH0
                                    167 	.globl _IPL0
                                    168 	.globl _IEN1
                                    169 	.globl _IEN0
                                    170 	.globl _CMOD
                                    171 	.globl _CL
                                    172 	.globl _CH
                                    173 	.globl _CCON
                                    174 	.globl _CCAPM4
                                    175 	.globl _CCAPM3
                                    176 	.globl _CCAPM2
                                    177 	.globl _CCAPM1
                                    178 	.globl _CCAPM0
                                    179 	.globl _CCAP4L
                                    180 	.globl _CCAP3L
                                    181 	.globl _CCAP2L
                                    182 	.globl _CCAP1L
                                    183 	.globl _CCAP0L
                                    184 	.globl _CCAP4H
                                    185 	.globl _CCAP3H
                                    186 	.globl _CCAP2H
                                    187 	.globl _CCAP1H
                                    188 	.globl _CCAP0H
                                    189 	.globl _CKCON1
                                    190 	.globl _CKCON0
                                    191 	.globl _CKRL
                                    192 	.globl _AUXR1
                                    193 	.globl _AUXR
                                    194 	.globl _TH2
                                    195 	.globl _TL2
                                    196 	.globl _RCAP2H
                                    197 	.globl _RCAP2L
                                    198 	.globl _T2CON
                                    199 	.globl _B
                                    200 	.globl _ACC
                                    201 	.globl _PSW
                                    202 	.globl _IP
                                    203 	.globl _P3
                                    204 	.globl _IE
                                    205 	.globl _P2
                                    206 	.globl _SBUF
                                    207 	.globl _SCON
                                    208 	.globl _P1
                                    209 	.globl _TH1
                                    210 	.globl _TH0
                                    211 	.globl _TL1
                                    212 	.globl _TL0
                                    213 	.globl _TMOD
                                    214 	.globl _TCON
                                    215 	.globl _PCON
                                    216 	.globl _DPH
                                    217 	.globl _DPL
                                    218 	.globl _SP
                                    219 	.globl _P0
                                    220 	.globl _minutes
                                    221 	.globl _seconds
                                    222 	.globl _milli
                                    223 	.globl _flag
                                    224 	.globl _count
                                    225 	.globl _DR_READ
                                    226 	.globl _DR_WRITE
                                    227 	.globl _BF_Read
                                    228 	.globl _IR_Write
                                    229 	.globl _hours
                                    230 	.globl _time_show
                                    231 ;--------------------------------------------------------
                                    232 ; special function registers
                                    233 ;--------------------------------------------------------
                                    234 	.area RSEG    (ABS,DATA)
      000000                        235 	.org 0x0000
                           000080   236 G$P0$0_0$0 == 0x0080
                           000080   237 _P0	=	0x0080
                           000081   238 G$SP$0_0$0 == 0x0081
                           000081   239 _SP	=	0x0081
                           000082   240 G$DPL$0_0$0 == 0x0082
                           000082   241 _DPL	=	0x0082
                           000083   242 G$DPH$0_0$0 == 0x0083
                           000083   243 _DPH	=	0x0083
                           000087   244 G$PCON$0_0$0 == 0x0087
                           000087   245 _PCON	=	0x0087
                           000088   246 G$TCON$0_0$0 == 0x0088
                           000088   247 _TCON	=	0x0088
                           000089   248 G$TMOD$0_0$0 == 0x0089
                           000089   249 _TMOD	=	0x0089
                           00008A   250 G$TL0$0_0$0 == 0x008a
                           00008A   251 _TL0	=	0x008a
                           00008B   252 G$TL1$0_0$0 == 0x008b
                           00008B   253 _TL1	=	0x008b
                           00008C   254 G$TH0$0_0$0 == 0x008c
                           00008C   255 _TH0	=	0x008c
                           00008D   256 G$TH1$0_0$0 == 0x008d
                           00008D   257 _TH1	=	0x008d
                           000090   258 G$P1$0_0$0 == 0x0090
                           000090   259 _P1	=	0x0090
                           000098   260 G$SCON$0_0$0 == 0x0098
                           000098   261 _SCON	=	0x0098
                           000099   262 G$SBUF$0_0$0 == 0x0099
                           000099   263 _SBUF	=	0x0099
                           0000A0   264 G$P2$0_0$0 == 0x00a0
                           0000A0   265 _P2	=	0x00a0
                           0000A8   266 G$IE$0_0$0 == 0x00a8
                           0000A8   267 _IE	=	0x00a8
                           0000B0   268 G$P3$0_0$0 == 0x00b0
                           0000B0   269 _P3	=	0x00b0
                           0000B8   270 G$IP$0_0$0 == 0x00b8
                           0000B8   271 _IP	=	0x00b8
                           0000D0   272 G$PSW$0_0$0 == 0x00d0
                           0000D0   273 _PSW	=	0x00d0
                           0000E0   274 G$ACC$0_0$0 == 0x00e0
                           0000E0   275 _ACC	=	0x00e0
                           0000F0   276 G$B$0_0$0 == 0x00f0
                           0000F0   277 _B	=	0x00f0
                           0000C8   278 G$T2CON$0_0$0 == 0x00c8
                           0000C8   279 _T2CON	=	0x00c8
                           0000CA   280 G$RCAP2L$0_0$0 == 0x00ca
                           0000CA   281 _RCAP2L	=	0x00ca
                           0000CB   282 G$RCAP2H$0_0$0 == 0x00cb
                           0000CB   283 _RCAP2H	=	0x00cb
                           0000CC   284 G$TL2$0_0$0 == 0x00cc
                           0000CC   285 _TL2	=	0x00cc
                           0000CD   286 G$TH2$0_0$0 == 0x00cd
                           0000CD   287 _TH2	=	0x00cd
                           00008E   288 G$AUXR$0_0$0 == 0x008e
                           00008E   289 _AUXR	=	0x008e
                           0000A2   290 G$AUXR1$0_0$0 == 0x00a2
                           0000A2   291 _AUXR1	=	0x00a2
                           000097   292 G$CKRL$0_0$0 == 0x0097
                           000097   293 _CKRL	=	0x0097
                           00008F   294 G$CKCON0$0_0$0 == 0x008f
                           00008F   295 _CKCON0	=	0x008f
                           0000AF   296 G$CKCON1$0_0$0 == 0x00af
                           0000AF   297 _CKCON1	=	0x00af
                           0000FA   298 G$CCAP0H$0_0$0 == 0x00fa
                           0000FA   299 _CCAP0H	=	0x00fa
                           0000FB   300 G$CCAP1H$0_0$0 == 0x00fb
                           0000FB   301 _CCAP1H	=	0x00fb
                           0000FC   302 G$CCAP2H$0_0$0 == 0x00fc
                           0000FC   303 _CCAP2H	=	0x00fc
                           0000FD   304 G$CCAP3H$0_0$0 == 0x00fd
                           0000FD   305 _CCAP3H	=	0x00fd
                           0000FE   306 G$CCAP4H$0_0$0 == 0x00fe
                           0000FE   307 _CCAP4H	=	0x00fe
                           0000EA   308 G$CCAP0L$0_0$0 == 0x00ea
                           0000EA   309 _CCAP0L	=	0x00ea
                           0000EB   310 G$CCAP1L$0_0$0 == 0x00eb
                           0000EB   311 _CCAP1L	=	0x00eb
                           0000EC   312 G$CCAP2L$0_0$0 == 0x00ec
                           0000EC   313 _CCAP2L	=	0x00ec
                           0000ED   314 G$CCAP3L$0_0$0 == 0x00ed
                           0000ED   315 _CCAP3L	=	0x00ed
                           0000EE   316 G$CCAP4L$0_0$0 == 0x00ee
                           0000EE   317 _CCAP4L	=	0x00ee
                           0000DA   318 G$CCAPM0$0_0$0 == 0x00da
                           0000DA   319 _CCAPM0	=	0x00da
                           0000DB   320 G$CCAPM1$0_0$0 == 0x00db
                           0000DB   321 _CCAPM1	=	0x00db
                           0000DC   322 G$CCAPM2$0_0$0 == 0x00dc
                           0000DC   323 _CCAPM2	=	0x00dc
                           0000DD   324 G$CCAPM3$0_0$0 == 0x00dd
                           0000DD   325 _CCAPM3	=	0x00dd
                           0000DE   326 G$CCAPM4$0_0$0 == 0x00de
                           0000DE   327 _CCAPM4	=	0x00de
                           0000D8   328 G$CCON$0_0$0 == 0x00d8
                           0000D8   329 _CCON	=	0x00d8
                           0000F9   330 G$CH$0_0$0 == 0x00f9
                           0000F9   331 _CH	=	0x00f9
                           0000E9   332 G$CL$0_0$0 == 0x00e9
                           0000E9   333 _CL	=	0x00e9
                           0000D9   334 G$CMOD$0_0$0 == 0x00d9
                           0000D9   335 _CMOD	=	0x00d9
                           0000A8   336 G$IEN0$0_0$0 == 0x00a8
                           0000A8   337 _IEN0	=	0x00a8
                           0000B1   338 G$IEN1$0_0$0 == 0x00b1
                           0000B1   339 _IEN1	=	0x00b1
                           0000B8   340 G$IPL0$0_0$0 == 0x00b8
                           0000B8   341 _IPL0	=	0x00b8
                           0000B7   342 G$IPH0$0_0$0 == 0x00b7
                           0000B7   343 _IPH0	=	0x00b7
                           0000B2   344 G$IPL1$0_0$0 == 0x00b2
                           0000B2   345 _IPL1	=	0x00b2
                           0000B3   346 G$IPH1$0_0$0 == 0x00b3
                           0000B3   347 _IPH1	=	0x00b3
                           0000C0   348 G$P4$0_0$0 == 0x00c0
                           0000C0   349 _P4	=	0x00c0
                           0000E8   350 G$P5$0_0$0 == 0x00e8
                           0000E8   351 _P5	=	0x00e8
                           0000A6   352 G$WDTRST$0_0$0 == 0x00a6
                           0000A6   353 _WDTRST	=	0x00a6
                           0000A7   354 G$WDTPRG$0_0$0 == 0x00a7
                           0000A7   355 _WDTPRG	=	0x00a7
                           0000A9   356 G$SADDR$0_0$0 == 0x00a9
                           0000A9   357 _SADDR	=	0x00a9
                           0000B9   358 G$SADEN$0_0$0 == 0x00b9
                           0000B9   359 _SADEN	=	0x00b9
                           0000C3   360 G$SPCON$0_0$0 == 0x00c3
                           0000C3   361 _SPCON	=	0x00c3
                           0000C4   362 G$SPSTA$0_0$0 == 0x00c4
                           0000C4   363 _SPSTA	=	0x00c4
                           0000C5   364 G$SPDAT$0_0$0 == 0x00c5
                           0000C5   365 _SPDAT	=	0x00c5
                           0000C9   366 G$T2MOD$0_0$0 == 0x00c9
                           0000C9   367 _T2MOD	=	0x00c9
                           00009B   368 G$BDRCON$0_0$0 == 0x009b
                           00009B   369 _BDRCON	=	0x009b
                           00009A   370 G$BRL$0_0$0 == 0x009a
                           00009A   371 _BRL	=	0x009a
                           00009C   372 G$KBLS$0_0$0 == 0x009c
                           00009C   373 _KBLS	=	0x009c
                           00009D   374 G$KBE$0_0$0 == 0x009d
                           00009D   375 _KBE	=	0x009d
                           00009E   376 G$KBF$0_0$0 == 0x009e
                           00009E   377 _KBF	=	0x009e
                           0000D2   378 G$EECON$0_0$0 == 0x00d2
                           0000D2   379 _EECON	=	0x00d2
                                    380 ;--------------------------------------------------------
                                    381 ; special function bits
                                    382 ;--------------------------------------------------------
                                    383 	.area RSEG    (ABS,DATA)
      000000                        384 	.org 0x0000
                           000080   385 G$P0_0$0_0$0 == 0x0080
                           000080   386 _P0_0	=	0x0080
                           000081   387 G$P0_1$0_0$0 == 0x0081
                           000081   388 _P0_1	=	0x0081
                           000082   389 G$P0_2$0_0$0 == 0x0082
                           000082   390 _P0_2	=	0x0082
                           000083   391 G$P0_3$0_0$0 == 0x0083
                           000083   392 _P0_3	=	0x0083
                           000084   393 G$P0_4$0_0$0 == 0x0084
                           000084   394 _P0_4	=	0x0084
                           000085   395 G$P0_5$0_0$0 == 0x0085
                           000085   396 _P0_5	=	0x0085
                           000086   397 G$P0_6$0_0$0 == 0x0086
                           000086   398 _P0_6	=	0x0086
                           000087   399 G$P0_7$0_0$0 == 0x0087
                           000087   400 _P0_7	=	0x0087
                           000088   401 G$IT0$0_0$0 == 0x0088
                           000088   402 _IT0	=	0x0088
                           000089   403 G$IE0$0_0$0 == 0x0089
                           000089   404 _IE0	=	0x0089
                           00008A   405 G$IT1$0_0$0 == 0x008a
                           00008A   406 _IT1	=	0x008a
                           00008B   407 G$IE1$0_0$0 == 0x008b
                           00008B   408 _IE1	=	0x008b
                           00008C   409 G$TR0$0_0$0 == 0x008c
                           00008C   410 _TR0	=	0x008c
                           00008D   411 G$TF0$0_0$0 == 0x008d
                           00008D   412 _TF0	=	0x008d
                           00008E   413 G$TR1$0_0$0 == 0x008e
                           00008E   414 _TR1	=	0x008e
                           00008F   415 G$TF1$0_0$0 == 0x008f
                           00008F   416 _TF1	=	0x008f
                           000090   417 G$P1_0$0_0$0 == 0x0090
                           000090   418 _P1_0	=	0x0090
                           000091   419 G$P1_1$0_0$0 == 0x0091
                           000091   420 _P1_1	=	0x0091
                           000092   421 G$P1_2$0_0$0 == 0x0092
                           000092   422 _P1_2	=	0x0092
                           000093   423 G$P1_3$0_0$0 == 0x0093
                           000093   424 _P1_3	=	0x0093
                           000094   425 G$P1_4$0_0$0 == 0x0094
                           000094   426 _P1_4	=	0x0094
                           000095   427 G$P1_5$0_0$0 == 0x0095
                           000095   428 _P1_5	=	0x0095
                           000096   429 G$P1_6$0_0$0 == 0x0096
                           000096   430 _P1_6	=	0x0096
                           000097   431 G$P1_7$0_0$0 == 0x0097
                           000097   432 _P1_7	=	0x0097
                           000098   433 G$RI$0_0$0 == 0x0098
                           000098   434 _RI	=	0x0098
                           000099   435 G$TI$0_0$0 == 0x0099
                           000099   436 _TI	=	0x0099
                           00009A   437 G$RB8$0_0$0 == 0x009a
                           00009A   438 _RB8	=	0x009a
                           00009B   439 G$TB8$0_0$0 == 0x009b
                           00009B   440 _TB8	=	0x009b
                           00009C   441 G$REN$0_0$0 == 0x009c
                           00009C   442 _REN	=	0x009c
                           00009D   443 G$SM2$0_0$0 == 0x009d
                           00009D   444 _SM2	=	0x009d
                           00009E   445 G$SM1$0_0$0 == 0x009e
                           00009E   446 _SM1	=	0x009e
                           00009F   447 G$SM0$0_0$0 == 0x009f
                           00009F   448 _SM0	=	0x009f
                           0000A0   449 G$P2_0$0_0$0 == 0x00a0
                           0000A0   450 _P2_0	=	0x00a0
                           0000A1   451 G$P2_1$0_0$0 == 0x00a1
                           0000A1   452 _P2_1	=	0x00a1
                           0000A2   453 G$P2_2$0_0$0 == 0x00a2
                           0000A2   454 _P2_2	=	0x00a2
                           0000A3   455 G$P2_3$0_0$0 == 0x00a3
                           0000A3   456 _P2_3	=	0x00a3
                           0000A4   457 G$P2_4$0_0$0 == 0x00a4
                           0000A4   458 _P2_4	=	0x00a4
                           0000A5   459 G$P2_5$0_0$0 == 0x00a5
                           0000A5   460 _P2_5	=	0x00a5
                           0000A6   461 G$P2_6$0_0$0 == 0x00a6
                           0000A6   462 _P2_6	=	0x00a6
                           0000A7   463 G$P2_7$0_0$0 == 0x00a7
                           0000A7   464 _P2_7	=	0x00a7
                           0000A8   465 G$EX0$0_0$0 == 0x00a8
                           0000A8   466 _EX0	=	0x00a8
                           0000A9   467 G$ET0$0_0$0 == 0x00a9
                           0000A9   468 _ET0	=	0x00a9
                           0000AA   469 G$EX1$0_0$0 == 0x00aa
                           0000AA   470 _EX1	=	0x00aa
                           0000AB   471 G$ET1$0_0$0 == 0x00ab
                           0000AB   472 _ET1	=	0x00ab
                           0000AC   473 G$ES$0_0$0 == 0x00ac
                           0000AC   474 _ES	=	0x00ac
                           0000AF   475 G$EA$0_0$0 == 0x00af
                           0000AF   476 _EA	=	0x00af
                           0000B0   477 G$P3_0$0_0$0 == 0x00b0
                           0000B0   478 _P3_0	=	0x00b0
                           0000B1   479 G$P3_1$0_0$0 == 0x00b1
                           0000B1   480 _P3_1	=	0x00b1
                           0000B2   481 G$P3_2$0_0$0 == 0x00b2
                           0000B2   482 _P3_2	=	0x00b2
                           0000B3   483 G$P3_3$0_0$0 == 0x00b3
                           0000B3   484 _P3_3	=	0x00b3
                           0000B4   485 G$P3_4$0_0$0 == 0x00b4
                           0000B4   486 _P3_4	=	0x00b4
                           0000B5   487 G$P3_5$0_0$0 == 0x00b5
                           0000B5   488 _P3_5	=	0x00b5
                           0000B6   489 G$P3_6$0_0$0 == 0x00b6
                           0000B6   490 _P3_6	=	0x00b6
                           0000B7   491 G$P3_7$0_0$0 == 0x00b7
                           0000B7   492 _P3_7	=	0x00b7
                           0000B0   493 G$RXD$0_0$0 == 0x00b0
                           0000B0   494 _RXD	=	0x00b0
                           0000B1   495 G$TXD$0_0$0 == 0x00b1
                           0000B1   496 _TXD	=	0x00b1
                           0000B2   497 G$INT0$0_0$0 == 0x00b2
                           0000B2   498 _INT0	=	0x00b2
                           0000B3   499 G$INT1$0_0$0 == 0x00b3
                           0000B3   500 _INT1	=	0x00b3
                           0000B4   501 G$T0$0_0$0 == 0x00b4
                           0000B4   502 _T0	=	0x00b4
                           0000B5   503 G$T1$0_0$0 == 0x00b5
                           0000B5   504 _T1	=	0x00b5
                           0000B6   505 G$WR$0_0$0 == 0x00b6
                           0000B6   506 _WR	=	0x00b6
                           0000B7   507 G$RD$0_0$0 == 0x00b7
                           0000B7   508 _RD	=	0x00b7
                           0000B8   509 G$PX0$0_0$0 == 0x00b8
                           0000B8   510 _PX0	=	0x00b8
                           0000B9   511 G$PT0$0_0$0 == 0x00b9
                           0000B9   512 _PT0	=	0x00b9
                           0000BA   513 G$PX1$0_0$0 == 0x00ba
                           0000BA   514 _PX1	=	0x00ba
                           0000BB   515 G$PT1$0_0$0 == 0x00bb
                           0000BB   516 _PT1	=	0x00bb
                           0000BC   517 G$PS$0_0$0 == 0x00bc
                           0000BC   518 _PS	=	0x00bc
                           0000D0   519 G$P$0_0$0 == 0x00d0
                           0000D0   520 _P	=	0x00d0
                           0000D1   521 G$F1$0_0$0 == 0x00d1
                           0000D1   522 _F1	=	0x00d1
                           0000D2   523 G$OV$0_0$0 == 0x00d2
                           0000D2   524 _OV	=	0x00d2
                           0000D3   525 G$RS0$0_0$0 == 0x00d3
                           0000D3   526 _RS0	=	0x00d3
                           0000D4   527 G$RS1$0_0$0 == 0x00d4
                           0000D4   528 _RS1	=	0x00d4
                           0000D5   529 G$F0$0_0$0 == 0x00d5
                           0000D5   530 _F0	=	0x00d5
                           0000D6   531 G$AC$0_0$0 == 0x00d6
                           0000D6   532 _AC	=	0x00d6
                           0000D7   533 G$CY$0_0$0 == 0x00d7
                           0000D7   534 _CY	=	0x00d7
                           0000AD   535 G$ET2$0_0$0 == 0x00ad
                           0000AD   536 _ET2	=	0x00ad
                           0000BD   537 G$PT2$0_0$0 == 0x00bd
                           0000BD   538 _PT2	=	0x00bd
                           0000C8   539 G$T2CON_0$0_0$0 == 0x00c8
                           0000C8   540 _T2CON_0	=	0x00c8
                           0000C9   541 G$T2CON_1$0_0$0 == 0x00c9
                           0000C9   542 _T2CON_1	=	0x00c9
                           0000CA   543 G$T2CON_2$0_0$0 == 0x00ca
                           0000CA   544 _T2CON_2	=	0x00ca
                           0000CB   545 G$T2CON_3$0_0$0 == 0x00cb
                           0000CB   546 _T2CON_3	=	0x00cb
                           0000CC   547 G$T2CON_4$0_0$0 == 0x00cc
                           0000CC   548 _T2CON_4	=	0x00cc
                           0000CD   549 G$T2CON_5$0_0$0 == 0x00cd
                           0000CD   550 _T2CON_5	=	0x00cd
                           0000CE   551 G$T2CON_6$0_0$0 == 0x00ce
                           0000CE   552 _T2CON_6	=	0x00ce
                           0000CF   553 G$T2CON_7$0_0$0 == 0x00cf
                           0000CF   554 _T2CON_7	=	0x00cf
                           0000C8   555 G$CP_RL2$0_0$0 == 0x00c8
                           0000C8   556 _CP_RL2	=	0x00c8
                           0000C9   557 G$C_T2$0_0$0 == 0x00c9
                           0000C9   558 _C_T2	=	0x00c9
                           0000CA   559 G$TR2$0_0$0 == 0x00ca
                           0000CA   560 _TR2	=	0x00ca
                           0000CB   561 G$EXEN2$0_0$0 == 0x00cb
                           0000CB   562 _EXEN2	=	0x00cb
                           0000CC   563 G$TCLK$0_0$0 == 0x00cc
                           0000CC   564 _TCLK	=	0x00cc
                           0000CD   565 G$RCLK$0_0$0 == 0x00cd
                           0000CD   566 _RCLK	=	0x00cd
                           0000CE   567 G$EXF2$0_0$0 == 0x00ce
                           0000CE   568 _EXF2	=	0x00ce
                           0000CF   569 G$TF2$0_0$0 == 0x00cf
                           0000CF   570 _TF2	=	0x00cf
                           0000DF   571 G$CF$0_0$0 == 0x00df
                           0000DF   572 _CF	=	0x00df
                           0000DE   573 G$CR$0_0$0 == 0x00de
                           0000DE   574 _CR	=	0x00de
                           0000DC   575 G$CCF4$0_0$0 == 0x00dc
                           0000DC   576 _CCF4	=	0x00dc
                           0000DB   577 G$CCF3$0_0$0 == 0x00db
                           0000DB   578 _CCF3	=	0x00db
                           0000DA   579 G$CCF2$0_0$0 == 0x00da
                           0000DA   580 _CCF2	=	0x00da
                           0000D9   581 G$CCF1$0_0$0 == 0x00d9
                           0000D9   582 _CCF1	=	0x00d9
                           0000D8   583 G$CCF0$0_0$0 == 0x00d8
                           0000D8   584 _CCF0	=	0x00d8
                           0000AE   585 G$EC$0_0$0 == 0x00ae
                           0000AE   586 _EC	=	0x00ae
                           0000BE   587 G$PPCL$0_0$0 == 0x00be
                           0000BE   588 _PPCL	=	0x00be
                           0000BD   589 G$PT2L$0_0$0 == 0x00bd
                           0000BD   590 _PT2L	=	0x00bd
                           0000BC   591 G$PSL$0_0$0 == 0x00bc
                           0000BC   592 _PSL	=	0x00bc
                           0000BB   593 G$PT1L$0_0$0 == 0x00bb
                           0000BB   594 _PT1L	=	0x00bb
                           0000BA   595 G$PX1L$0_0$0 == 0x00ba
                           0000BA   596 _PX1L	=	0x00ba
                           0000B9   597 G$PT0L$0_0$0 == 0x00b9
                           0000B9   598 _PT0L	=	0x00b9
                           0000B8   599 G$PX0L$0_0$0 == 0x00b8
                           0000B8   600 _PX0L	=	0x00b8
                           0000C0   601 G$P4_0$0_0$0 == 0x00c0
                           0000C0   602 _P4_0	=	0x00c0
                           0000C1   603 G$P4_1$0_0$0 == 0x00c1
                           0000C1   604 _P4_1	=	0x00c1
                           0000C2   605 G$P4_2$0_0$0 == 0x00c2
                           0000C2   606 _P4_2	=	0x00c2
                           0000C3   607 G$P4_3$0_0$0 == 0x00c3
                           0000C3   608 _P4_3	=	0x00c3
                           0000C4   609 G$P4_4$0_0$0 == 0x00c4
                           0000C4   610 _P4_4	=	0x00c4
                           0000C5   611 G$P4_5$0_0$0 == 0x00c5
                           0000C5   612 _P4_5	=	0x00c5
                           0000C6   613 G$P4_6$0_0$0 == 0x00c6
                           0000C6   614 _P4_6	=	0x00c6
                           0000C7   615 G$P4_7$0_0$0 == 0x00c7
                           0000C7   616 _P4_7	=	0x00c7
                           0000E8   617 G$P5_0$0_0$0 == 0x00e8
                           0000E8   618 _P5_0	=	0x00e8
                           0000E9   619 G$P5_1$0_0$0 == 0x00e9
                           0000E9   620 _P5_1	=	0x00e9
                           0000EA   621 G$P5_2$0_0$0 == 0x00ea
                           0000EA   622 _P5_2	=	0x00ea
                           0000EB   623 G$P5_3$0_0$0 == 0x00eb
                           0000EB   624 _P5_3	=	0x00eb
                           0000EC   625 G$P5_4$0_0$0 == 0x00ec
                           0000EC   626 _P5_4	=	0x00ec
                           0000ED   627 G$P5_5$0_0$0 == 0x00ed
                           0000ED   628 _P5_5	=	0x00ed
                           0000EE   629 G$P5_6$0_0$0 == 0x00ee
                           0000EE   630 _P5_6	=	0x00ee
                           0000EF   631 G$P5_7$0_0$0 == 0x00ef
                           0000EF   632 _P5_7	=	0x00ef
                                    633 ;--------------------------------------------------------
                                    634 ; overlayable register banks
                                    635 ;--------------------------------------------------------
                                    636 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        637 	.ds 8
                                    638 ;--------------------------------------------------------
                                    639 ; internal ram data
                                    640 ;--------------------------------------------------------
                                    641 	.area DSEG    (DATA)
                                    642 ;--------------------------------------------------------
                                    643 ; overlayable items in internal ram 
                                    644 ;--------------------------------------------------------
                                    645 ;--------------------------------------------------------
                                    646 ; Stack segment in internal ram 
                                    647 ;--------------------------------------------------------
                                    648 	.area	SSEG
      000014                        649 __start__stack:
      000014                        650 	.ds	1
                                    651 
                                    652 ;--------------------------------------------------------
                                    653 ; indirectly addressable internal ram data
                                    654 ;--------------------------------------------------------
                                    655 	.area ISEG    (DATA)
                                    656 ;--------------------------------------------------------
                                    657 ; absolute internal ram data
                                    658 ;--------------------------------------------------------
                                    659 	.area IABS    (ABS,DATA)
                                    660 	.area IABS    (ABS,DATA)
                                    661 ;--------------------------------------------------------
                                    662 ; bit data
                                    663 ;--------------------------------------------------------
                                    664 	.area BSEG    (BIT)
                                    665 ;--------------------------------------------------------
                                    666 ; paged external ram data
                                    667 ;--------------------------------------------------------
                                    668 	.area PSEG    (PAG,XDATA)
                                    669 ;--------------------------------------------------------
                                    670 ; external ram data
                                    671 ;--------------------------------------------------------
                                    672 	.area XSEG    (XDATA)
                           000000   673 G$hours$0_0$0==.
      000414                        674 _hours::
      000414                        675 	.ds 1
                           00F000   676 G$IR_Write$0_0$0 == 0xf000
                           00F000   677 _IR_Write	=	0xf000
                           00F200   678 G$BF_Read$0_0$0 == 0xf200
                           00F200   679 _BF_Read	=	0xf200
                           00F100   680 G$DR_WRITE$0_0$0 == 0xf100
                           00F100   681 _DR_WRITE	=	0xf100
                           00F300   682 G$DR_READ$0_0$0 == 0xf300
                           00F300   683 _DR_READ	=	0xf300
                           000001   684 Lmain.main$a$1_0$34==.
      000415                        685 _main_a_65536_34:
      000415                        686 	.ds 24
                           000019   687 Lmain.main$b$1_0$34==.
      00042D                        688 _main_b_65536_34:
      00042D                        689 	.ds 23
                           000030   690 Lmain.main$choice$1_1$35==.
      000444                        691 _main_choice_65537_35:
      000444                        692 	.ds 1
                           000031   693 Lmain.main$row_value$1_1$35==.
      000445                        694 _main_row_value_65537_35:
      000445                        695 	.ds 1
                           000032   696 Lmain.main$column1$1_1$35==.
      000446                        697 _main_column1_65537_35:
      000446                        698 	.ds 1
                           000033   699 Lmain.main$column2$1_1$35==.
      000447                        700 _main_column2_65537_35:
      000447                        701 	.ds 1
                           000034   702 Lmain.main$column_value$1_1$35==.
      000448                        703 _main_column_value_65537_35:
      000448                        704 	.ds 1
                           000035   705 Lmain.main$choice1$3_2$39==.
      000449                        706 _main_choice1_196610_39:
      000449                        707 	.ds 1
                                    708 ;--------------------------------------------------------
                                    709 ; absolute external ram data
                                    710 ;--------------------------------------------------------
                                    711 	.area XABS    (ABS,XDATA)
                                    712 ;--------------------------------------------------------
                                    713 ; external initialized ram data
                                    714 ;--------------------------------------------------------
                                    715 	.area XISEG   (XDATA)
                           000000   716 G$count$0_0$0==.
      0004A1                        717 _count::
      0004A1                        718 	.ds 8
                           000008   719 G$flag$0_0$0==.
      0004A9                        720 _flag::
      0004A9                        721 	.ds 1
                           000009   722 G$milli$0_0$0==.
      0004AA                        723 _milli::
      0004AA                        724 	.ds 1
                           00000A   725 G$seconds$0_0$0==.
      0004AB                        726 _seconds::
      0004AB                        727 	.ds 1
                           00000B   728 G$minutes$0_0$0==.
      0004AC                        729 _minutes::
      0004AC                        730 	.ds 1
                                    731 	.area HOME    (CODE)
                                    732 	.area GSINIT0 (CODE)
                                    733 	.area GSINIT1 (CODE)
                                    734 	.area GSINIT2 (CODE)
                                    735 	.area GSINIT3 (CODE)
                                    736 	.area GSINIT4 (CODE)
                                    737 	.area GSINIT5 (CODE)
                                    738 	.area GSINIT  (CODE)
                                    739 	.area GSFINAL (CODE)
                                    740 	.area CSEG    (CODE)
                                    741 ;--------------------------------------------------------
                                    742 ; interrupt vector 
                                    743 ;--------------------------------------------------------
                                    744 	.area HOME    (CODE)
      002200                        745 __interrupt_vect:
      002200 02 22 11         [24]  746 	ljmp	__sdcc_gsinit_startup
      002203 32               [24]  747 	reti
      002204                        748 	.ds	7
      00220B 02 25 42         [24]  749 	ljmp	_timer0_ISR
                                    750 ;--------------------------------------------------------
                                    751 ; global & static initialisations
                                    752 ;--------------------------------------------------------
                                    753 	.area HOME    (CODE)
                                    754 	.area GSINIT  (CODE)
                                    755 	.area GSFINAL (CODE)
                                    756 	.area GSINIT  (CODE)
                                    757 	.globl __sdcc_gsinit_startup
                                    758 	.globl __sdcc_program_startup
                                    759 	.globl __start__stack
                                    760 	.globl __mcs51_genXINIT
                                    761 	.globl __mcs51_genXRAMCLEAR
                                    762 	.globl __mcs51_genRAMCLEAR
                                    763 	.area GSFINAL (CODE)
      00226A 02 22 0E         [24]  764 	ljmp	__sdcc_program_startup
                                    765 ;--------------------------------------------------------
                                    766 ; Home
                                    767 ;--------------------------------------------------------
                                    768 	.area HOME    (CODE)
                                    769 	.area HOME    (CODE)
      00220E                        770 __sdcc_program_startup:
      00220E 02 27 17         [24]  771 	ljmp	_main
                                    772 ;	return from main will return to caller
                                    773 ;--------------------------------------------------------
                                    774 ; code
                                    775 ;--------------------------------------------------------
                                    776 	.area CSEG    (CODE)
                                    777 ;------------------------------------------------------------
                                    778 ;Allocation info for local variables in function 'timer0_ISR'
                                    779 ;------------------------------------------------------------
                           000000   780 	G$timer0_ISR$0$0 ==.
                           000000   781 	C$main.c$24$0_0$25 ==.
                                    782 ;	main.c:24: void timer0_ISR() __interrupt(1)    // Interrupt Service Routing of the Timer 0
                                    783 ;	-----------------------------------------
                                    784 ;	 function timer0_ISR
                                    785 ;	-----------------------------------------
      002542                        786 _timer0_ISR:
                           000007   787 	ar7 = 0x07
                           000006   788 	ar6 = 0x06
                           000005   789 	ar5 = 0x05
                           000004   790 	ar4 = 0x04
                           000003   791 	ar3 = 0x03
                           000002   792 	ar2 = 0x02
                           000001   793 	ar1 = 0x01
                           000000   794 	ar0 = 0x00
      002542 C0 E0            [24]  795 	push	acc
      002544 C0 82            [24]  796 	push	dpl
      002546 C0 83            [24]  797 	push	dph
      002548 C0 07            [24]  798 	push	ar7
      00254A C0 06            [24]  799 	push	ar6
      00254C C0 05            [24]  800 	push	ar5
      00254E C0 04            [24]  801 	push	ar4
      002550 C0 03            [24]  802 	push	ar3
      002552 C0 02            [24]  803 	push	ar2
      002554 C0 01            [24]  804 	push	ar1
      002556 C0 00            [24]  805 	push	ar0
      002558 C0 D0            [24]  806 	push	psw
      00255A 75 D0 00         [24]  807 	mov	psw,#0x00
                           00001B   808 	C$main.c$25$1_0$25 ==.
                                    809 ;	main.c:25: {   EA=0;
                                    810 ;	assignBit
      00255D C2 AF            [12]  811 	clr	_EA
                           00001D   812 	C$main.c$26$1_0$25 ==.
                                    813 ;	main.c:26: TR0=0;
                                    814 ;	assignBit
      00255F C2 8C            [12]  815 	clr	_TR0
                           00001F   816 	C$main.c$27$1_0$25 ==.
                                    817 ;	main.c:27: TF0=0;
                                    818 ;	assignBit
      002561 C2 8D            [12]  819 	clr	_TF0
                           000021   820 	C$main.c$28$1_0$25 ==.
                                    821 ;	main.c:28: TH0=0x4B;
      002563 75 8C 4B         [24]  822 	mov	_TH0,#0x4b
                           000024   823 	C$main.c$29$1_0$25 ==.
                                    824 ;	main.c:29: TL0=0xFC;
      002566 75 8A FC         [24]  825 	mov	_TL0,#0xfc
                           000027   826 	C$main.c$30$1_0$25 ==.
                                    827 ;	main.c:30: P1_1=!P1_1;
      002569 B2 91            [12]  828 	cpl	_P1_1
                           000029   829 	C$main.c$31$1_0$25 ==.
                                    830 ;	main.c:31: TR0=1;
                                    831 ;	assignBit
      00256B D2 8C            [12]  832 	setb	_TR0
                           00002B   833 	C$main.c$32$1_0$25 ==.
                                    834 ;	main.c:32: EA=1;
                                    835 ;	assignBit
      00256D D2 AF            [12]  836 	setb	_EA
                           00002D   837 	C$main.c$33$1_0$25 ==.
                                    838 ;	main.c:33: count++;
      00256F 90 04 A1         [24]  839 	mov	dptr,#_count
      002572 E0               [24]  840 	movx	a,@dptr
      002573 F8               [12]  841 	mov	r0,a
      002574 A3               [24]  842 	inc	dptr
      002575 E0               [24]  843 	movx	a,@dptr
      002576 F9               [12]  844 	mov	r1,a
      002577 A3               [24]  845 	inc	dptr
      002578 E0               [24]  846 	movx	a,@dptr
      002579 FA               [12]  847 	mov	r2,a
      00257A A3               [24]  848 	inc	dptr
      00257B E0               [24]  849 	movx	a,@dptr
      00257C FB               [12]  850 	mov	r3,a
      00257D A3               [24]  851 	inc	dptr
      00257E E0               [24]  852 	movx	a,@dptr
      00257F FC               [12]  853 	mov	r4,a
      002580 A3               [24]  854 	inc	dptr
      002581 E0               [24]  855 	movx	a,@dptr
      002582 FD               [12]  856 	mov	r5,a
      002583 A3               [24]  857 	inc	dptr
      002584 E0               [24]  858 	movx	a,@dptr
      002585 FE               [12]  859 	mov	r6,a
      002586 A3               [24]  860 	inc	dptr
      002587 E0               [24]  861 	movx	a,@dptr
      002588 FF               [12]  862 	mov	r7,a
      002589 90 04 A1         [24]  863 	mov	dptr,#_count
      00258C 74 01            [12]  864 	mov	a,#0x01
      00258E 28               [12]  865 	add	a,r0
      00258F F0               [24]  866 	movx	@dptr,a
      002590 E4               [12]  867 	clr	a
      002591 39               [12]  868 	addc	a,r1
      002592 A3               [24]  869 	inc	dptr
      002593 F0               [24]  870 	movx	@dptr,a
      002594 E4               [12]  871 	clr	a
      002595 3A               [12]  872 	addc	a,r2
      002596 A3               [24]  873 	inc	dptr
      002597 F0               [24]  874 	movx	@dptr,a
      002598 E4               [12]  875 	clr	a
      002599 3B               [12]  876 	addc	a,r3
      00259A A3               [24]  877 	inc	dptr
      00259B F0               [24]  878 	movx	@dptr,a
      00259C E4               [12]  879 	clr	a
      00259D 3C               [12]  880 	addc	a,r4
      00259E A3               [24]  881 	inc	dptr
      00259F F0               [24]  882 	movx	@dptr,a
      0025A0 E4               [12]  883 	clr	a
      0025A1 3D               [12]  884 	addc	a,r5
      0025A2 A3               [24]  885 	inc	dptr
      0025A3 F0               [24]  886 	movx	@dptr,a
      0025A4 E4               [12]  887 	clr	a
      0025A5 3E               [12]  888 	addc	a,r6
      0025A6 A3               [24]  889 	inc	dptr
      0025A7 F0               [24]  890 	movx	@dptr,a
      0025A8 E4               [12]  891 	clr	a
      0025A9 3F               [12]  892 	addc	a,r7
      0025AA A3               [24]  893 	inc	dptr
      0025AB F0               [24]  894 	movx	@dptr,a
                           00006A   895 	C$main.c$34$1_0$25 ==.
                                    896 ;	main.c:34: if(count%2==0)
      0025AC 90 04 A1         [24]  897 	mov	dptr,#_count
      0025AF E0               [24]  898 	movx	a,@dptr
      0025B0 F8               [12]  899 	mov	r0,a
      0025B1 A3               [24]  900 	inc	dptr
      0025B2 E0               [24]  901 	movx	a,@dptr
      0025B3 A3               [24]  902 	inc	dptr
      0025B4 E0               [24]  903 	movx	a,@dptr
      0025B5 A3               [24]  904 	inc	dptr
      0025B6 E0               [24]  905 	movx	a,@dptr
      0025B7 A3               [24]  906 	inc	dptr
      0025B8 E0               [24]  907 	movx	a,@dptr
      0025B9 A3               [24]  908 	inc	dptr
      0025BA E0               [24]  909 	movx	a,@dptr
      0025BB A3               [24]  910 	inc	dptr
      0025BC E0               [24]  911 	movx	a,@dptr
      0025BD A3               [24]  912 	inc	dptr
      0025BE E0               [24]  913 	movx	a,@dptr
      0025BF E8               [12]  914 	mov	a,r0
      0025C0 20 E0 1B         [24]  915 	jb	acc.0,00102$
                           000081   916 	C$main.c$36$2_0$26 ==.
                                    917 ;	main.c:36: flag=1;
      0025C3 90 04 A9         [24]  918 	mov	dptr,#_flag
      0025C6 74 01            [12]  919 	mov	a,#0x01
      0025C8 F0               [24]  920 	movx	@dptr,a
                           000087   921 	C$main.c$37$2_0$26 ==.
                                    922 ;	main.c:37: count=0;
      0025C9 90 04 A1         [24]  923 	mov	dptr,#_count
      0025CC E4               [12]  924 	clr	a
      0025CD F0               [24]  925 	movx	@dptr,a
      0025CE A3               [24]  926 	inc	dptr
      0025CF F0               [24]  927 	movx	@dptr,a
      0025D0 A3               [24]  928 	inc	dptr
      0025D1 F0               [24]  929 	movx	@dptr,a
      0025D2 A3               [24]  930 	inc	dptr
      0025D3 F0               [24]  931 	movx	@dptr,a
      0025D4 A3               [24]  932 	inc	dptr
      0025D5 F0               [24]  933 	movx	@dptr,a
      0025D6 A3               [24]  934 	inc	dptr
      0025D7 F0               [24]  935 	movx	@dptr,a
      0025D8 A3               [24]  936 	inc	dptr
      0025D9 F0               [24]  937 	movx	@dptr,a
      0025DA A3               [24]  938 	inc	dptr
      0025DB F0               [24]  939 	movx	@dptr,a
      0025DC 80 05            [24]  940 	sjmp	00104$
      0025DE                        941 00102$:
                           00009C   942 	C$main.c$41$2_0$27 ==.
                                    943 ;	main.c:41: flag=0;
      0025DE 90 04 A9         [24]  944 	mov	dptr,#_flag
      0025E1 E4               [12]  945 	clr	a
      0025E2 F0               [24]  946 	movx	@dptr,a
      0025E3                        947 00104$:
                           0000A1   948 	C$main.c$43$1_0$25 ==.
                                    949 ;	main.c:43: }
      0025E3 D0 D0            [24]  950 	pop	psw
      0025E5 D0 00            [24]  951 	pop	ar0
      0025E7 D0 01            [24]  952 	pop	ar1
      0025E9 D0 02            [24]  953 	pop	ar2
      0025EB D0 03            [24]  954 	pop	ar3
      0025ED D0 04            [24]  955 	pop	ar4
      0025EF D0 05            [24]  956 	pop	ar5
      0025F1 D0 06            [24]  957 	pop	ar6
      0025F3 D0 07            [24]  958 	pop	ar7
      0025F5 D0 83            [24]  959 	pop	dph
      0025F7 D0 82            [24]  960 	pop	dpl
      0025F9 D0 E0            [24]  961 	pop	acc
                           0000B9   962 	C$main.c$43$1_0$25 ==.
                           0000B9   963 	XG$timer0_ISR$0$0 ==.
      0025FB 32               [24]  964 	reti
                                    965 ;	eliminated unneeded push/pop b
                                    966 ;------------------------------------------------------------
                                    967 ;Allocation info for local variables in function 'time_show'
                                    968 ;------------------------------------------------------------
                           0000BA   969 	G$time_show$0$0 ==.
                           0000BA   970 	C$main.c$49$1_0$28 ==.
                                    971 ;	main.c:49: void time_show()
                                    972 ;	-----------------------------------------
                                    973 ;	 function time_show
                                    974 ;	-----------------------------------------
      0025FC                        975 _time_show:
                           0000BA   976 	C$main.c$51$1_0$28 ==.
                                    977 ;	main.c:51: if(flag==1)
      0025FC 90 04 A9         [24]  978 	mov	dptr,#_flag
      0025FF E0               [24]  979 	movx	a,@dptr
      002600 FF               [12]  980 	mov	r7,a
      002601 BF 01 02         [24]  981 	cjne	r7,#0x01,00121$
      002604 80 03            [24]  982 	sjmp	00122$
      002606                        983 00121$:
      002606 02 26 7C         [24]  984 	ljmp	00107$
      002609                        985 00122$:
                           0000C7   986 	C$main.c$53$2_0$29 ==.
                                    987 ;	main.c:53: flag=0;
      002609 90 04 A9         [24]  988 	mov	dptr,#_flag
      00260C E4               [12]  989 	clr	a
      00260D F0               [24]  990 	movx	@dptr,a
                           0000CC   991 	C$main.c$54$2_0$29 ==.
                                    992 ;	main.c:54: milli++;
      00260E 90 04 AA         [24]  993 	mov	dptr,#_milli
      002611 E0               [24]  994 	movx	a,@dptr
      002612 04               [12]  995 	inc	a
      002613 F0               [24]  996 	movx	@dptr,a
                           0000D2   997 	C$main.c$55$2_0$29 ==.
                                    998 ;	main.c:55: if(milli==10)
      002614 E0               [24]  999 	movx	a,@dptr
      002615 FF               [12] 1000 	mov	r7,a
      002616 BF 0A 0B         [24] 1001 	cjne	r7,#0x0a,00102$
                           0000D7  1002 	C$main.c$57$3_0$30 ==.
                                   1003 ;	main.c:57: seconds++;
      002619 90 04 AB         [24] 1004 	mov	dptr,#_seconds
      00261C E0               [24] 1005 	movx	a,@dptr
      00261D 04               [12] 1006 	inc	a
      00261E F0               [24] 1007 	movx	@dptr,a
                           0000DD  1008 	C$main.c$58$3_0$30 ==.
                                   1009 ;	main.c:58: milli=0;
      00261F 90 04 AA         [24] 1010 	mov	dptr,#_milli
      002622 E4               [12] 1011 	clr	a
      002623 F0               [24] 1012 	movx	@dptr,a
      002624                       1013 00102$:
                           0000E2  1014 	C$main.c$60$2_0$29 ==.
                                   1015 ;	main.c:60: if(seconds==60)         //minute increments after every 60 seconds
      002624 90 04 AB         [24] 1016 	mov	dptr,#_seconds
      002627 E0               [24] 1017 	movx	a,@dptr
      002628 FF               [12] 1018 	mov	r7,a
      002629 BF 3C 0B         [24] 1019 	cjne	r7,#0x3c,00104$
                           0000EA  1020 	C$main.c$62$3_0$31 ==.
                                   1021 ;	main.c:62: minutes++;
      00262C 90 04 AC         [24] 1022 	mov	dptr,#_minutes
      00262F E0               [24] 1023 	movx	a,@dptr
      002630 04               [12] 1024 	inc	a
      002631 F0               [24] 1025 	movx	@dptr,a
                           0000F0  1026 	C$main.c$63$3_0$31 ==.
                                   1027 ;	main.c:63: seconds=0;
      002632 90 04 AB         [24] 1028 	mov	dptr,#_seconds
      002635 E4               [12] 1029 	clr	a
      002636 F0               [24] 1030 	movx	@dptr,a
      002637                       1031 00104$:
                           0000F5  1032 	C$main.c$65$2_0$29 ==.
                                   1033 ;	main.c:65: hours=minutes/60;
      002637 90 04 AC         [24] 1034 	mov	dptr,#_minutes
      00263A E0               [24] 1035 	movx	a,@dptr
      00263B FF               [12] 1036 	mov	r7,a
      00263C 7E 00            [12] 1037 	mov	r6,#0x00
      00263E 90 04 59         [24] 1038 	mov	dptr,#__divsint_PARM_2
      002641 74 3C            [12] 1039 	mov	a,#0x3c
      002643 F0               [24] 1040 	movx	@dptr,a
      002644 E4               [12] 1041 	clr	a
      002645 A3               [24] 1042 	inc	dptr
      002646 F0               [24] 1043 	movx	@dptr,a
      002647 8F 82            [24] 1044 	mov	dpl,r7
      002649 8E 83            [24] 1045 	mov	dph,r6
      00264B 12 2E BC         [24] 1046 	lcall	__divsint
      00264E AE 82            [24] 1047 	mov	r6,dpl
      002650 90 04 14         [24] 1048 	mov	dptr,#_hours
      002653 EE               [12] 1049 	mov	a,r6
      002654 F0               [24] 1050 	movx	@dptr,a
                           000113  1051 	C$main.c$66$2_0$29 ==.
                                   1052 ;	main.c:66: lcd_gotoxy(4,8);
      002655 90 04 10         [24] 1053 	mov	dptr,#_lcd_gotoxy_PARM_2
      002658 74 08            [12] 1054 	mov	a,#0x08
      00265A F0               [24] 1055 	movx	@dptr,a
      00265B 75 82 04         [24] 1056 	mov	dpl,#0x04
      00265E 12 24 7A         [24] 1057 	lcall	_lcd_gotoxy
                           00011F  1058 	C$main.c$67$2_0$29 ==.
                                   1059 ;	main.c:67: inttostr(minutes);      //converting to string and display
      002661 90 04 AC         [24] 1060 	mov	dptr,#_minutes
      002664 E0               [24] 1061 	movx	a,@dptr
      002665 F5 82            [12] 1062 	mov	dpl,a
      002667 12 2B E1         [24] 1063 	lcall	_inttostr
                           000128  1064 	C$main.c$68$2_0$29 ==.
                                   1065 ;	main.c:68: inttostr(seconds);
      00266A 90 04 AB         [24] 1066 	mov	dptr,#_seconds
      00266D E0               [24] 1067 	movx	a,@dptr
      00266E F5 82            [12] 1068 	mov	dpl,a
      002670 12 2B E1         [24] 1069 	lcall	_inttostr
                           000131  1070 	C$main.c$69$2_0$29 ==.
                                   1071 ;	main.c:69: inttostr(milli);
      002673 90 04 AA         [24] 1072 	mov	dptr,#_milli
      002676 E0               [24] 1073 	movx	a,@dptr
      002677 F5 82            [12] 1074 	mov	dpl,a
      002679 12 2B E1         [24] 1075 	lcall	_inttostr
      00267C                       1076 00107$:
                           00013A  1077 	C$main.c$71$1_0$28 ==.
                                   1078 ;	main.c:71: }
                           00013A  1079 	C$main.c$71$1_0$28 ==.
                           00013A  1080 	XG$time_show$0$0 ==.
      00267C 22               [24] 1081 	ret
                                   1082 ;------------------------------------------------------------
                                   1083 ;Allocation info for local variables in function 'help'
                                   1084 ;------------------------------------------------------------
                           00013B  1085 	G$help$0$0 ==.
                           00013B  1086 	C$main.c$77$1_0$32 ==.
                                   1087 ;	main.c:77: void help()
                                   1088 ;	-----------------------------------------
                                   1089 ;	 function help
                                   1090 ;	-----------------------------------------
      00267D                       1091 _help:
                           00013B  1092 	C$main.c$79$1_0$32 ==.
                                   1093 ;	main.c:79: printf_tiny("\n\r Welcome to the World Of working(maybe) LCD.");
      00267D 74 74            [12] 1094 	mov	a,#___str_0
      00267F C0 E0            [24] 1095 	push	acc
      002681 74 3A            [12] 1096 	mov	a,#(___str_0 >> 8)
      002683 C0 E0            [24] 1097 	push	acc
      002685 12 2C 9F         [24] 1098 	lcall	_printf_tiny
      002688 15 81            [12] 1099 	dec	sp
      00268A 15 81            [12] 1100 	dec	sp
                           00014A  1101 	C$main.c$80$1_0$32 ==.
                                   1102 ;	main.c:80: printf_tiny("\n\r There are some instructions to read before to proceed.");
      00268C 74 A3            [12] 1103 	mov	a,#___str_1
      00268E C0 E0            [24] 1104 	push	acc
      002690 74 3A            [12] 1105 	mov	a,#(___str_1 >> 8)
      002692 C0 E0            [24] 1106 	push	acc
      002694 12 2C 9F         [24] 1107 	lcall	_printf_tiny
      002697 15 81            [12] 1108 	dec	sp
      002699 15 81            [12] 1109 	dec	sp
                           000159  1110 	C$main.c$81$1_0$32 ==.
                                   1111 ;	main.c:81: printf_tiny("\n\r This lab was aimed to allow the students to learn the implementation of the LCD.");
      00269B 74 DD            [12] 1112 	mov	a,#___str_2
      00269D C0 E0            [24] 1113 	push	acc
      00269F 74 3A            [12] 1114 	mov	a,#(___str_2 >> 8)
      0026A1 C0 E0            [24] 1115 	push	acc
      0026A3 12 2C 9F         [24] 1116 	lcall	_printf_tiny
      0026A6 15 81            [12] 1117 	dec	sp
      0026A8 15 81            [12] 1118 	dec	sp
                           000168  1119 	C$main.c$82$1_0$32 ==.
                                   1120 ;	main.c:82: printf_tiny("\n\r The LCD has 4 rows and 16 columns.");
      0026AA 74 31            [12] 1121 	mov	a,#___str_3
      0026AC C0 E0            [24] 1122 	push	acc
      0026AE 74 3B            [12] 1123 	mov	a,#(___str_3 >> 8)
      0026B0 C0 E0            [24] 1124 	push	acc
      0026B2 12 2C 9F         [24] 1125 	lcall	_printf_tiny
      0026B5 15 81            [12] 1126 	dec	sp
      0026B7 15 81            [12] 1127 	dec	sp
                           000177  1128 	C$main.c$83$1_0$32 ==.
                                   1129 ;	main.c:83: printf_tiny("\n\r Trying to go beyond that will give you an error.");
      0026B9 74 57            [12] 1130 	mov	a,#___str_4
      0026BB C0 E0            [24] 1131 	push	acc
      0026BD 74 3B            [12] 1132 	mov	a,#(___str_4 >> 8)
      0026BF C0 E0            [24] 1133 	push	acc
      0026C1 12 2C 9F         [24] 1134 	lcall	_printf_tiny
      0026C4 15 81            [12] 1135 	dec	sp
      0026C6 15 81            [12] 1136 	dec	sp
                           000186  1137 	C$main.c$84$1_0$32 ==.
                                   1138 ;	main.c:84: printf_tiny("\n\r if you want to print a character, we have an option for you.");
      0026C8 74 8B            [12] 1139 	mov	a,#___str_5
      0026CA C0 E0            [24] 1140 	push	acc
      0026CC 74 3B            [12] 1141 	mov	a,#(___str_5 >> 8)
      0026CE C0 E0            [24] 1142 	push	acc
      0026D0 12 2C 9F         [24] 1143 	lcall	_printf_tiny
      0026D3 15 81            [12] 1144 	dec	sp
      0026D5 15 81            [12] 1145 	dec	sp
                           000195  1146 	C$main.c$85$1_0$32 ==.
                                   1147 ;	main.c:85: printf_tiny("\n\r As soon as you enter the program, the timer will start.");
      0026D7 74 CB            [12] 1148 	mov	a,#___str_6
      0026D9 C0 E0            [24] 1149 	push	acc
      0026DB 74 3B            [12] 1150 	mov	a,#(___str_6 >> 8)
      0026DD C0 E0            [24] 1151 	push	acc
      0026DF 12 2C 9F         [24] 1152 	lcall	_printf_tiny
      0026E2 15 81            [12] 1153 	dec	sp
      0026E4 15 81            [12] 1154 	dec	sp
                           0001A4  1155 	C$main.c$86$1_0$32 ==.
                                   1156 ;	main.c:86: printf_tiny("\n\r If you are here for the first time, The timer is stopped for now.");
      0026E6 74 06            [12] 1157 	mov	a,#___str_7
      0026E8 C0 E0            [24] 1158 	push	acc
      0026EA 74 3C            [12] 1159 	mov	a,#(___str_7 >> 8)
      0026EC C0 E0            [24] 1160 	push	acc
      0026EE 12 2C 9F         [24] 1161 	lcall	_printf_tiny
      0026F1 15 81            [12] 1162 	dec	sp
      0026F3 15 81            [12] 1163 	dec	sp
                           0001B3  1164 	C$main.c$87$1_0$32 ==.
                                   1165 ;	main.c:87: printf_tiny("\n\r The timer is running continuously, if you want to print the character at timer's place, its impossible.");
      0026F5 74 4B            [12] 1166 	mov	a,#___str_8
      0026F7 C0 E0            [24] 1167 	push	acc
      0026F9 74 3C            [12] 1168 	mov	a,#(___str_8 >> 8)
      0026FB C0 E0            [24] 1169 	push	acc
      0026FD 12 2C 9F         [24] 1170 	lcall	_printf_tiny
      002700 15 81            [12] 1171 	dec	sp
      002702 15 81            [12] 1172 	dec	sp
                           0001C2  1173 	C$main.c$88$1_0$32 ==.
                                   1174 ;	main.c:88: printf_tiny("\n\r Press Enter to Continue");
      002704 74 B6            [12] 1175 	mov	a,#___str_9
      002706 C0 E0            [24] 1176 	push	acc
      002708 74 3C            [12] 1177 	mov	a,#(___str_9 >> 8)
      00270A C0 E0            [24] 1178 	push	acc
      00270C 12 2C 9F         [24] 1179 	lcall	_printf_tiny
      00270F 15 81            [12] 1180 	dec	sp
      002711 15 81            [12] 1181 	dec	sp
                           0001D1  1182 	C$main.c$89$1_0$32 ==.
                                   1183 ;	main.c:89: getchar();
      002713 12 2C 8C         [24] 1184 	lcall	_getchar
                           0001D4  1185 	C$main.c$90$1_0$32 ==.
                                   1186 ;	main.c:90: }
                           0001D4  1187 	C$main.c$90$1_0$32 ==.
                           0001D4  1188 	XG$help$0$0 ==.
      002716 22               [24] 1189 	ret
                                   1190 ;------------------------------------------------------------
                                   1191 ;Allocation info for local variables in function 'main'
                                   1192 ;------------------------------------------------------------
                                   1193 ;a                         Allocated with name '_main_a_65536_34'
                                   1194 ;b                         Allocated with name '_main_b_65536_34'
                                   1195 ;ch                        Allocated with name '_main_ch_65536_34'
                                   1196 ;choice                    Allocated with name '_main_choice_65537_35'
                                   1197 ;row_value                 Allocated with name '_main_row_value_65537_35'
                                   1198 ;column1                   Allocated with name '_main_column1_65537_35'
                                   1199 ;column2                   Allocated with name '_main_column2_65537_35'
                                   1200 ;column_value              Allocated with name '_main_column_value_65537_35'
                                   1201 ;choice1                   Allocated with name '_main_choice1_196610_39'
                                   1202 ;------------------------------------------------------------
                           0001D5  1203 	G$main$0$0 ==.
                           0001D5  1204 	C$main.c$91$1_0$34 ==.
                                   1205 ;	main.c:91: void main(void)
                                   1206 ;	-----------------------------------------
                                   1207 ;	 function main
                                   1208 ;	-----------------------------------------
      002717                       1209 _main:
                           0001D5  1210 	C$main.c$92$2_0$34 ==.
                                   1211 ;	main.c:92: {   char a[]={"Ye Bik Gayi Hai gormint"};
      002717 90 04 15         [24] 1212 	mov	dptr,#_main_a_65536_34
      00271A 74 59            [12] 1213 	mov	a,#0x59
      00271C F0               [24] 1214 	movx	@dptr,a
      00271D 90 04 16         [24] 1215 	mov	dptr,#(_main_a_65536_34 + 0x0001)
      002720 74 65            [12] 1216 	mov	a,#0x65
      002722 F0               [24] 1217 	movx	@dptr,a
      002723 90 04 17         [24] 1218 	mov	dptr,#(_main_a_65536_34 + 0x0002)
      002726 74 20            [12] 1219 	mov	a,#0x20
      002728 F0               [24] 1220 	movx	@dptr,a
      002729 90 04 18         [24] 1221 	mov	dptr,#(_main_a_65536_34 + 0x0003)
      00272C 74 42            [12] 1222 	mov	a,#0x42
      00272E F0               [24] 1223 	movx	@dptr,a
      00272F 90 04 19         [24] 1224 	mov	dptr,#(_main_a_65536_34 + 0x0004)
      002732 74 69            [12] 1225 	mov	a,#0x69
      002734 F0               [24] 1226 	movx	@dptr,a
      002735 90 04 1A         [24] 1227 	mov	dptr,#(_main_a_65536_34 + 0x0005)
      002738 74 6B            [12] 1228 	mov	a,#0x6b
      00273A F0               [24] 1229 	movx	@dptr,a
      00273B 90 04 1B         [24] 1230 	mov	dptr,#(_main_a_65536_34 + 0x0006)
      00273E 74 20            [12] 1231 	mov	a,#0x20
      002740 F0               [24] 1232 	movx	@dptr,a
      002741 90 04 1C         [24] 1233 	mov	dptr,#(_main_a_65536_34 + 0x0007)
      002744 74 47            [12] 1234 	mov	a,#0x47
      002746 F0               [24] 1235 	movx	@dptr,a
      002747 90 04 1D         [24] 1236 	mov	dptr,#(_main_a_65536_34 + 0x0008)
      00274A 74 61            [12] 1237 	mov	a,#0x61
      00274C F0               [24] 1238 	movx	@dptr,a
      00274D 90 04 1E         [24] 1239 	mov	dptr,#(_main_a_65536_34 + 0x0009)
      002750 74 79            [12] 1240 	mov	a,#0x79
      002752 F0               [24] 1241 	movx	@dptr,a
      002753 90 04 1F         [24] 1242 	mov	dptr,#(_main_a_65536_34 + 0x000a)
      002756 74 69            [12] 1243 	mov	a,#0x69
      002758 F0               [24] 1244 	movx	@dptr,a
      002759 90 04 20         [24] 1245 	mov	dptr,#(_main_a_65536_34 + 0x000b)
      00275C 74 20            [12] 1246 	mov	a,#0x20
      00275E F0               [24] 1247 	movx	@dptr,a
      00275F 90 04 21         [24] 1248 	mov	dptr,#(_main_a_65536_34 + 0x000c)
      002762 74 48            [12] 1249 	mov	a,#0x48
      002764 F0               [24] 1250 	movx	@dptr,a
      002765 90 04 22         [24] 1251 	mov	dptr,#(_main_a_65536_34 + 0x000d)
      002768 74 61            [12] 1252 	mov	a,#0x61
      00276A F0               [24] 1253 	movx	@dptr,a
      00276B 90 04 23         [24] 1254 	mov	dptr,#(_main_a_65536_34 + 0x000e)
      00276E 74 69            [12] 1255 	mov	a,#0x69
      002770 F0               [24] 1256 	movx	@dptr,a
      002771 90 04 24         [24] 1257 	mov	dptr,#(_main_a_65536_34 + 0x000f)
      002774 74 20            [12] 1258 	mov	a,#0x20
      002776 F0               [24] 1259 	movx	@dptr,a
      002777 90 04 25         [24] 1260 	mov	dptr,#(_main_a_65536_34 + 0x0010)
      00277A 74 67            [12] 1261 	mov	a,#0x67
      00277C F0               [24] 1262 	movx	@dptr,a
      00277D 90 04 26         [24] 1263 	mov	dptr,#(_main_a_65536_34 + 0x0011)
      002780 74 6F            [12] 1264 	mov	a,#0x6f
      002782 F0               [24] 1265 	movx	@dptr,a
      002783 90 04 27         [24] 1266 	mov	dptr,#(_main_a_65536_34 + 0x0012)
      002786 74 72            [12] 1267 	mov	a,#0x72
      002788 F0               [24] 1268 	movx	@dptr,a
      002789 90 04 28         [24] 1269 	mov	dptr,#(_main_a_65536_34 + 0x0013)
      00278C 74 6D            [12] 1270 	mov	a,#0x6d
      00278E F0               [24] 1271 	movx	@dptr,a
      00278F 90 04 29         [24] 1272 	mov	dptr,#(_main_a_65536_34 + 0x0014)
      002792 74 69            [12] 1273 	mov	a,#0x69
      002794 F0               [24] 1274 	movx	@dptr,a
      002795 90 04 2A         [24] 1275 	mov	dptr,#(_main_a_65536_34 + 0x0015)
      002798 74 6E            [12] 1276 	mov	a,#0x6e
      00279A F0               [24] 1277 	movx	@dptr,a
      00279B 90 04 2B         [24] 1278 	mov	dptr,#(_main_a_65536_34 + 0x0016)
      00279E 74 74            [12] 1279 	mov	a,#0x74
      0027A0 F0               [24] 1280 	movx	@dptr,a
      0027A1 90 04 2C         [24] 1281 	mov	dptr,#(_main_a_65536_34 + 0x0017)
      0027A4 E4               [12] 1282 	clr	a
      0027A5 F0               [24] 1283 	movx	@dptr,a
                           000264  1284 	C$main.c$93$2_0$34 ==.
                                   1285 ;	main.c:93: char b[]={"My Name is Nitik Gupta"};
      0027A6 90 04 2D         [24] 1286 	mov	dptr,#_main_b_65536_34
      0027A9 74 4D            [12] 1287 	mov	a,#0x4d
      0027AB F0               [24] 1288 	movx	@dptr,a
      0027AC 90 04 2E         [24] 1289 	mov	dptr,#(_main_b_65536_34 + 0x0001)
      0027AF 74 79            [12] 1290 	mov	a,#0x79
      0027B1 F0               [24] 1291 	movx	@dptr,a
      0027B2 90 04 2F         [24] 1292 	mov	dptr,#(_main_b_65536_34 + 0x0002)
      0027B5 74 20            [12] 1293 	mov	a,#0x20
      0027B7 F0               [24] 1294 	movx	@dptr,a
      0027B8 90 04 30         [24] 1295 	mov	dptr,#(_main_b_65536_34 + 0x0003)
      0027BB 74 4E            [12] 1296 	mov	a,#0x4e
      0027BD F0               [24] 1297 	movx	@dptr,a
      0027BE 90 04 31         [24] 1298 	mov	dptr,#(_main_b_65536_34 + 0x0004)
      0027C1 74 61            [12] 1299 	mov	a,#0x61
      0027C3 F0               [24] 1300 	movx	@dptr,a
      0027C4 90 04 32         [24] 1301 	mov	dptr,#(_main_b_65536_34 + 0x0005)
      0027C7 74 6D            [12] 1302 	mov	a,#0x6d
      0027C9 F0               [24] 1303 	movx	@dptr,a
      0027CA 90 04 33         [24] 1304 	mov	dptr,#(_main_b_65536_34 + 0x0006)
      0027CD 74 65            [12] 1305 	mov	a,#0x65
      0027CF F0               [24] 1306 	movx	@dptr,a
      0027D0 90 04 34         [24] 1307 	mov	dptr,#(_main_b_65536_34 + 0x0007)
      0027D3 74 20            [12] 1308 	mov	a,#0x20
      0027D5 F0               [24] 1309 	movx	@dptr,a
      0027D6 90 04 35         [24] 1310 	mov	dptr,#(_main_b_65536_34 + 0x0008)
      0027D9 74 69            [12] 1311 	mov	a,#0x69
      0027DB F0               [24] 1312 	movx	@dptr,a
      0027DC 90 04 36         [24] 1313 	mov	dptr,#(_main_b_65536_34 + 0x0009)
      0027DF 74 73            [12] 1314 	mov	a,#0x73
      0027E1 F0               [24] 1315 	movx	@dptr,a
      0027E2 90 04 37         [24] 1316 	mov	dptr,#(_main_b_65536_34 + 0x000a)
      0027E5 74 20            [12] 1317 	mov	a,#0x20
      0027E7 F0               [24] 1318 	movx	@dptr,a
      0027E8 90 04 38         [24] 1319 	mov	dptr,#(_main_b_65536_34 + 0x000b)
      0027EB 74 4E            [12] 1320 	mov	a,#0x4e
      0027ED F0               [24] 1321 	movx	@dptr,a
      0027EE 90 04 39         [24] 1322 	mov	dptr,#(_main_b_65536_34 + 0x000c)
      0027F1 74 69            [12] 1323 	mov	a,#0x69
      0027F3 F0               [24] 1324 	movx	@dptr,a
      0027F4 90 04 3A         [24] 1325 	mov	dptr,#(_main_b_65536_34 + 0x000d)
      0027F7 74 74            [12] 1326 	mov	a,#0x74
      0027F9 F0               [24] 1327 	movx	@dptr,a
      0027FA 90 04 3B         [24] 1328 	mov	dptr,#(_main_b_65536_34 + 0x000e)
      0027FD 74 69            [12] 1329 	mov	a,#0x69
      0027FF F0               [24] 1330 	movx	@dptr,a
      002800 90 04 3C         [24] 1331 	mov	dptr,#(_main_b_65536_34 + 0x000f)
      002803 74 6B            [12] 1332 	mov	a,#0x6b
      002805 F0               [24] 1333 	movx	@dptr,a
      002806 90 04 3D         [24] 1334 	mov	dptr,#(_main_b_65536_34 + 0x0010)
      002809 74 20            [12] 1335 	mov	a,#0x20
      00280B F0               [24] 1336 	movx	@dptr,a
      00280C 90 04 3E         [24] 1337 	mov	dptr,#(_main_b_65536_34 + 0x0011)
      00280F 74 47            [12] 1338 	mov	a,#0x47
      002811 F0               [24] 1339 	movx	@dptr,a
      002812 90 04 3F         [24] 1340 	mov	dptr,#(_main_b_65536_34 + 0x0012)
      002815 74 75            [12] 1341 	mov	a,#0x75
      002817 F0               [24] 1342 	movx	@dptr,a
      002818 90 04 40         [24] 1343 	mov	dptr,#(_main_b_65536_34 + 0x0013)
      00281B 74 70            [12] 1344 	mov	a,#0x70
      00281D F0               [24] 1345 	movx	@dptr,a
      00281E 90 04 41         [24] 1346 	mov	dptr,#(_main_b_65536_34 + 0x0014)
      002821 74 74            [12] 1347 	mov	a,#0x74
      002823 F0               [24] 1348 	movx	@dptr,a
      002824 90 04 42         [24] 1349 	mov	dptr,#(_main_b_65536_34 + 0x0015)
      002827 74 61            [12] 1350 	mov	a,#0x61
      002829 F0               [24] 1351 	movx	@dptr,a
      00282A 90 04 43         [24] 1352 	mov	dptr,#(_main_b_65536_34 + 0x0016)
      00282D E4               [12] 1353 	clr	a
      00282E F0               [24] 1354 	movx	@dptr,a
                           0002ED  1355 	C$main.c$95$1_0$34 ==.
                                   1356 ;	main.c:95: milli=0,seconds=0,minutes=0;
      00282F 90 04 AA         [24] 1357 	mov	dptr,#_milli
      002832 F0               [24] 1358 	movx	@dptr,a
      002833 90 04 AB         [24] 1359 	mov	dptr,#_seconds
      002836 F0               [24] 1360 	movx	@dptr,a
      002837 90 04 AC         [24] 1361 	mov	dptr,#_minutes
      00283A F0               [24] 1362 	movx	@dptr,a
                           0002F9  1363 	C$main.c$96$2_0$35 ==.
                                   1364 ;	main.c:96: volatile uint8_t choice=1,row_value,column1,column2,column_value;
      00283B 90 04 44         [24] 1365 	mov	dptr,#_main_choice_65537_35
      00283E 04               [12] 1366 	inc	a
      00283F F0               [24] 1367 	movx	@dptr,a
                           0002FE  1368 	C$main.c$97$1_1$35 ==.
                                   1369 ;	main.c:97: help();
      002840 12 26 7D         [24] 1370 	lcall	_help
                           000301  1371 	C$main.c$98$1_1$35 ==.
                                   1372 ;	main.c:98: timer_init();
      002843 12 2B C3         [24] 1373 	lcall	_timer_init
                           000304  1374 	C$main.c$99$1_1$35 ==.
                                   1375 ;	main.c:99: LCD_Init();
      002846 12 23 40         [24] 1376 	lcall	_LCD_Init
                           000307  1377 	C$main.c$100$1_1$35 ==.
                                   1378 ;	main.c:100: time_show();
      002849 12 25 FC         [24] 1379 	lcall	_time_show
                           00030A  1380 	C$main.c$101$4_2$40 ==.
                                   1381 ;	main.c:101: do
      00284C                       1382 00140$:
                           00030A  1383 	C$main.c$102$2_1$36 ==.
                                   1384 ;	main.c:102: {   if(choice!=0)                                                           //Menu for the program
      00284C 90 04 44         [24] 1385 	mov	dptr,#_main_choice_65537_35
      00284F E0               [24] 1386 	movx	a,@dptr
      002850 70 03            [24] 1387 	jnz	00202$
      002852 02 29 09         [24] 1388 	ljmp	00102$
      002855                       1389 00202$:
                           000313  1390 	C$main.c$103$3_1$37 ==.
                                   1391 ;	main.c:103: {   printf_tiny("\n\r Your Options Are:");
      002855 74 D1            [12] 1392 	mov	a,#___str_12
      002857 C0 E0            [24] 1393 	push	acc
      002859 74 3C            [12] 1394 	mov	a,#(___str_12 >> 8)
      00285B C0 E0            [24] 1395 	push	acc
      00285D 12 2C 9F         [24] 1396 	lcall	_printf_tiny
      002860 15 81            [12] 1397 	dec	sp
      002862 15 81            [12] 1398 	dec	sp
                           000322  1399 	C$main.c$104$3_1$37 ==.
                                   1400 ;	main.c:104: printf_tiny("\n\r 1. Print the character at the starting.");
      002864 74 E6            [12] 1401 	mov	a,#___str_13
      002866 C0 E0            [24] 1402 	push	acc
      002868 74 3C            [12] 1403 	mov	a,#(___str_13 >> 8)
      00286A C0 E0            [24] 1404 	push	acc
      00286C 12 2C 9F         [24] 1405 	lcall	_printf_tiny
      00286F 15 81            [12] 1406 	dec	sp
      002871 15 81            [12] 1407 	dec	sp
                           000331  1408 	C$main.c$105$3_1$37 ==.
                                   1409 ;	main.c:105: printf_tiny("\n\r 2. Print the character at your place of choosing.");
      002873 74 11            [12] 1410 	mov	a,#___str_14
      002875 C0 E0            [24] 1411 	push	acc
      002877 74 3D            [12] 1412 	mov	a,#(___str_14 >> 8)
      002879 C0 E0            [24] 1413 	push	acc
      00287B 12 2C 9F         [24] 1414 	lcall	_printf_tiny
      00287E 15 81            [12] 1415 	dec	sp
      002880 15 81            [12] 1416 	dec	sp
                           000340  1417 	C$main.c$106$3_1$37 ==.
                                   1418 ;	main.c:106: printf_tiny("\n\r 3. Reset The clock.");
      002882 74 46            [12] 1419 	mov	a,#___str_15
      002884 C0 E0            [24] 1420 	push	acc
      002886 74 3D            [12] 1421 	mov	a,#(___str_15 >> 8)
      002888 C0 E0            [24] 1422 	push	acc
      00288A 12 2C 9F         [24] 1423 	lcall	_printf_tiny
      00288D 15 81            [12] 1424 	dec	sp
      00288F 15 81            [12] 1425 	dec	sp
                           00034F  1426 	C$main.c$107$3_1$37 ==.
                                   1427 ;	main.c:107: printf_tiny("\n\r 4. Stop The clock.");
      002891 74 5D            [12] 1428 	mov	a,#___str_16
      002893 C0 E0            [24] 1429 	push	acc
      002895 74 3D            [12] 1430 	mov	a,#(___str_16 >> 8)
      002897 C0 E0            [24] 1431 	push	acc
      002899 12 2C 9F         [24] 1432 	lcall	_printf_tiny
      00289C 15 81            [12] 1433 	dec	sp
      00289E 15 81            [12] 1434 	dec	sp
                           00035E  1435 	C$main.c$108$3_1$37 ==.
                                   1436 ;	main.c:108: printf_tiny("\n\r 5. Restart The clock.");
      0028A0 74 73            [12] 1437 	mov	a,#___str_17
      0028A2 C0 E0            [24] 1438 	push	acc
      0028A4 74 3D            [12] 1439 	mov	a,#(___str_17 >> 8)
      0028A6 C0 E0            [24] 1440 	push	acc
      0028A8 12 2C 9F         [24] 1441 	lcall	_printf_tiny
      0028AB 15 81            [12] 1442 	dec	sp
      0028AD 15 81            [12] 1443 	dec	sp
                           00036D  1444 	C$main.c$109$3_1$37 ==.
                                   1445 ;	main.c:109: printf_tiny("\n\r 6. Clear the Screen.");
      0028AF 74 8C            [12] 1446 	mov	a,#___str_18
      0028B1 C0 E0            [24] 1447 	push	acc
      0028B3 74 3D            [12] 1448 	mov	a,#(___str_18 >> 8)
      0028B5 C0 E0            [24] 1449 	push	acc
      0028B7 12 2C 9F         [24] 1450 	lcall	_printf_tiny
      0028BA 15 81            [12] 1451 	dec	sp
      0028BC 15 81            [12] 1452 	dec	sp
                           00037C  1453 	C$main.c$110$3_1$37 ==.
                                   1454 ;	main.c:110: printf_tiny("\n\r 7. DDRAM Dump");
      0028BE 74 A4            [12] 1455 	mov	a,#___str_19
      0028C0 C0 E0            [24] 1456 	push	acc
      0028C2 74 3D            [12] 1457 	mov	a,#(___str_19 >> 8)
      0028C4 C0 E0            [24] 1458 	push	acc
      0028C6 12 2C 9F         [24] 1459 	lcall	_printf_tiny
      0028C9 15 81            [12] 1460 	dec	sp
      0028CB 15 81            [12] 1461 	dec	sp
                           00038B  1462 	C$main.c$111$3_1$37 ==.
                                   1463 ;	main.c:111: printf_tiny("\n\r 8. CG7RAM Dump");
      0028CD 74 B5            [12] 1464 	mov	a,#___str_20
      0028CF C0 E0            [24] 1465 	push	acc
      0028D1 74 3D            [12] 1466 	mov	a,#(___str_20 >> 8)
      0028D3 C0 E0            [24] 1467 	push	acc
      0028D5 12 2C 9F         [24] 1468 	lcall	_printf_tiny
      0028D8 15 81            [12] 1469 	dec	sp
      0028DA 15 81            [12] 1470 	dec	sp
                           00039A  1471 	C$main.c$112$3_1$37 ==.
                                   1472 ;	main.c:112: printf_tiny("\n\r 9. Help Menu");
      0028DC 74 C7            [12] 1473 	mov	a,#___str_21
      0028DE C0 E0            [24] 1474 	push	acc
      0028E0 74 3D            [12] 1475 	mov	a,#(___str_21 >> 8)
      0028E2 C0 E0            [24] 1476 	push	acc
      0028E4 12 2C 9F         [24] 1477 	lcall	_printf_tiny
      0028E7 15 81            [12] 1478 	dec	sp
      0028E9 15 81            [12] 1479 	dec	sp
                           0003A9  1480 	C$main.c$113$3_1$37 ==.
                                   1481 ;	main.c:113: printf_tiny("\n\r 10. Exit");
      0028EB 74 D7            [12] 1482 	mov	a,#___str_22
      0028ED C0 E0            [24] 1483 	push	acc
      0028EF 74 3D            [12] 1484 	mov	a,#(___str_22 >> 8)
      0028F1 C0 E0            [24] 1485 	push	acc
      0028F3 12 2C 9F         [24] 1486 	lcall	_printf_tiny
      0028F6 15 81            [12] 1487 	dec	sp
      0028F8 15 81            [12] 1488 	dec	sp
                           0003B8  1489 	C$main.c$114$3_1$37 ==.
                                   1490 ;	main.c:114: printf_tiny("\n\r Enter your choice:");
      0028FA 74 E3            [12] 1491 	mov	a,#___str_23
      0028FC C0 E0            [24] 1492 	push	acc
      0028FE 74 3D            [12] 1493 	mov	a,#(___str_23 >> 8)
      002900 C0 E0            [24] 1494 	push	acc
      002902 12 2C 9F         [24] 1495 	lcall	_printf_tiny
      002905 15 81            [12] 1496 	dec	sp
      002907 15 81            [12] 1497 	dec	sp
      002909                       1498 00102$:
                           0003C7  1499 	C$main.c$116$2_1$36 ==.
                                   1500 ;	main.c:116: choice=0;
      002909 90 04 44         [24] 1501 	mov	dptr,#_main_choice_65537_35
      00290C E4               [12] 1502 	clr	a
      00290D F0               [24] 1503 	movx	@dptr,a
                           0003CC  1504 	C$main.c$117$2_1$36 ==.
                                   1505 ;	main.c:117: choice=getchar()-'0';
      00290E 12 2C 8C         [24] 1506 	lcall	_getchar
      002911 E5 82            [12] 1507 	mov	a,dpl
      002913 FE               [12] 1508 	mov	r6,a
      002914 24 D0            [12] 1509 	add	a,#0xd0
      002916 90 04 44         [24] 1510 	mov	dptr,#_main_choice_65537_35
      002919 F0               [24] 1511 	movx	@dptr,a
                           0003D8  1512 	C$main.c$118$2_1$36 ==.
                                   1513 ;	main.c:118: if(choice==1)                                   //To getting the value till 10, if greater then return 0 for choice
      00291A E0               [24] 1514 	movx	a,@dptr
      00291B FF               [12] 1515 	mov	r7,a
      00291C BF 01 68         [24] 1516 	cjne	r7,#0x01,00110$
                           0003DD  1517 	C$main.c$119$3_1$38 ==.
                                   1518 ;	main.c:119: {   printf_tiny("%d",choice);
      00291F 90 04 44         [24] 1519 	mov	dptr,#_main_choice_65537_35
      002922 E0               [24] 1520 	movx	a,@dptr
      002923 FF               [12] 1521 	mov	r7,a
      002924 7E 00            [12] 1522 	mov	r6,#0x00
      002926 C0 07            [24] 1523 	push	ar7
      002928 C0 06            [24] 1524 	push	ar6
      00292A 74 F9            [12] 1525 	mov	a,#___str_24
      00292C C0 E0            [24] 1526 	push	acc
      00292E 74 3D            [12] 1527 	mov	a,#(___str_24 >> 8)
      002930 C0 E0            [24] 1528 	push	acc
      002932 12 2C 9F         [24] 1529 	lcall	_printf_tiny
      002935 E5 81            [12] 1530 	mov	a,sp
      002937 24 FC            [12] 1531 	add	a,#0xfc
      002939 F5 81            [12] 1532 	mov	sp,a
                           0003F9  1533 	C$main.c$120$3_2$39 ==.
                                   1534 ;	main.c:120: volatile uint8_t choice1=getchar();
      00293B 12 2C 8C         [24] 1535 	lcall	_getchar
      00293E AE 82            [24] 1536 	mov	r6,dpl
      002940 90 04 49         [24] 1537 	mov	dptr,#_main_choice1_196610_39
      002943 EE               [12] 1538 	mov	a,r6
      002944 F0               [24] 1539 	movx	@dptr,a
                           000403  1540 	C$main.c$121$3_2$39 ==.
                                   1541 ;	main.c:121: if(choice1=='0')
      002945 E0               [24] 1542 	movx	a,@dptr
      002946 FF               [12] 1543 	mov	r7,a
      002947 BF 30 28         [24] 1544 	cjne	r7,#0x30,00107$
                           000408  1545 	C$main.c$122$4_2$40 ==.
                                   1546 ;	main.c:122: {   printf("%c",choice1);
      00294A 90 04 49         [24] 1547 	mov	dptr,#_main_choice1_196610_39
      00294D E0               [24] 1548 	movx	a,@dptr
      00294E FF               [12] 1549 	mov	r7,a
      00294F 7E 00            [12] 1550 	mov	r6,#0x00
      002951 C0 07            [24] 1551 	push	ar7
      002953 C0 06            [24] 1552 	push	ar6
      002955 74 FC            [12] 1553 	mov	a,#___str_25
      002957 C0 E0            [24] 1554 	push	acc
      002959 74 3D            [12] 1555 	mov	a,#(___str_25 >> 8)
      00295B C0 E0            [24] 1556 	push	acc
      00295D 74 80            [12] 1557 	mov	a,#0x80
      00295F C0 E0            [24] 1558 	push	acc
      002961 12 30 09         [24] 1559 	lcall	_printf
      002964 E5 81            [12] 1560 	mov	a,sp
      002966 24 FB            [12] 1561 	add	a,#0xfb
      002968 F5 81            [12] 1562 	mov	sp,a
                           000428  1563 	C$main.c$123$4_2$40 ==.
                                   1564 ;	main.c:123: choice=10;
      00296A 90 04 44         [24] 1565 	mov	dptr,#_main_choice_65537_35
      00296D 74 0A            [12] 1566 	mov	a,#0x0a
      00296F F0               [24] 1567 	movx	@dptr,a
      002970 80 15            [24] 1568 	sjmp	00110$
      002972                       1569 00107$:
                           000430  1570 	C$main.c$125$3_2$39 ==.
                                   1571 ;	main.c:125: else if(choice1==13)
      002972 90 04 49         [24] 1572 	mov	dptr,#_main_choice1_196610_39
      002975 E0               [24] 1573 	movx	a,@dptr
      002976 FF               [12] 1574 	mov	r7,a
      002977 BF 0D 08         [24] 1575 	cjne	r7,#0x0d,00104$
                           000438  1576 	C$main.c$126$4_2$41 ==.
                                   1577 ;	main.c:126: { choice=1;
      00297A 90 04 44         [24] 1578 	mov	dptr,#_main_choice_65537_35
      00297D 74 01            [12] 1579 	mov	a,#0x01
      00297F F0               [24] 1580 	movx	@dptr,a
      002980 80 05            [24] 1581 	sjmp	00110$
      002982                       1582 00104$:
                           000440  1583 	C$main.c$129$4_2$42 ==.
                                   1584 ;	main.c:129: {   choice=0;
      002982 90 04 44         [24] 1585 	mov	dptr,#_main_choice_65537_35
      002985 E4               [12] 1586 	clr	a
      002986 F0               [24] 1587 	movx	@dptr,a
      002987                       1588 00110$:
                           000445  1589 	C$main.c$132$2_1$36 ==.
                                   1590 ;	main.c:132: switch(choice)                  //Menu Driven
      002987 90 04 44         [24] 1591 	mov	dptr,#_main_choice_65537_35
      00298A E0               [24] 1592 	movx	a,@dptr
      00298B FF               [12] 1593 	mov  r7,a
      00298C 24 F5            [12] 1594 	add	a,#0xff - 0x0a
      00298E 50 03            [24] 1595 	jnc	00209$
      002990 02 2B B5         [24] 1596 	ljmp	00141$
      002993                       1597 00209$:
      002993 EF               [12] 1598 	mov	a,r7
      002994 F5 F0            [12] 1599 	mov	b,a
      002996 24 0B            [12] 1600 	add	a,#(00210$-3-.)
      002998 83               [24] 1601 	movc	a,@a+pc
      002999 F5 82            [12] 1602 	mov	dpl,a
      00299B E5 F0            [12] 1603 	mov	a,b
      00299D 24 0F            [12] 1604 	add	a,#(00211$-3-.)
      00299F 83               [24] 1605 	movc	a,@a+pc
      0029A0 F5 83            [12] 1606 	mov	dph,a
      0029A2 E4               [12] 1607 	clr	a
      0029A3 73               [24] 1608 	jmp	@a+dptr
      0029A4                       1609 00210$:
      0029A4 B5                    1610 	.db	00141$
      0029A5 BA                    1611 	.db	00112$
      0029A6 FF                    1612 	.db	00113$
      0029A7 44                    1613 	.db	00130$
      0029A8 62                    1614 	.db	00131$
      0029A9 75                    1615 	.db	00132$
      0029AA 88                    1616 	.db	00133$
      0029AB 99                    1617 	.db	00134$
      0029AC B5                    1618 	.db	00141$
      0029AD A1                    1619 	.db	00136$
      0029AE A6                    1620 	.db	00137$
      0029AF                       1621 00211$:
      0029AF 2B                    1622 	.db	00141$>>8
      0029B0 29                    1623 	.db	00112$>>8
      0029B1 29                    1624 	.db	00113$>>8
      0029B2 2B                    1625 	.db	00130$>>8
      0029B3 2B                    1626 	.db	00131$>>8
      0029B4 2B                    1627 	.db	00132$>>8
      0029B5 2B                    1628 	.db	00133$>>8
      0029B6 2B                    1629 	.db	00134$>>8
      0029B7 2B                    1630 	.db	00141$>>8
      0029B8 2B                    1631 	.db	00136$>>8
      0029B9 2B                    1632 	.db	00137$>>8
                           000478  1633 	C$main.c$136$3_1$43 ==.
                                   1634 ;	main.c:136: case 1:   printf_tiny("\n\rEnter the character:");
      0029BA                       1635 00112$:
      0029BA 74 FF            [12] 1636 	mov	a,#___str_26
      0029BC C0 E0            [24] 1637 	push	acc
      0029BE 74 3D            [12] 1638 	mov	a,#(___str_26 >> 8)
      0029C0 C0 E0            [24] 1639 	push	acc
      0029C2 12 2C 9F         [24] 1640 	lcall	_printf_tiny
      0029C5 15 81            [12] 1641 	dec	sp
      0029C7 15 81            [12] 1642 	dec	sp
                           000487  1643 	C$main.c$137$3_1$43 ==.
                                   1644 ;	main.c:137: ch=getchar();
      0029C9 12 2C 8C         [24] 1645 	lcall	_getchar
      0029CC AE 82            [24] 1646 	mov	r6,dpl
                           00048C  1647 	C$main.c$138$3_1$43 ==.
                                   1648 ;	main.c:138: printf_tiny("%c",ch);
      0029CE 8E 05            [24] 1649 	mov	ar5,r6
      0029D0 7F 00            [12] 1650 	mov	r7,#0x00
      0029D2 C0 06            [24] 1651 	push	ar6
      0029D4 C0 05            [24] 1652 	push	ar5
      0029D6 C0 07            [24] 1653 	push	ar7
      0029D8 74 FC            [12] 1654 	mov	a,#___str_25
      0029DA C0 E0            [24] 1655 	push	acc
      0029DC 74 3D            [12] 1656 	mov	a,#(___str_25 >> 8)
      0029DE C0 E0            [24] 1657 	push	acc
      0029E0 12 2C 9F         [24] 1658 	lcall	_printf_tiny
      0029E3 E5 81            [12] 1659 	mov	a,sp
      0029E5 24 FC            [12] 1660 	add	a,#0xfc
      0029E7 F5 81            [12] 1661 	mov	sp,a
                           0004A7  1662 	C$main.c$139$3_1$43 ==.
                                   1663 ;	main.c:139: lcd_gotoxy(1,1);
      0029E9 90 04 10         [24] 1664 	mov	dptr,#_lcd_gotoxy_PARM_2
      0029EC 74 01            [12] 1665 	mov	a,#0x01
      0029EE F0               [24] 1666 	movx	@dptr,a
      0029EF 75 82 01         [24] 1667 	mov	dpl,#0x01
      0029F2 12 24 7A         [24] 1668 	lcall	_lcd_gotoxy
      0029F5 D0 06            [24] 1669 	pop	ar6
                           0004B5  1670 	C$main.c$140$3_1$43 ==.
                                   1671 ;	main.c:140: LCD_putch(ch);
      0029F7 8E 82            [24] 1672 	mov	dpl,r6
      0029F9 12 23 9B         [24] 1673 	lcall	_LCD_putch
                           0004BA  1674 	C$main.c$141$3_1$43 ==.
                                   1675 ;	main.c:141: break;
      0029FC 02 2B B5         [24] 1676 	ljmp	00141$
                           0004BD  1677 	C$main.c$142$3_1$43 ==.
                                   1678 ;	main.c:142: case 2:     printf_tiny("\n\rEnter the row:");
      0029FF                       1679 00113$:
      0029FF 74 16            [12] 1680 	mov	a,#___str_27
      002A01 C0 E0            [24] 1681 	push	acc
      002A03 74 3E            [12] 1682 	mov	a,#(___str_27 >> 8)
      002A05 C0 E0            [24] 1683 	push	acc
      002A07 12 2C 9F         [24] 1684 	lcall	_printf_tiny
      002A0A 15 81            [12] 1685 	dec	sp
      002A0C 15 81            [12] 1686 	dec	sp
                           0004CC  1687 	C$main.c$143$3_1$43 ==.
                                   1688 ;	main.c:143: do
      002A0E                       1689 00118$:
                           0004CC  1690 	C$main.c$145$4_1$44 ==.
                                   1691 ;	main.c:145: row_value=getchar();
      002A0E 12 2C 8C         [24] 1692 	lcall	_getchar
      002A11 AE 82            [24] 1693 	mov	r6,dpl
      002A13 90 04 45         [24] 1694 	mov	dptr,#_main_row_value_65537_35
      002A16 EE               [12] 1695 	mov	a,r6
      002A17 F0               [24] 1696 	movx	@dptr,a
                           0004D6  1697 	C$main.c$146$4_1$44 ==.
                                   1698 ;	main.c:146: if(row_value>'5' || row_value =='0')
      002A18 E0               [24] 1699 	movx	a,@dptr
      002A19 24 CA            [12] 1700 	add	a,#0xff - 0x35
      002A1B 40 08            [24] 1701 	jc	00114$
      002A1D 90 04 45         [24] 1702 	mov	dptr,#_main_row_value_65537_35
      002A20 E0               [24] 1703 	movx	a,@dptr
      002A21 FF               [12] 1704 	mov	r7,a
      002A22 BF 30 0F         [24] 1705 	cjne	r7,#0x30,00119$
      002A25                       1706 00114$:
                           0004E3  1707 	C$main.c$148$5_1$45 ==.
                                   1708 ;	main.c:148: printf_tiny("\n\r Sorry wrong choice, Enter Again.");
      002A25 74 27            [12] 1709 	mov	a,#___str_28
      002A27 C0 E0            [24] 1710 	push	acc
      002A29 74 3E            [12] 1711 	mov	a,#(___str_28 >> 8)
      002A2B C0 E0            [24] 1712 	push	acc
      002A2D 12 2C 9F         [24] 1713 	lcall	_printf_tiny
      002A30 15 81            [12] 1714 	dec	sp
      002A32 15 81            [12] 1715 	dec	sp
      002A34                       1716 00119$:
                           0004F2  1717 	C$main.c$150$3_1$43 ==.
                                   1718 ;	main.c:150: }while(!(row_value>'0' && row_value<'5'));
      002A34 90 04 45         [24] 1719 	mov	dptr,#_main_row_value_65537_35
      002A37 E0               [24] 1720 	movx	a,@dptr
      002A38 FF               [12] 1721 	mov  r7,a
      002A39 24 CF            [12] 1722 	add	a,#0xff - 0x30
      002A3B 50 D1            [24] 1723 	jnc	00118$
      002A3D 90 04 45         [24] 1724 	mov	dptr,#_main_row_value_65537_35
      002A40 E0               [24] 1725 	movx	a,@dptr
      002A41 FF               [12] 1726 	mov	r7,a
      002A42 BF 35 00         [24] 1727 	cjne	r7,#0x35,00216$
      002A45                       1728 00216$:
      002A45 50 C7            [24] 1729 	jnc	00118$
                           000505  1730 	C$main.c$151$3_1$43 ==.
                                   1731 ;	main.c:151: printf_tiny("%c",row_value);
      002A47 90 04 45         [24] 1732 	mov	dptr,#_main_row_value_65537_35
      002A4A E0               [24] 1733 	movx	a,@dptr
      002A4B FF               [12] 1734 	mov	r7,a
      002A4C 7E 00            [12] 1735 	mov	r6,#0x00
      002A4E C0 07            [24] 1736 	push	ar7
      002A50 C0 06            [24] 1737 	push	ar6
      002A52 74 FC            [12] 1738 	mov	a,#___str_25
      002A54 C0 E0            [24] 1739 	push	acc
      002A56 74 3D            [12] 1740 	mov	a,#(___str_25 >> 8)
      002A58 C0 E0            [24] 1741 	push	acc
      002A5A 12 2C 9F         [24] 1742 	lcall	_printf_tiny
      002A5D E5 81            [12] 1743 	mov	a,sp
      002A5F 24 FC            [12] 1744 	add	a,#0xfc
      002A61 F5 81            [12] 1745 	mov	sp,a
                           000521  1746 	C$main.c$152$3_1$43 ==.
                                   1747 ;	main.c:152: printf_tiny("\n\rEnter the column:");
      002A63 74 4B            [12] 1748 	mov	a,#___str_29
      002A65 C0 E0            [24] 1749 	push	acc
      002A67 74 3E            [12] 1750 	mov	a,#(___str_29 >> 8)
      002A69 C0 E0            [24] 1751 	push	acc
      002A6B 12 2C 9F         [24] 1752 	lcall	_printf_tiny
      002A6E 15 81            [12] 1753 	dec	sp
      002A70 15 81            [12] 1754 	dec	sp
                           000530  1755 	C$main.c$153$3_1$43 ==.
                                   1756 ;	main.c:153: do
      002A72                       1757 00127$:
                           000530  1758 	C$main.c$155$4_1$46 ==.
                                   1759 ;	main.c:155: column1=getchar();
      002A72 12 2C 8C         [24] 1760 	lcall	_getchar
      002A75 AE 82            [24] 1761 	mov	r6,dpl
      002A77 90 04 46         [24] 1762 	mov	dptr,#_main_column1_65537_35
      002A7A EE               [12] 1763 	mov	a,r6
      002A7B F0               [24] 1764 	movx	@dptr,a
                           00053A  1765 	C$main.c$156$4_1$46 ==.
                                   1766 ;	main.c:156: column1=column1-'0';
      002A7C E0               [24] 1767 	movx	a,@dptr
      002A7D 24 D0            [12] 1768 	add	a,#0xd0
      002A7F F0               [24] 1769 	movx	@dptr,a
                           00053E  1770 	C$main.c$157$4_1$46 ==.
                                   1771 ;	main.c:157: if(column1==1||column1==0)
      002A80 E0               [24] 1772 	movx	a,@dptr
      002A81 FF               [12] 1773 	mov	r7,a
      002A82 BF 01 02         [24] 1774 	cjne	r7,#0x01,00218$
      002A85 80 06            [24] 1775 	sjmp	00121$
      002A87                       1776 00218$:
      002A87 90 04 46         [24] 1777 	mov	dptr,#_main_column1_65537_35
      002A8A E0               [24] 1778 	movx	a,@dptr
      002A8B 70 23            [24] 1779 	jnz	00122$
      002A8D                       1780 00121$:
                           00054B  1781 	C$main.c$158$5_1$47 ==.
                                   1782 ;	main.c:158: {   column2=getchar();
      002A8D 12 2C 8C         [24] 1783 	lcall	_getchar
      002A90 AE 82            [24] 1784 	mov	r6,dpl
      002A92 90 04 47         [24] 1785 	mov	dptr,#_main_column2_65537_35
      002A95 EE               [12] 1786 	mov	a,r6
      002A96 F0               [24] 1787 	movx	@dptr,a
                           000555  1788 	C$main.c$159$5_1$47 ==.
                                   1789 ;	main.c:159: column2=column2-'0';
      002A97 E0               [24] 1790 	movx	a,@dptr
      002A98 24 D0            [12] 1791 	add	a,#0xd0
      002A9A F0               [24] 1792 	movx	@dptr,a
                           000559  1793 	C$main.c$160$5_1$47 ==.
                                   1794 ;	main.c:160: column_value=column1*10+column2;
      002A9B 90 04 46         [24] 1795 	mov	dptr,#_main_column1_65537_35
      002A9E E0               [24] 1796 	movx	a,@dptr
      002A9F 75 F0 0A         [24] 1797 	mov	b,#0x0a
      002AA2 A4               [48] 1798 	mul	ab
      002AA3 FF               [12] 1799 	mov	r7,a
      002AA4 90 04 47         [24] 1800 	mov	dptr,#_main_column2_65537_35
      002AA7 E0               [24] 1801 	movx	a,@dptr
      002AA8 FE               [12] 1802 	mov	r6,a
      002AA9 90 04 48         [24] 1803 	mov	dptr,#_main_column_value_65537_35
      002AAC 2F               [12] 1804 	add	a,r7
      002AAD F0               [24] 1805 	movx	@dptr,a
      002AAE 80 0D            [24] 1806 	sjmp	00123$
      002AB0                       1807 00122$:
                           00056E  1808 	C$main.c$164$5_1$48 ==.
                                   1809 ;	main.c:164: column2=0;
      002AB0 90 04 47         [24] 1810 	mov	dptr,#_main_column2_65537_35
      002AB3 E4               [12] 1811 	clr	a
      002AB4 F0               [24] 1812 	movx	@dptr,a
                           000573  1813 	C$main.c$165$5_1$48 ==.
                                   1814 ;	main.c:165: column_value=column1;
      002AB5 90 04 46         [24] 1815 	mov	dptr,#_main_column1_65537_35
      002AB8 E0               [24] 1816 	movx	a,@dptr
      002AB9 90 04 48         [24] 1817 	mov	dptr,#_main_column_value_65537_35
      002ABC F0               [24] 1818 	movx	@dptr,a
      002ABD                       1819 00123$:
                           00057B  1820 	C$main.c$167$4_1$46 ==.
                                   1821 ;	main.c:167: if(column_value>16)
      002ABD 90 04 48         [24] 1822 	mov	dptr,#_main_column_value_65537_35
      002AC0 E0               [24] 1823 	movx	a,@dptr
      002AC1 24 EF            [12] 1824 	add	a,#0xff - 0x10
      002AC3 50 0F            [24] 1825 	jnc	00128$
                           000583  1826 	C$main.c$169$5_1$49 ==.
                                   1827 ;	main.c:169: printf_tiny("\n\r Sorry wrong choice, Enter Again.");
      002AC5 74 27            [12] 1828 	mov	a,#___str_28
      002AC7 C0 E0            [24] 1829 	push	acc
      002AC9 74 3E            [12] 1830 	mov	a,#(___str_28 >> 8)
      002ACB C0 E0            [24] 1831 	push	acc
      002ACD 12 2C 9F         [24] 1832 	lcall	_printf_tiny
      002AD0 15 81            [12] 1833 	dec	sp
      002AD2 15 81            [12] 1834 	dec	sp
      002AD4                       1835 00128$:
                           000592  1836 	C$main.c$171$3_1$43 ==.
                                   1837 ;	main.c:171: }while((column_value>16));
      002AD4 90 04 48         [24] 1838 	mov	dptr,#_main_column_value_65537_35
      002AD7 E0               [24] 1839 	movx	a,@dptr
      002AD8 24 EF            [12] 1840 	add	a,#0xff - 0x10
      002ADA 40 96            [24] 1841 	jc	00127$
                           00059A  1842 	C$main.c$172$3_1$43 ==.
                                   1843 ;	main.c:172: printf_tiny("%d",column_value);
      002ADC 90 04 48         [24] 1844 	mov	dptr,#_main_column_value_65537_35
      002ADF E0               [24] 1845 	movx	a,@dptr
      002AE0 FF               [12] 1846 	mov	r7,a
      002AE1 7E 00            [12] 1847 	mov	r6,#0x00
      002AE3 C0 07            [24] 1848 	push	ar7
      002AE5 C0 06            [24] 1849 	push	ar6
      002AE7 74 F9            [12] 1850 	mov	a,#___str_24
      002AE9 C0 E0            [24] 1851 	push	acc
      002AEB 74 3D            [12] 1852 	mov	a,#(___str_24 >> 8)
      002AED C0 E0            [24] 1853 	push	acc
      002AEF 12 2C 9F         [24] 1854 	lcall	_printf_tiny
      002AF2 E5 81            [12] 1855 	mov	a,sp
      002AF4 24 FC            [12] 1856 	add	a,#0xfc
      002AF6 F5 81            [12] 1857 	mov	sp,a
                           0005B6  1858 	C$main.c$173$3_1$43 ==.
                                   1859 ;	main.c:173: printf_tiny("\n\rEnter the character:");
      002AF8 74 FF            [12] 1860 	mov	a,#___str_26
      002AFA C0 E0            [24] 1861 	push	acc
      002AFC 74 3D            [12] 1862 	mov	a,#(___str_26 >> 8)
      002AFE C0 E0            [24] 1863 	push	acc
      002B00 12 2C 9F         [24] 1864 	lcall	_printf_tiny
      002B03 15 81            [12] 1865 	dec	sp
      002B05 15 81            [12] 1866 	dec	sp
                           0005C5  1867 	C$main.c$174$3_1$43 ==.
                                   1868 ;	main.c:174: ch=getchar();
      002B07 12 2C 8C         [24] 1869 	lcall	_getchar
      002B0A AE 82            [24] 1870 	mov	r6,dpl
                           0005CA  1871 	C$main.c$175$3_1$43 ==.
                                   1872 ;	main.c:175: printf_tiny("%c",ch);
      002B0C 8E 05            [24] 1873 	mov	ar5,r6
      002B0E 7F 00            [12] 1874 	mov	r7,#0x00
      002B10 C0 06            [24] 1875 	push	ar6
      002B12 C0 05            [24] 1876 	push	ar5
      002B14 C0 07            [24] 1877 	push	ar7
      002B16 74 FC            [12] 1878 	mov	a,#___str_25
      002B18 C0 E0            [24] 1879 	push	acc
      002B1A 74 3D            [12] 1880 	mov	a,#(___str_25 >> 8)
      002B1C C0 E0            [24] 1881 	push	acc
      002B1E 12 2C 9F         [24] 1882 	lcall	_printf_tiny
      002B21 E5 81            [12] 1883 	mov	a,sp
      002B23 24 FC            [12] 1884 	add	a,#0xfc
      002B25 F5 81            [12] 1885 	mov	sp,a
                           0005E5  1886 	C$main.c$176$3_1$43 ==.
                                   1887 ;	main.c:176: lcd_gotoxy(row_value-'0',column_value);
      002B27 90 04 45         [24] 1888 	mov	dptr,#_main_row_value_65537_35
      002B2A E0               [24] 1889 	movx	a,@dptr
      002B2B 24 D0            [12] 1890 	add	a,#0xd0
      002B2D FF               [12] 1891 	mov	r7,a
      002B2E 90 04 48         [24] 1892 	mov	dptr,#_main_column_value_65537_35
      002B31 E0               [24] 1893 	movx	a,@dptr
      002B32 90 04 10         [24] 1894 	mov	dptr,#_lcd_gotoxy_PARM_2
      002B35 F0               [24] 1895 	movx	@dptr,a
      002B36 8F 82            [24] 1896 	mov	dpl,r7
      002B38 12 24 7A         [24] 1897 	lcall	_lcd_gotoxy
      002B3B D0 06            [24] 1898 	pop	ar6
                           0005FB  1899 	C$main.c$177$3_1$43 ==.
                                   1900 ;	main.c:177: LCD_putch(ch);
      002B3D 8E 82            [24] 1901 	mov	dpl,r6
      002B3F 12 23 9B         [24] 1902 	lcall	_LCD_putch
                           000600  1903 	C$main.c$178$3_1$43 ==.
                                   1904 ;	main.c:178: break;
                           000600  1905 	C$main.c$179$3_1$43 ==.
                                   1906 ;	main.c:179: case 3:     milli=0,seconds=0,minutes=0;
      002B42 80 71            [24] 1907 	sjmp	00141$
      002B44                       1908 00130$:
      002B44 90 04 AA         [24] 1909 	mov	dptr,#_milli
      002B47 E4               [12] 1910 	clr	a
      002B48 F0               [24] 1911 	movx	@dptr,a
      002B49 90 04 AB         [24] 1912 	mov	dptr,#_seconds
      002B4C F0               [24] 1913 	movx	@dptr,a
      002B4D 90 04 AC         [24] 1914 	mov	dptr,#_minutes
      002B50 F0               [24] 1915 	movx	@dptr,a
                           00060F  1916 	C$main.c$180$3_1$43 ==.
                                   1917 ;	main.c:180: printf_tiny("\n\r Clock Successfully Reset");
      002B51 74 5F            [12] 1918 	mov	a,#___str_30
      002B53 C0 E0            [24] 1919 	push	acc
      002B55 74 3E            [12] 1920 	mov	a,#(___str_30 >> 8)
      002B57 C0 E0            [24] 1921 	push	acc
      002B59 12 2C 9F         [24] 1922 	lcall	_printf_tiny
      002B5C 15 81            [12] 1923 	dec	sp
      002B5E 15 81            [12] 1924 	dec	sp
                           00061E  1925 	C$main.c$181$3_1$43 ==.
                                   1926 ;	main.c:181: break;
                           00061E  1927 	C$main.c$182$3_1$43 ==.
                                   1928 ;	main.c:182: case 4:     TR0=0;
      002B60 80 53            [24] 1929 	sjmp	00141$
      002B62                       1930 00131$:
                                   1931 ;	assignBit
      002B62 C2 8C            [12] 1932 	clr	_TR0
                           000622  1933 	C$main.c$183$3_1$43 ==.
                                   1934 ;	main.c:183: printf_tiny("\n\r Timer Stopped Successfully");
      002B64 74 7B            [12] 1935 	mov	a,#___str_31
      002B66 C0 E0            [24] 1936 	push	acc
      002B68 74 3E            [12] 1937 	mov	a,#(___str_31 >> 8)
      002B6A C0 E0            [24] 1938 	push	acc
      002B6C 12 2C 9F         [24] 1939 	lcall	_printf_tiny
      002B6F 15 81            [12] 1940 	dec	sp
      002B71 15 81            [12] 1941 	dec	sp
                           000631  1942 	C$main.c$184$3_1$43 ==.
                                   1943 ;	main.c:184: break;
                           000631  1944 	C$main.c$185$3_1$43 ==.
                                   1945 ;	main.c:185: case 5:     TR0=1;
      002B73 80 40            [24] 1946 	sjmp	00141$
      002B75                       1947 00132$:
                                   1948 ;	assignBit
      002B75 D2 8C            [12] 1949 	setb	_TR0
                           000635  1950 	C$main.c$186$3_1$43 ==.
                                   1951 ;	main.c:186: printf_tiny("\n\r Timer Started Successfully");
      002B77 74 99            [12] 1952 	mov	a,#___str_32
      002B79 C0 E0            [24] 1953 	push	acc
      002B7B 74 3E            [12] 1954 	mov	a,#(___str_32 >> 8)
      002B7D C0 E0            [24] 1955 	push	acc
      002B7F 12 2C 9F         [24] 1956 	lcall	_printf_tiny
      002B82 15 81            [12] 1957 	dec	sp
      002B84 15 81            [12] 1958 	dec	sp
                           000644  1959 	C$main.c$187$3_1$43 ==.
                                   1960 ;	main.c:187: break;
                           000644  1961 	C$main.c$188$3_1$43 ==.
                                   1962 ;	main.c:188: case 6 :    lcd_clear;
      002B86 80 2D            [24] 1963 	sjmp	00141$
      002B88                       1964 00133$:
                           000646  1965 	C$main.c$189$3_1$43 ==.
                                   1966 ;	main.c:189: printf_tiny("\n\r LCD Cleared Successfully ");
      002B88 74 B7            [12] 1967 	mov	a,#___str_33
      002B8A C0 E0            [24] 1968 	push	acc
      002B8C 74 3E            [12] 1969 	mov	a,#(___str_33 >> 8)
      002B8E C0 E0            [24] 1970 	push	acc
      002B90 12 2C 9F         [24] 1971 	lcall	_printf_tiny
      002B93 15 81            [12] 1972 	dec	sp
      002B95 15 81            [12] 1973 	dec	sp
                           000655  1974 	C$main.c$190$3_1$43 ==.
                                   1975 ;	main.c:190: break;
                           000655  1976 	C$main.c$191$3_1$43 ==.
                                   1977 ;	main.c:191: case 7 :    lcdbusywait();
      002B97 80 1C            [24] 1978 	sjmp	00141$
      002B99                       1979 00134$:
      002B99 12 22 6D         [24] 1980 	lcall	_lcdbusywait
                           00065A  1981 	C$main.c$192$3_1$43 ==.
                                   1982 ;	main.c:192: ddram_dump();
      002B9C 12 24 D4         [24] 1983 	lcall	_ddram_dump
                           00065D  1984 	C$main.c$193$3_1$43 ==.
                                   1985 ;	main.c:193: break;
                           00065D  1986 	C$main.c$196$3_1$43 ==.
                                   1987 ;	main.c:196: case 9 :    help();
      002B9F 80 14            [24] 1988 	sjmp	00141$
      002BA1                       1989 00136$:
      002BA1 12 26 7D         [24] 1990 	lcall	_help
                           000662  1991 	C$main.c$197$3_1$43 ==.
                                   1992 ;	main.c:197: break;
                           000662  1993 	C$main.c$198$3_1$43 ==.
                                   1994 ;	main.c:198: case 10:    printf_tiny("\n\r Thank you and visit again");
      002BA4 80 0F            [24] 1995 	sjmp	00141$
      002BA6                       1996 00137$:
      002BA6 74 D4            [12] 1997 	mov	a,#___str_34
      002BA8 C0 E0            [24] 1998 	push	acc
      002BAA 74 3E            [12] 1999 	mov	a,#(___str_34 >> 8)
      002BAC C0 E0            [24] 2000 	push	acc
      002BAE 12 2C 9F         [24] 2001 	lcall	_printf_tiny
      002BB1 15 81            [12] 2002 	dec	sp
      002BB3 15 81            [12] 2003 	dec	sp
                           000673  2004 	C$main.c$202$1_1$35 ==.
                                   2005 ;	main.c:202: }
      002BB5                       2006 00141$:
                           000673  2007 	C$main.c$203$1_1$35 ==.
                                   2008 ;	main.c:203: }while(choice!=10);
      002BB5 90 04 44         [24] 2009 	mov	dptr,#_main_choice_65537_35
      002BB8 E0               [24] 2010 	movx	a,@dptr
      002BB9 FF               [12] 2011 	mov	r7,a
      002BBA BF 0A 02         [24] 2012 	cjne	r7,#0x0a,00222$
      002BBD 80 03            [24] 2013 	sjmp	00223$
      002BBF                       2014 00222$:
      002BBF 02 28 4C         [24] 2015 	ljmp	00140$
      002BC2                       2016 00223$:
                           000680  2017 	C$main.c$204$1_1$34 ==.
                                   2018 ;	main.c:204: }
                           000680  2019 	C$main.c$204$1_1$34 ==.
                           000680  2020 	XG$main$0$0 ==.
      002BC2 22               [24] 2021 	ret
                                   2022 	.area CSEG    (CODE)
                                   2023 	.area CONST   (CODE)
                           000000  2024 Fmain$__str_0$0_0$0 == .
                                   2025 	.area CONST   (CODE)
      003A74                       2026 ___str_0:
      003A74 0A                    2027 	.db 0x0a
      003A75 0D                    2028 	.db 0x0d
      003A76 20 57 65 6C 63 6F 6D  2029 	.ascii " Welcome to the World Of working(maybe) LCD."
             65 20 74 6F 20 74 68
             65 20 57 6F 72 6C 64
             20 4F 66 20 77 6F 72
             6B 69 6E 67 28 6D 61
             79 62 65 29 20 4C 43
             44 2E
      003AA2 00                    2030 	.db 0x00
                                   2031 	.area CSEG    (CODE)
                           000681  2032 Fmain$__str_1$0_0$0 == .
                                   2033 	.area CONST   (CODE)
      003AA3                       2034 ___str_1:
      003AA3 0A                    2035 	.db 0x0a
      003AA4 0D                    2036 	.db 0x0d
      003AA5 20 54 68 65 72 65 20  2037 	.ascii " There are some instructions to read before to proceed."
             61 72 65 20 73 6F 6D
             65 20 69 6E 73 74 72
             75 63 74 69 6F 6E 73
             20 74 6F 20 72 65 61
             64 20 62 65 66 6F 72
             65 20 74 6F 20 70 72
             6F 63 65 65 64 2E
      003ADC 00                    2038 	.db 0x00
                                   2039 	.area CSEG    (CODE)
                           000681  2040 Fmain$__str_2$0_0$0 == .
                                   2041 	.area CONST   (CODE)
      003ADD                       2042 ___str_2:
      003ADD 0A                    2043 	.db 0x0a
      003ADE 0D                    2044 	.db 0x0d
      003ADF 20 54 68 69 73 20 6C  2045 	.ascii " This lab was aimed to allow the students to learn the imple"
             61 62 20 77 61 73 20
             61 69 6D 65 64 20 74
             6F 20 61 6C 6C 6F 77
             20 74 68 65 20 73 74
             75 64 65 6E 74 73 20
             74 6F 20 6C 65 61 72
             6E 20 74 68 65 20 69
             6D 70 6C 65
      003B1B 6D 65 6E 74 61 74 69  2046 	.ascii "mentation of the LCD."
             6F 6E 20 6F 66 20 74
             68 65 20 4C 43 44 2E
      003B30 00                    2047 	.db 0x00
                                   2048 	.area CSEG    (CODE)
                           000681  2049 Fmain$__str_3$0_0$0 == .
                                   2050 	.area CONST   (CODE)
      003B31                       2051 ___str_3:
      003B31 0A                    2052 	.db 0x0a
      003B32 0D                    2053 	.db 0x0d
      003B33 20 54 68 65 20 4C 43  2054 	.ascii " The LCD has 4 rows and 16 columns."
             44 20 68 61 73 20 34
             20 72 6F 77 73 20 61
             6E 64 20 31 36 20 63
             6F 6C 75 6D 6E 73 2E
      003B56 00                    2055 	.db 0x00
                                   2056 	.area CSEG    (CODE)
                           000681  2057 Fmain$__str_4$0_0$0 == .
                                   2058 	.area CONST   (CODE)
      003B57                       2059 ___str_4:
      003B57 0A                    2060 	.db 0x0a
      003B58 0D                    2061 	.db 0x0d
      003B59 20 54 72 79 69 6E 67  2062 	.ascii " Trying to go beyond that will give you an error."
             20 74 6F 20 67 6F 20
             62 65 79 6F 6E 64 20
             74 68 61 74 20 77 69
             6C 6C 20 67 69 76 65
             20 79 6F 75 20 61 6E
             20 65 72 72 6F 72 2E
      003B8A 00                    2063 	.db 0x00
                                   2064 	.area CSEG    (CODE)
                           000681  2065 Fmain$__str_5$0_0$0 == .
                                   2066 	.area CONST   (CODE)
      003B8B                       2067 ___str_5:
      003B8B 0A                    2068 	.db 0x0a
      003B8C 0D                    2069 	.db 0x0d
      003B8D 20 69 66 20 79 6F 75  2070 	.ascii " if you want to print a character, we have an option for you"
             20 77 61 6E 74 20 74
             6F 20 70 72 69 6E 74
             20 61 20 63 68 61 72
             61 63 74 65 72 2C 20
             77 65 20 68 61 76 65
             20 61 6E 20 6F 70 74
             69 6F 6E 20 66 6F 72
             20 79 6F 75
      003BC9 2E                    2071 	.ascii "."
      003BCA 00                    2072 	.db 0x00
                                   2073 	.area CSEG    (CODE)
                           000681  2074 Fmain$__str_6$0_0$0 == .
                                   2075 	.area CONST   (CODE)
      003BCB                       2076 ___str_6:
      003BCB 0A                    2077 	.db 0x0a
      003BCC 0D                    2078 	.db 0x0d
      003BCD 20 41 73 20 73 6F 6F  2079 	.ascii " As soon as you enter the program, the timer will start."
             6E 20 61 73 20 79 6F
             75 20 65 6E 74 65 72
             20 74 68 65 20 70 72
             6F 67 72 61 6D 2C 20
             74 68 65 20 74 69 6D
             65 72 20 77 69 6C 6C
             20 73 74 61 72 74 2E
      003C05 00                    2080 	.db 0x00
                                   2081 	.area CSEG    (CODE)
                           000681  2082 Fmain$__str_7$0_0$0 == .
                                   2083 	.area CONST   (CODE)
      003C06                       2084 ___str_7:
      003C06 0A                    2085 	.db 0x0a
      003C07 0D                    2086 	.db 0x0d
      003C08 20 49 66 20 79 6F 75  2087 	.ascii " If you are here for the first time, The timer is stopped fo"
             20 61 72 65 20 68 65
             72 65 20 66 6F 72 20
             74 68 65 20 66 69 72
             73 74 20 74 69 6D 65
             2C 20 54 68 65 20 74
             69 6D 65 72 20 69 73
             20 73 74 6F 70 70 65
             64 20 66 6F
      003C44 72 20 6E 6F 77 2E     2088 	.ascii "r now."
      003C4A 00                    2089 	.db 0x00
                                   2090 	.area CSEG    (CODE)
                           000681  2091 Fmain$__str_8$0_0$0 == .
                                   2092 	.area CONST   (CODE)
      003C4B                       2093 ___str_8:
      003C4B 0A                    2094 	.db 0x0a
      003C4C 0D                    2095 	.db 0x0d
      003C4D 20 54 68 65 20 74 69  2096 	.ascii " The timer is running continuously, if you want to print the"
             6D 65 72 20 69 73 20
             72 75 6E 6E 69 6E 67
             20 63 6F 6E 74 69 6E
             75 6F 75 73 6C 79 2C
             20 69 66 20 79 6F 75
             20 77 61 6E 74 20 74
             6F 20 70 72 69 6E 74
             20 74 68 65
      003C89 20 63 68 61 72 61 63  2097 	.ascii " character at timer's place, its impossible."
             74 65 72 20 61 74 20
             74 69 6D 65 72 27 73
             20 70 6C 61 63 65 2C
             20 69 74 73 20 69 6D
             70 6F 73 73 69 62 6C
             65 2E
      003CB5 00                    2098 	.db 0x00
                                   2099 	.area CSEG    (CODE)
                           000681  2100 Fmain$__str_9$0_0$0 == .
                                   2101 	.area CONST   (CODE)
      003CB6                       2102 ___str_9:
      003CB6 0A                    2103 	.db 0x0a
      003CB7 0D                    2104 	.db 0x0d
      003CB8 20 50 72 65 73 73 20  2105 	.ascii " Press Enter to Continue"
             45 6E 74 65 72 20 74
             6F 20 43 6F 6E 74 69
             6E 75 65
      003CD0 00                    2106 	.db 0x00
                                   2107 	.area CSEG    (CODE)
                           000681  2108 Fmain$__str_12$0_0$0 == .
                                   2109 	.area CONST   (CODE)
      003CD1                       2110 ___str_12:
      003CD1 0A                    2111 	.db 0x0a
      003CD2 0D                    2112 	.db 0x0d
      003CD3 20 59 6F 75 72 20 4F  2113 	.ascii " Your Options Are:"
             70 74 69 6F 6E 73 20
             41 72 65 3A
      003CE5 00                    2114 	.db 0x00
                                   2115 	.area CSEG    (CODE)
                           000681  2116 Fmain$__str_13$0_0$0 == .
                                   2117 	.area CONST   (CODE)
      003CE6                       2118 ___str_13:
      003CE6 0A                    2119 	.db 0x0a
      003CE7 0D                    2120 	.db 0x0d
      003CE8 20 31 2E 20 50 72 69  2121 	.ascii " 1. Print the character at the starting."
             6E 74 20 74 68 65 20
             63 68 61 72 61 63 74
             65 72 20 61 74 20 74
             68 65 20 73 74 61 72
             74 69 6E 67 2E
      003D10 00                    2122 	.db 0x00
                                   2123 	.area CSEG    (CODE)
                           000681  2124 Fmain$__str_14$0_0$0 == .
                                   2125 	.area CONST   (CODE)
      003D11                       2126 ___str_14:
      003D11 0A                    2127 	.db 0x0a
      003D12 0D                    2128 	.db 0x0d
      003D13 20 32 2E 20 50 72 69  2129 	.ascii " 2. Print the character at your place of choosing."
             6E 74 20 74 68 65 20
             63 68 61 72 61 63 74
             65 72 20 61 74 20 79
             6F 75 72 20 70 6C 61
             63 65 20 6F 66 20 63
             68 6F 6F 73 69 6E 67
             2E
      003D45 00                    2130 	.db 0x00
                                   2131 	.area CSEG    (CODE)
                           000681  2132 Fmain$__str_15$0_0$0 == .
                                   2133 	.area CONST   (CODE)
      003D46                       2134 ___str_15:
      003D46 0A                    2135 	.db 0x0a
      003D47 0D                    2136 	.db 0x0d
      003D48 20 33 2E 20 52 65 73  2137 	.ascii " 3. Reset The clock."
             65 74 20 54 68 65 20
             63 6C 6F 63 6B 2E
      003D5C 00                    2138 	.db 0x00
                                   2139 	.area CSEG    (CODE)
                           000681  2140 Fmain$__str_16$0_0$0 == .
                                   2141 	.area CONST   (CODE)
      003D5D                       2142 ___str_16:
      003D5D 0A                    2143 	.db 0x0a
      003D5E 0D                    2144 	.db 0x0d
      003D5F 20 34 2E 20 53 74 6F  2145 	.ascii " 4. Stop The clock."
             70 20 54 68 65 20 63
             6C 6F 63 6B 2E
      003D72 00                    2146 	.db 0x00
                                   2147 	.area CSEG    (CODE)
                           000681  2148 Fmain$__str_17$0_0$0 == .
                                   2149 	.area CONST   (CODE)
      003D73                       2150 ___str_17:
      003D73 0A                    2151 	.db 0x0a
      003D74 0D                    2152 	.db 0x0d
      003D75 20 35 2E 20 52 65 73  2153 	.ascii " 5. Restart The clock."
             74 61 72 74 20 54 68
             65 20 63 6C 6F 63 6B
             2E
      003D8B 00                    2154 	.db 0x00
                                   2155 	.area CSEG    (CODE)
                           000681  2156 Fmain$__str_18$0_0$0 == .
                                   2157 	.area CONST   (CODE)
      003D8C                       2158 ___str_18:
      003D8C 0A                    2159 	.db 0x0a
      003D8D 0D                    2160 	.db 0x0d
      003D8E 20 36 2E 20 43 6C 65  2161 	.ascii " 6. Clear the Screen."
             61 72 20 74 68 65 20
             53 63 72 65 65 6E 2E
      003DA3 00                    2162 	.db 0x00
                                   2163 	.area CSEG    (CODE)
                           000681  2164 Fmain$__str_19$0_0$0 == .
                                   2165 	.area CONST   (CODE)
      003DA4                       2166 ___str_19:
      003DA4 0A                    2167 	.db 0x0a
      003DA5 0D                    2168 	.db 0x0d
      003DA6 20 37 2E 20 44 44 52  2169 	.ascii " 7. DDRAM Dump"
             41 4D 20 44 75 6D 70
      003DB4 00                    2170 	.db 0x00
                                   2171 	.area CSEG    (CODE)
                           000681  2172 Fmain$__str_20$0_0$0 == .
                                   2173 	.area CONST   (CODE)
      003DB5                       2174 ___str_20:
      003DB5 0A                    2175 	.db 0x0a
      003DB6 0D                    2176 	.db 0x0d
      003DB7 20 38 2E 20 43 47 37  2177 	.ascii " 8. CG7RAM Dump"
             52 41 4D 20 44 75 6D
             70
      003DC6 00                    2178 	.db 0x00
                                   2179 	.area CSEG    (CODE)
                           000681  2180 Fmain$__str_21$0_0$0 == .
                                   2181 	.area CONST   (CODE)
      003DC7                       2182 ___str_21:
      003DC7 0A                    2183 	.db 0x0a
      003DC8 0D                    2184 	.db 0x0d
      003DC9 20 39 2E 20 48 65 6C  2185 	.ascii " 9. Help Menu"
             70 20 4D 65 6E 75
      003DD6 00                    2186 	.db 0x00
                                   2187 	.area CSEG    (CODE)
                           000681  2188 Fmain$__str_22$0_0$0 == .
                                   2189 	.area CONST   (CODE)
      003DD7                       2190 ___str_22:
      003DD7 0A                    2191 	.db 0x0a
      003DD8 0D                    2192 	.db 0x0d
      003DD9 20 31 30 2E 20 45 78  2193 	.ascii " 10. Exit"
             69 74
      003DE2 00                    2194 	.db 0x00
                                   2195 	.area CSEG    (CODE)
                           000681  2196 Fmain$__str_23$0_0$0 == .
                                   2197 	.area CONST   (CODE)
      003DE3                       2198 ___str_23:
      003DE3 0A                    2199 	.db 0x0a
      003DE4 0D                    2200 	.db 0x0d
      003DE5 20 45 6E 74 65 72 20  2201 	.ascii " Enter your choice:"
             79 6F 75 72 20 63 68
             6F 69 63 65 3A
      003DF8 00                    2202 	.db 0x00
                                   2203 	.area CSEG    (CODE)
                           000681  2204 Fmain$__str_24$0_0$0 == .
                                   2205 	.area CONST   (CODE)
      003DF9                       2206 ___str_24:
      003DF9 25 64                 2207 	.ascii "%d"
      003DFB 00                    2208 	.db 0x00
                                   2209 	.area CSEG    (CODE)
                           000681  2210 Fmain$__str_25$0_0$0 == .
                                   2211 	.area CONST   (CODE)
      003DFC                       2212 ___str_25:
      003DFC 25 63                 2213 	.ascii "%c"
      003DFE 00                    2214 	.db 0x00
                                   2215 	.area CSEG    (CODE)
                           000681  2216 Fmain$__str_26$0_0$0 == .
                                   2217 	.area CONST   (CODE)
      003DFF                       2218 ___str_26:
      003DFF 0A                    2219 	.db 0x0a
      003E00 0D                    2220 	.db 0x0d
      003E01 45 6E 74 65 72 20 74  2221 	.ascii "Enter the character:"
             68 65 20 63 68 61 72
             61 63 74 65 72 3A
      003E15 00                    2222 	.db 0x00
                                   2223 	.area CSEG    (CODE)
                           000681  2224 Fmain$__str_27$0_0$0 == .
                                   2225 	.area CONST   (CODE)
      003E16                       2226 ___str_27:
      003E16 0A                    2227 	.db 0x0a
      003E17 0D                    2228 	.db 0x0d
      003E18 45 6E 74 65 72 20 74  2229 	.ascii "Enter the row:"
             68 65 20 72 6F 77 3A
      003E26 00                    2230 	.db 0x00
                                   2231 	.area CSEG    (CODE)
                           000681  2232 Fmain$__str_28$0_0$0 == .
                                   2233 	.area CONST   (CODE)
      003E27                       2234 ___str_28:
      003E27 0A                    2235 	.db 0x0a
      003E28 0D                    2236 	.db 0x0d
      003E29 20 53 6F 72 72 79 20  2237 	.ascii " Sorry wrong choice, Enter Again."
             77 72 6F 6E 67 20 63
             68 6F 69 63 65 2C 20
             45 6E 74 65 72 20 41
             67 61 69 6E 2E
      003E4A 00                    2238 	.db 0x00
                                   2239 	.area CSEG    (CODE)
                           000681  2240 Fmain$__str_29$0_0$0 == .
                                   2241 	.area CONST   (CODE)
      003E4B                       2242 ___str_29:
      003E4B 0A                    2243 	.db 0x0a
      003E4C 0D                    2244 	.db 0x0d
      003E4D 45 6E 74 65 72 20 74  2245 	.ascii "Enter the column:"
             68 65 20 63 6F 6C 75
             6D 6E 3A
      003E5E 00                    2246 	.db 0x00
                                   2247 	.area CSEG    (CODE)
                           000681  2248 Fmain$__str_30$0_0$0 == .
                                   2249 	.area CONST   (CODE)
      003E5F                       2250 ___str_30:
      003E5F 0A                    2251 	.db 0x0a
      003E60 0D                    2252 	.db 0x0d
      003E61 20 43 6C 6F 63 6B 20  2253 	.ascii " Clock Successfully Reset"
             53 75 63 63 65 73 73
             66 75 6C 6C 79 20 52
             65 73 65 74
      003E7A 00                    2254 	.db 0x00
                                   2255 	.area CSEG    (CODE)
                           000681  2256 Fmain$__str_31$0_0$0 == .
                                   2257 	.area CONST   (CODE)
      003E7B                       2258 ___str_31:
      003E7B 0A                    2259 	.db 0x0a
      003E7C 0D                    2260 	.db 0x0d
      003E7D 20 54 69 6D 65 72 20  2261 	.ascii " Timer Stopped Successfully"
             53 74 6F 70 70 65 64
             20 53 75 63 63 65 73
             73 66 75 6C 6C 79
      003E98 00                    2262 	.db 0x00
                                   2263 	.area CSEG    (CODE)
                           000681  2264 Fmain$__str_32$0_0$0 == .
                                   2265 	.area CONST   (CODE)
      003E99                       2266 ___str_32:
      003E99 0A                    2267 	.db 0x0a
      003E9A 0D                    2268 	.db 0x0d
      003E9B 20 54 69 6D 65 72 20  2269 	.ascii " Timer Started Successfully"
             53 74 61 72 74 65 64
             20 53 75 63 63 65 73
             73 66 75 6C 6C 79
      003EB6 00                    2270 	.db 0x00
                                   2271 	.area CSEG    (CODE)
                           000681  2272 Fmain$__str_33$0_0$0 == .
                                   2273 	.area CONST   (CODE)
      003EB7                       2274 ___str_33:
      003EB7 0A                    2275 	.db 0x0a
      003EB8 0D                    2276 	.db 0x0d
      003EB9 20 4C 43 44 20 43 6C  2277 	.ascii " LCD Cleared Successfully "
             65 61 72 65 64 20 53
             75 63 63 65 73 73 66
             75 6C 6C 79 20
      003ED3 00                    2278 	.db 0x00
                                   2279 	.area CSEG    (CODE)
                           000681  2280 Fmain$__str_34$0_0$0 == .
                                   2281 	.area CONST   (CODE)
      003ED4                       2282 ___str_34:
      003ED4 0A                    2283 	.db 0x0a
      003ED5 0D                    2284 	.db 0x0d
      003ED6 20 54 68 61 6E 6B 20  2285 	.ascii " Thank you and visit again"
             79 6F 75 20 61 6E 64
             20 76 69 73 69 74 20
             61 67 61 69 6E
      003EF0 00                    2286 	.db 0x00
                                   2287 	.area CSEG    (CODE)
                                   2288 	.area XINIT   (CODE)
                           000000  2289 Fmain$__xinit_count$0_0$0 == .
      003F00                       2290 __xinit__count:
      003F00 00 00 00 00 00 00 00  2291 	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
             00
                           000008  2292 Fmain$__xinit_flag$0_0$0 == .
      003F08                       2293 __xinit__flag:
      003F08 00                    2294 	.db #0x00	; 0
                           000009  2295 Fmain$__xinit_milli$0_0$0 == .
      003F09                       2296 __xinit__milli:
      003F09 00                    2297 	.db #0x00	; 0
                           00000A  2298 Fmain$__xinit_seconds$0_0$0 == .
      003F0A                       2299 __xinit__seconds:
      003F0A 00                    2300 	.db #0x00	; 0
                           00000B  2301 Fmain$__xinit_minutes$0_0$0 == .
      003F0B                       2302 __xinit__minutes:
      003F0B 00                    2303 	.db #0x00	; 0
                                   2304 	.area CABS    (ABS,CODE)
