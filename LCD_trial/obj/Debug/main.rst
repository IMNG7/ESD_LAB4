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
                                     16 	.globl _getchar_nonblock
                                     17 	.globl _getchar
                                     18 	.globl _lcd_gotoxy
                                     19 	.globl _LCD_putch
                                     20 	.globl _LCD_Init
                                     21 	.globl _printf_tiny
                                     22 	.globl _P5_7
                                     23 	.globl _P5_6
                                     24 	.globl _P5_5
                                     25 	.globl _P5_4
                                     26 	.globl _P5_3
                                     27 	.globl _P5_2
                                     28 	.globl _P5_1
                                     29 	.globl _P5_0
                                     30 	.globl _P4_7
                                     31 	.globl _P4_6
                                     32 	.globl _P4_5
                                     33 	.globl _P4_4
                                     34 	.globl _P4_3
                                     35 	.globl _P4_2
                                     36 	.globl _P4_1
                                     37 	.globl _P4_0
                                     38 	.globl _PX0L
                                     39 	.globl _PT0L
                                     40 	.globl _PX1L
                                     41 	.globl _PT1L
                                     42 	.globl _PSL
                                     43 	.globl _PT2L
                                     44 	.globl _PPCL
                                     45 	.globl _EC
                                     46 	.globl _CCF0
                                     47 	.globl _CCF1
                                     48 	.globl _CCF2
                                     49 	.globl _CCF3
                                     50 	.globl _CCF4
                                     51 	.globl _CR
                                     52 	.globl _CF
                                     53 	.globl _TF2
                                     54 	.globl _EXF2
                                     55 	.globl _RCLK
                                     56 	.globl _TCLK
                                     57 	.globl _EXEN2
                                     58 	.globl _TR2
                                     59 	.globl _C_T2
                                     60 	.globl _CP_RL2
                                     61 	.globl _T2CON_7
                                     62 	.globl _T2CON_6
                                     63 	.globl _T2CON_5
                                     64 	.globl _T2CON_4
                                     65 	.globl _T2CON_3
                                     66 	.globl _T2CON_2
                                     67 	.globl _T2CON_1
                                     68 	.globl _T2CON_0
                                     69 	.globl _PT2
                                     70 	.globl _ET2
                                     71 	.globl _CY
                                     72 	.globl _AC
                                     73 	.globl _F0
                                     74 	.globl _RS1
                                     75 	.globl _RS0
                                     76 	.globl _OV
                                     77 	.globl _F1
                                     78 	.globl _P
                                     79 	.globl _PS
                                     80 	.globl _PT1
                                     81 	.globl _PX1
                                     82 	.globl _PT0
                                     83 	.globl _PX0
                                     84 	.globl _RD
                                     85 	.globl _WR
                                     86 	.globl _T1
                                     87 	.globl _T0
                                     88 	.globl _INT1
                                     89 	.globl _INT0
                                     90 	.globl _TXD
                                     91 	.globl _RXD
                                     92 	.globl _P3_7
                                     93 	.globl _P3_6
                                     94 	.globl _P3_5
                                     95 	.globl _P3_4
                                     96 	.globl _P3_3
                                     97 	.globl _P3_2
                                     98 	.globl _P3_1
                                     99 	.globl _P3_0
                                    100 	.globl _EA
                                    101 	.globl _ES
                                    102 	.globl _ET1
                                    103 	.globl _EX1
                                    104 	.globl _ET0
                                    105 	.globl _EX0
                                    106 	.globl _P2_7
                                    107 	.globl _P2_6
                                    108 	.globl _P2_5
                                    109 	.globl _P2_4
                                    110 	.globl _P2_3
                                    111 	.globl _P2_2
                                    112 	.globl _P2_1
                                    113 	.globl _P2_0
                                    114 	.globl _SM0
                                    115 	.globl _SM1
                                    116 	.globl _SM2
                                    117 	.globl _REN
                                    118 	.globl _TB8
                                    119 	.globl _RB8
                                    120 	.globl _TI
                                    121 	.globl _RI
                                    122 	.globl _P1_7
                                    123 	.globl _P1_6
                                    124 	.globl _P1_5
                                    125 	.globl _P1_4
                                    126 	.globl _P1_3
                                    127 	.globl _P1_2
                                    128 	.globl _P1_1
                                    129 	.globl _P1_0
                                    130 	.globl _TF1
                                    131 	.globl _TR1
                                    132 	.globl _TF0
                                    133 	.globl _TR0
                                    134 	.globl _IE1
                                    135 	.globl _IT1
                                    136 	.globl _IE0
                                    137 	.globl _IT0
                                    138 	.globl _P0_7
                                    139 	.globl _P0_6
                                    140 	.globl _P0_5
                                    141 	.globl _P0_4
                                    142 	.globl _P0_3
                                    143 	.globl _P0_2
                                    144 	.globl _P0_1
                                    145 	.globl _P0_0
                                    146 	.globl _EECON
                                    147 	.globl _KBF
                                    148 	.globl _KBE
                                    149 	.globl _KBLS
                                    150 	.globl _BRL
                                    151 	.globl _BDRCON
                                    152 	.globl _T2MOD
                                    153 	.globl _SPDAT
                                    154 	.globl _SPSTA
                                    155 	.globl _SPCON
                                    156 	.globl _SADEN
                                    157 	.globl _SADDR
                                    158 	.globl _WDTPRG
                                    159 	.globl _WDTRST
                                    160 	.globl _P5
                                    161 	.globl _P4
                                    162 	.globl _IPH1
                                    163 	.globl _IPL1
                                    164 	.globl _IPH0
                                    165 	.globl _IPL0
                                    166 	.globl _IEN1
                                    167 	.globl _IEN0
                                    168 	.globl _CMOD
                                    169 	.globl _CL
                                    170 	.globl _CH
                                    171 	.globl _CCON
                                    172 	.globl _CCAPM4
                                    173 	.globl _CCAPM3
                                    174 	.globl _CCAPM2
                                    175 	.globl _CCAPM1
                                    176 	.globl _CCAPM0
                                    177 	.globl _CCAP4L
                                    178 	.globl _CCAP3L
                                    179 	.globl _CCAP2L
                                    180 	.globl _CCAP1L
                                    181 	.globl _CCAP0L
                                    182 	.globl _CCAP4H
                                    183 	.globl _CCAP3H
                                    184 	.globl _CCAP2H
                                    185 	.globl _CCAP1H
                                    186 	.globl _CCAP0H
                                    187 	.globl _CKCON1
                                    188 	.globl _CKCON0
                                    189 	.globl _CKRL
                                    190 	.globl _AUXR1
                                    191 	.globl _AUXR
                                    192 	.globl _TH2
                                    193 	.globl _TL2
                                    194 	.globl _RCAP2H
                                    195 	.globl _RCAP2L
                                    196 	.globl _T2CON
                                    197 	.globl _B
                                    198 	.globl _ACC
                                    199 	.globl _PSW
                                    200 	.globl _IP
                                    201 	.globl _P3
                                    202 	.globl _IE
                                    203 	.globl _P2
                                    204 	.globl _SBUF
                                    205 	.globl _SCON
                                    206 	.globl _P1
                                    207 	.globl _TH1
                                    208 	.globl _TH0
                                    209 	.globl _TL1
                                    210 	.globl _TL0
                                    211 	.globl _TMOD
                                    212 	.globl _TCON
                                    213 	.globl _PCON
                                    214 	.globl _DPH
                                    215 	.globl _DPL
                                    216 	.globl _SP
                                    217 	.globl _P0
                                    218 	.globl _minutes
                                    219 	.globl _seconds
                                    220 	.globl _milli
                                    221 	.globl _flag
                                    222 	.globl _count
                                    223 	.globl _DR_READ
                                    224 	.globl _DR_WRITE
                                    225 	.globl _BF_Read
                                    226 	.globl _IR_Write
                                    227 	.globl _hours
                                    228 	.globl _time_show
                                    229 ;--------------------------------------------------------
                                    230 ; special function registers
                                    231 ;--------------------------------------------------------
                                    232 	.area RSEG    (ABS,DATA)
      000000                        233 	.org 0x0000
                           000080   234 G$P0$0_0$0 == 0x0080
                           000080   235 _P0	=	0x0080
                           000081   236 G$SP$0_0$0 == 0x0081
                           000081   237 _SP	=	0x0081
                           000082   238 G$DPL$0_0$0 == 0x0082
                           000082   239 _DPL	=	0x0082
                           000083   240 G$DPH$0_0$0 == 0x0083
                           000083   241 _DPH	=	0x0083
                           000087   242 G$PCON$0_0$0 == 0x0087
                           000087   243 _PCON	=	0x0087
                           000088   244 G$TCON$0_0$0 == 0x0088
                           000088   245 _TCON	=	0x0088
                           000089   246 G$TMOD$0_0$0 == 0x0089
                           000089   247 _TMOD	=	0x0089
                           00008A   248 G$TL0$0_0$0 == 0x008a
                           00008A   249 _TL0	=	0x008a
                           00008B   250 G$TL1$0_0$0 == 0x008b
                           00008B   251 _TL1	=	0x008b
                           00008C   252 G$TH0$0_0$0 == 0x008c
                           00008C   253 _TH0	=	0x008c
                           00008D   254 G$TH1$0_0$0 == 0x008d
                           00008D   255 _TH1	=	0x008d
                           000090   256 G$P1$0_0$0 == 0x0090
                           000090   257 _P1	=	0x0090
                           000098   258 G$SCON$0_0$0 == 0x0098
                           000098   259 _SCON	=	0x0098
                           000099   260 G$SBUF$0_0$0 == 0x0099
                           000099   261 _SBUF	=	0x0099
                           0000A0   262 G$P2$0_0$0 == 0x00a0
                           0000A0   263 _P2	=	0x00a0
                           0000A8   264 G$IE$0_0$0 == 0x00a8
                           0000A8   265 _IE	=	0x00a8
                           0000B0   266 G$P3$0_0$0 == 0x00b0
                           0000B0   267 _P3	=	0x00b0
                           0000B8   268 G$IP$0_0$0 == 0x00b8
                           0000B8   269 _IP	=	0x00b8
                           0000D0   270 G$PSW$0_0$0 == 0x00d0
                           0000D0   271 _PSW	=	0x00d0
                           0000E0   272 G$ACC$0_0$0 == 0x00e0
                           0000E0   273 _ACC	=	0x00e0
                           0000F0   274 G$B$0_0$0 == 0x00f0
                           0000F0   275 _B	=	0x00f0
                           0000C8   276 G$T2CON$0_0$0 == 0x00c8
                           0000C8   277 _T2CON	=	0x00c8
                           0000CA   278 G$RCAP2L$0_0$0 == 0x00ca
                           0000CA   279 _RCAP2L	=	0x00ca
                           0000CB   280 G$RCAP2H$0_0$0 == 0x00cb
                           0000CB   281 _RCAP2H	=	0x00cb
                           0000CC   282 G$TL2$0_0$0 == 0x00cc
                           0000CC   283 _TL2	=	0x00cc
                           0000CD   284 G$TH2$0_0$0 == 0x00cd
                           0000CD   285 _TH2	=	0x00cd
                           00008E   286 G$AUXR$0_0$0 == 0x008e
                           00008E   287 _AUXR	=	0x008e
                           0000A2   288 G$AUXR1$0_0$0 == 0x00a2
                           0000A2   289 _AUXR1	=	0x00a2
                           000097   290 G$CKRL$0_0$0 == 0x0097
                           000097   291 _CKRL	=	0x0097
                           00008F   292 G$CKCON0$0_0$0 == 0x008f
                           00008F   293 _CKCON0	=	0x008f
                           0000AF   294 G$CKCON1$0_0$0 == 0x00af
                           0000AF   295 _CKCON1	=	0x00af
                           0000FA   296 G$CCAP0H$0_0$0 == 0x00fa
                           0000FA   297 _CCAP0H	=	0x00fa
                           0000FB   298 G$CCAP1H$0_0$0 == 0x00fb
                           0000FB   299 _CCAP1H	=	0x00fb
                           0000FC   300 G$CCAP2H$0_0$0 == 0x00fc
                           0000FC   301 _CCAP2H	=	0x00fc
                           0000FD   302 G$CCAP3H$0_0$0 == 0x00fd
                           0000FD   303 _CCAP3H	=	0x00fd
                           0000FE   304 G$CCAP4H$0_0$0 == 0x00fe
                           0000FE   305 _CCAP4H	=	0x00fe
                           0000EA   306 G$CCAP0L$0_0$0 == 0x00ea
                           0000EA   307 _CCAP0L	=	0x00ea
                           0000EB   308 G$CCAP1L$0_0$0 == 0x00eb
                           0000EB   309 _CCAP1L	=	0x00eb
                           0000EC   310 G$CCAP2L$0_0$0 == 0x00ec
                           0000EC   311 _CCAP2L	=	0x00ec
                           0000ED   312 G$CCAP3L$0_0$0 == 0x00ed
                           0000ED   313 _CCAP3L	=	0x00ed
                           0000EE   314 G$CCAP4L$0_0$0 == 0x00ee
                           0000EE   315 _CCAP4L	=	0x00ee
                           0000DA   316 G$CCAPM0$0_0$0 == 0x00da
                           0000DA   317 _CCAPM0	=	0x00da
                           0000DB   318 G$CCAPM1$0_0$0 == 0x00db
                           0000DB   319 _CCAPM1	=	0x00db
                           0000DC   320 G$CCAPM2$0_0$0 == 0x00dc
                           0000DC   321 _CCAPM2	=	0x00dc
                           0000DD   322 G$CCAPM3$0_0$0 == 0x00dd
                           0000DD   323 _CCAPM3	=	0x00dd
                           0000DE   324 G$CCAPM4$0_0$0 == 0x00de
                           0000DE   325 _CCAPM4	=	0x00de
                           0000D8   326 G$CCON$0_0$0 == 0x00d8
                           0000D8   327 _CCON	=	0x00d8
                           0000F9   328 G$CH$0_0$0 == 0x00f9
                           0000F9   329 _CH	=	0x00f9
                           0000E9   330 G$CL$0_0$0 == 0x00e9
                           0000E9   331 _CL	=	0x00e9
                           0000D9   332 G$CMOD$0_0$0 == 0x00d9
                           0000D9   333 _CMOD	=	0x00d9
                           0000A8   334 G$IEN0$0_0$0 == 0x00a8
                           0000A8   335 _IEN0	=	0x00a8
                           0000B1   336 G$IEN1$0_0$0 == 0x00b1
                           0000B1   337 _IEN1	=	0x00b1
                           0000B8   338 G$IPL0$0_0$0 == 0x00b8
                           0000B8   339 _IPL0	=	0x00b8
                           0000B7   340 G$IPH0$0_0$0 == 0x00b7
                           0000B7   341 _IPH0	=	0x00b7
                           0000B2   342 G$IPL1$0_0$0 == 0x00b2
                           0000B2   343 _IPL1	=	0x00b2
                           0000B3   344 G$IPH1$0_0$0 == 0x00b3
                           0000B3   345 _IPH1	=	0x00b3
                           0000C0   346 G$P4$0_0$0 == 0x00c0
                           0000C0   347 _P4	=	0x00c0
                           0000E8   348 G$P5$0_0$0 == 0x00e8
                           0000E8   349 _P5	=	0x00e8
                           0000A6   350 G$WDTRST$0_0$0 == 0x00a6
                           0000A6   351 _WDTRST	=	0x00a6
                           0000A7   352 G$WDTPRG$0_0$0 == 0x00a7
                           0000A7   353 _WDTPRG	=	0x00a7
                           0000A9   354 G$SADDR$0_0$0 == 0x00a9
                           0000A9   355 _SADDR	=	0x00a9
                           0000B9   356 G$SADEN$0_0$0 == 0x00b9
                           0000B9   357 _SADEN	=	0x00b9
                           0000C3   358 G$SPCON$0_0$0 == 0x00c3
                           0000C3   359 _SPCON	=	0x00c3
                           0000C4   360 G$SPSTA$0_0$0 == 0x00c4
                           0000C4   361 _SPSTA	=	0x00c4
                           0000C5   362 G$SPDAT$0_0$0 == 0x00c5
                           0000C5   363 _SPDAT	=	0x00c5
                           0000C9   364 G$T2MOD$0_0$0 == 0x00c9
                           0000C9   365 _T2MOD	=	0x00c9
                           00009B   366 G$BDRCON$0_0$0 == 0x009b
                           00009B   367 _BDRCON	=	0x009b
                           00009A   368 G$BRL$0_0$0 == 0x009a
                           00009A   369 _BRL	=	0x009a
                           00009C   370 G$KBLS$0_0$0 == 0x009c
                           00009C   371 _KBLS	=	0x009c
                           00009D   372 G$KBE$0_0$0 == 0x009d
                           00009D   373 _KBE	=	0x009d
                           00009E   374 G$KBF$0_0$0 == 0x009e
                           00009E   375 _KBF	=	0x009e
                           0000D2   376 G$EECON$0_0$0 == 0x00d2
                           0000D2   377 _EECON	=	0x00d2
                                    378 ;--------------------------------------------------------
                                    379 ; special function bits
                                    380 ;--------------------------------------------------------
                                    381 	.area RSEG    (ABS,DATA)
      000000                        382 	.org 0x0000
                           000080   383 G$P0_0$0_0$0 == 0x0080
                           000080   384 _P0_0	=	0x0080
                           000081   385 G$P0_1$0_0$0 == 0x0081
                           000081   386 _P0_1	=	0x0081
                           000082   387 G$P0_2$0_0$0 == 0x0082
                           000082   388 _P0_2	=	0x0082
                           000083   389 G$P0_3$0_0$0 == 0x0083
                           000083   390 _P0_3	=	0x0083
                           000084   391 G$P0_4$0_0$0 == 0x0084
                           000084   392 _P0_4	=	0x0084
                           000085   393 G$P0_5$0_0$0 == 0x0085
                           000085   394 _P0_5	=	0x0085
                           000086   395 G$P0_6$0_0$0 == 0x0086
                           000086   396 _P0_6	=	0x0086
                           000087   397 G$P0_7$0_0$0 == 0x0087
                           000087   398 _P0_7	=	0x0087
                           000088   399 G$IT0$0_0$0 == 0x0088
                           000088   400 _IT0	=	0x0088
                           000089   401 G$IE0$0_0$0 == 0x0089
                           000089   402 _IE0	=	0x0089
                           00008A   403 G$IT1$0_0$0 == 0x008a
                           00008A   404 _IT1	=	0x008a
                           00008B   405 G$IE1$0_0$0 == 0x008b
                           00008B   406 _IE1	=	0x008b
                           00008C   407 G$TR0$0_0$0 == 0x008c
                           00008C   408 _TR0	=	0x008c
                           00008D   409 G$TF0$0_0$0 == 0x008d
                           00008D   410 _TF0	=	0x008d
                           00008E   411 G$TR1$0_0$0 == 0x008e
                           00008E   412 _TR1	=	0x008e
                           00008F   413 G$TF1$0_0$0 == 0x008f
                           00008F   414 _TF1	=	0x008f
                           000090   415 G$P1_0$0_0$0 == 0x0090
                           000090   416 _P1_0	=	0x0090
                           000091   417 G$P1_1$0_0$0 == 0x0091
                           000091   418 _P1_1	=	0x0091
                           000092   419 G$P1_2$0_0$0 == 0x0092
                           000092   420 _P1_2	=	0x0092
                           000093   421 G$P1_3$0_0$0 == 0x0093
                           000093   422 _P1_3	=	0x0093
                           000094   423 G$P1_4$0_0$0 == 0x0094
                           000094   424 _P1_4	=	0x0094
                           000095   425 G$P1_5$0_0$0 == 0x0095
                           000095   426 _P1_5	=	0x0095
                           000096   427 G$P1_6$0_0$0 == 0x0096
                           000096   428 _P1_6	=	0x0096
                           000097   429 G$P1_7$0_0$0 == 0x0097
                           000097   430 _P1_7	=	0x0097
                           000098   431 G$RI$0_0$0 == 0x0098
                           000098   432 _RI	=	0x0098
                           000099   433 G$TI$0_0$0 == 0x0099
                           000099   434 _TI	=	0x0099
                           00009A   435 G$RB8$0_0$0 == 0x009a
                           00009A   436 _RB8	=	0x009a
                           00009B   437 G$TB8$0_0$0 == 0x009b
                           00009B   438 _TB8	=	0x009b
                           00009C   439 G$REN$0_0$0 == 0x009c
                           00009C   440 _REN	=	0x009c
                           00009D   441 G$SM2$0_0$0 == 0x009d
                           00009D   442 _SM2	=	0x009d
                           00009E   443 G$SM1$0_0$0 == 0x009e
                           00009E   444 _SM1	=	0x009e
                           00009F   445 G$SM0$0_0$0 == 0x009f
                           00009F   446 _SM0	=	0x009f
                           0000A0   447 G$P2_0$0_0$0 == 0x00a0
                           0000A0   448 _P2_0	=	0x00a0
                           0000A1   449 G$P2_1$0_0$0 == 0x00a1
                           0000A1   450 _P2_1	=	0x00a1
                           0000A2   451 G$P2_2$0_0$0 == 0x00a2
                           0000A2   452 _P2_2	=	0x00a2
                           0000A3   453 G$P2_3$0_0$0 == 0x00a3
                           0000A3   454 _P2_3	=	0x00a3
                           0000A4   455 G$P2_4$0_0$0 == 0x00a4
                           0000A4   456 _P2_4	=	0x00a4
                           0000A5   457 G$P2_5$0_0$0 == 0x00a5
                           0000A5   458 _P2_5	=	0x00a5
                           0000A6   459 G$P2_6$0_0$0 == 0x00a6
                           0000A6   460 _P2_6	=	0x00a6
                           0000A7   461 G$P2_7$0_0$0 == 0x00a7
                           0000A7   462 _P2_7	=	0x00a7
                           0000A8   463 G$EX0$0_0$0 == 0x00a8
                           0000A8   464 _EX0	=	0x00a8
                           0000A9   465 G$ET0$0_0$0 == 0x00a9
                           0000A9   466 _ET0	=	0x00a9
                           0000AA   467 G$EX1$0_0$0 == 0x00aa
                           0000AA   468 _EX1	=	0x00aa
                           0000AB   469 G$ET1$0_0$0 == 0x00ab
                           0000AB   470 _ET1	=	0x00ab
                           0000AC   471 G$ES$0_0$0 == 0x00ac
                           0000AC   472 _ES	=	0x00ac
                           0000AF   473 G$EA$0_0$0 == 0x00af
                           0000AF   474 _EA	=	0x00af
                           0000B0   475 G$P3_0$0_0$0 == 0x00b0
                           0000B0   476 _P3_0	=	0x00b0
                           0000B1   477 G$P3_1$0_0$0 == 0x00b1
                           0000B1   478 _P3_1	=	0x00b1
                           0000B2   479 G$P3_2$0_0$0 == 0x00b2
                           0000B2   480 _P3_2	=	0x00b2
                           0000B3   481 G$P3_3$0_0$0 == 0x00b3
                           0000B3   482 _P3_3	=	0x00b3
                           0000B4   483 G$P3_4$0_0$0 == 0x00b4
                           0000B4   484 _P3_4	=	0x00b4
                           0000B5   485 G$P3_5$0_0$0 == 0x00b5
                           0000B5   486 _P3_5	=	0x00b5
                           0000B6   487 G$P3_6$0_0$0 == 0x00b6
                           0000B6   488 _P3_6	=	0x00b6
                           0000B7   489 G$P3_7$0_0$0 == 0x00b7
                           0000B7   490 _P3_7	=	0x00b7
                           0000B0   491 G$RXD$0_0$0 == 0x00b0
                           0000B0   492 _RXD	=	0x00b0
                           0000B1   493 G$TXD$0_0$0 == 0x00b1
                           0000B1   494 _TXD	=	0x00b1
                           0000B2   495 G$INT0$0_0$0 == 0x00b2
                           0000B2   496 _INT0	=	0x00b2
                           0000B3   497 G$INT1$0_0$0 == 0x00b3
                           0000B3   498 _INT1	=	0x00b3
                           0000B4   499 G$T0$0_0$0 == 0x00b4
                           0000B4   500 _T0	=	0x00b4
                           0000B5   501 G$T1$0_0$0 == 0x00b5
                           0000B5   502 _T1	=	0x00b5
                           0000B6   503 G$WR$0_0$0 == 0x00b6
                           0000B6   504 _WR	=	0x00b6
                           0000B7   505 G$RD$0_0$0 == 0x00b7
                           0000B7   506 _RD	=	0x00b7
                           0000B8   507 G$PX0$0_0$0 == 0x00b8
                           0000B8   508 _PX0	=	0x00b8
                           0000B9   509 G$PT0$0_0$0 == 0x00b9
                           0000B9   510 _PT0	=	0x00b9
                           0000BA   511 G$PX1$0_0$0 == 0x00ba
                           0000BA   512 _PX1	=	0x00ba
                           0000BB   513 G$PT1$0_0$0 == 0x00bb
                           0000BB   514 _PT1	=	0x00bb
                           0000BC   515 G$PS$0_0$0 == 0x00bc
                           0000BC   516 _PS	=	0x00bc
                           0000D0   517 G$P$0_0$0 == 0x00d0
                           0000D0   518 _P	=	0x00d0
                           0000D1   519 G$F1$0_0$0 == 0x00d1
                           0000D1   520 _F1	=	0x00d1
                           0000D2   521 G$OV$0_0$0 == 0x00d2
                           0000D2   522 _OV	=	0x00d2
                           0000D3   523 G$RS0$0_0$0 == 0x00d3
                           0000D3   524 _RS0	=	0x00d3
                           0000D4   525 G$RS1$0_0$0 == 0x00d4
                           0000D4   526 _RS1	=	0x00d4
                           0000D5   527 G$F0$0_0$0 == 0x00d5
                           0000D5   528 _F0	=	0x00d5
                           0000D6   529 G$AC$0_0$0 == 0x00d6
                           0000D6   530 _AC	=	0x00d6
                           0000D7   531 G$CY$0_0$0 == 0x00d7
                           0000D7   532 _CY	=	0x00d7
                           0000AD   533 G$ET2$0_0$0 == 0x00ad
                           0000AD   534 _ET2	=	0x00ad
                           0000BD   535 G$PT2$0_0$0 == 0x00bd
                           0000BD   536 _PT2	=	0x00bd
                           0000C8   537 G$T2CON_0$0_0$0 == 0x00c8
                           0000C8   538 _T2CON_0	=	0x00c8
                           0000C9   539 G$T2CON_1$0_0$0 == 0x00c9
                           0000C9   540 _T2CON_1	=	0x00c9
                           0000CA   541 G$T2CON_2$0_0$0 == 0x00ca
                           0000CA   542 _T2CON_2	=	0x00ca
                           0000CB   543 G$T2CON_3$0_0$0 == 0x00cb
                           0000CB   544 _T2CON_3	=	0x00cb
                           0000CC   545 G$T2CON_4$0_0$0 == 0x00cc
                           0000CC   546 _T2CON_4	=	0x00cc
                           0000CD   547 G$T2CON_5$0_0$0 == 0x00cd
                           0000CD   548 _T2CON_5	=	0x00cd
                           0000CE   549 G$T2CON_6$0_0$0 == 0x00ce
                           0000CE   550 _T2CON_6	=	0x00ce
                           0000CF   551 G$T2CON_7$0_0$0 == 0x00cf
                           0000CF   552 _T2CON_7	=	0x00cf
                           0000C8   553 G$CP_RL2$0_0$0 == 0x00c8
                           0000C8   554 _CP_RL2	=	0x00c8
                           0000C9   555 G$C_T2$0_0$0 == 0x00c9
                           0000C9   556 _C_T2	=	0x00c9
                           0000CA   557 G$TR2$0_0$0 == 0x00ca
                           0000CA   558 _TR2	=	0x00ca
                           0000CB   559 G$EXEN2$0_0$0 == 0x00cb
                           0000CB   560 _EXEN2	=	0x00cb
                           0000CC   561 G$TCLK$0_0$0 == 0x00cc
                           0000CC   562 _TCLK	=	0x00cc
                           0000CD   563 G$RCLK$0_0$0 == 0x00cd
                           0000CD   564 _RCLK	=	0x00cd
                           0000CE   565 G$EXF2$0_0$0 == 0x00ce
                           0000CE   566 _EXF2	=	0x00ce
                           0000CF   567 G$TF2$0_0$0 == 0x00cf
                           0000CF   568 _TF2	=	0x00cf
                           0000DF   569 G$CF$0_0$0 == 0x00df
                           0000DF   570 _CF	=	0x00df
                           0000DE   571 G$CR$0_0$0 == 0x00de
                           0000DE   572 _CR	=	0x00de
                           0000DC   573 G$CCF4$0_0$0 == 0x00dc
                           0000DC   574 _CCF4	=	0x00dc
                           0000DB   575 G$CCF3$0_0$0 == 0x00db
                           0000DB   576 _CCF3	=	0x00db
                           0000DA   577 G$CCF2$0_0$0 == 0x00da
                           0000DA   578 _CCF2	=	0x00da
                           0000D9   579 G$CCF1$0_0$0 == 0x00d9
                           0000D9   580 _CCF1	=	0x00d9
                           0000D8   581 G$CCF0$0_0$0 == 0x00d8
                           0000D8   582 _CCF0	=	0x00d8
                           0000AE   583 G$EC$0_0$0 == 0x00ae
                           0000AE   584 _EC	=	0x00ae
                           0000BE   585 G$PPCL$0_0$0 == 0x00be
                           0000BE   586 _PPCL	=	0x00be
                           0000BD   587 G$PT2L$0_0$0 == 0x00bd
                           0000BD   588 _PT2L	=	0x00bd
                           0000BC   589 G$PSL$0_0$0 == 0x00bc
                           0000BC   590 _PSL	=	0x00bc
                           0000BB   591 G$PT1L$0_0$0 == 0x00bb
                           0000BB   592 _PT1L	=	0x00bb
                           0000BA   593 G$PX1L$0_0$0 == 0x00ba
                           0000BA   594 _PX1L	=	0x00ba
                           0000B9   595 G$PT0L$0_0$0 == 0x00b9
                           0000B9   596 _PT0L	=	0x00b9
                           0000B8   597 G$PX0L$0_0$0 == 0x00b8
                           0000B8   598 _PX0L	=	0x00b8
                           0000C0   599 G$P4_0$0_0$0 == 0x00c0
                           0000C0   600 _P4_0	=	0x00c0
                           0000C1   601 G$P4_1$0_0$0 == 0x00c1
                           0000C1   602 _P4_1	=	0x00c1
                           0000C2   603 G$P4_2$0_0$0 == 0x00c2
                           0000C2   604 _P4_2	=	0x00c2
                           0000C3   605 G$P4_3$0_0$0 == 0x00c3
                           0000C3   606 _P4_3	=	0x00c3
                           0000C4   607 G$P4_4$0_0$0 == 0x00c4
                           0000C4   608 _P4_4	=	0x00c4
                           0000C5   609 G$P4_5$0_0$0 == 0x00c5
                           0000C5   610 _P4_5	=	0x00c5
                           0000C6   611 G$P4_6$0_0$0 == 0x00c6
                           0000C6   612 _P4_6	=	0x00c6
                           0000C7   613 G$P4_7$0_0$0 == 0x00c7
                           0000C7   614 _P4_7	=	0x00c7
                           0000E8   615 G$P5_0$0_0$0 == 0x00e8
                           0000E8   616 _P5_0	=	0x00e8
                           0000E9   617 G$P5_1$0_0$0 == 0x00e9
                           0000E9   618 _P5_1	=	0x00e9
                           0000EA   619 G$P5_2$0_0$0 == 0x00ea
                           0000EA   620 _P5_2	=	0x00ea
                           0000EB   621 G$P5_3$0_0$0 == 0x00eb
                           0000EB   622 _P5_3	=	0x00eb
                           0000EC   623 G$P5_4$0_0$0 == 0x00ec
                           0000EC   624 _P5_4	=	0x00ec
                           0000ED   625 G$P5_5$0_0$0 == 0x00ed
                           0000ED   626 _P5_5	=	0x00ed
                           0000EE   627 G$P5_6$0_0$0 == 0x00ee
                           0000EE   628 _P5_6	=	0x00ee
                           0000EF   629 G$P5_7$0_0$0 == 0x00ef
                           0000EF   630 _P5_7	=	0x00ef
                                    631 ;--------------------------------------------------------
                                    632 ; overlayable register banks
                                    633 ;--------------------------------------------------------
                                    634 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        635 	.ds 8
                                    636 ;--------------------------------------------------------
                                    637 ; internal ram data
                                    638 ;--------------------------------------------------------
                                    639 	.area DSEG    (DATA)
                                    640 ;--------------------------------------------------------
                                    641 ; overlayable items in internal ram 
                                    642 ;--------------------------------------------------------
                                    643 ;--------------------------------------------------------
                                    644 ; Stack segment in internal ram 
                                    645 ;--------------------------------------------------------
                                    646 	.area	SSEG
      000009                        647 __start__stack:
      000009                        648 	.ds	1
                                    649 
                                    650 ;--------------------------------------------------------
                                    651 ; indirectly addressable internal ram data
                                    652 ;--------------------------------------------------------
                                    653 	.area ISEG    (DATA)
                                    654 ;--------------------------------------------------------
                                    655 ; absolute internal ram data
                                    656 ;--------------------------------------------------------
                                    657 	.area IABS    (ABS,DATA)
                                    658 	.area IABS    (ABS,DATA)
                                    659 ;--------------------------------------------------------
                                    660 ; bit data
                                    661 ;--------------------------------------------------------
                                    662 	.area BSEG    (BIT)
                                    663 ;--------------------------------------------------------
                                    664 ; paged external ram data
                                    665 ;--------------------------------------------------------
                                    666 	.area PSEG    (PAG,XDATA)
                                    667 ;--------------------------------------------------------
                                    668 ; external ram data
                                    669 ;--------------------------------------------------------
                                    670 	.area XSEG    (XDATA)
                           000000   671 G$hours$0_0$0==.
      000412                        672 _hours::
      000412                        673 	.ds 1
                           00F000   674 G$IR_Write$0_0$0 == 0xf000
                           00F000   675 _IR_Write	=	0xf000
                           00F200   676 G$BF_Read$0_0$0 == 0xf200
                           00F200   677 _BF_Read	=	0xf200
                           00F100   678 G$DR_WRITE$0_0$0 == 0xf100
                           00F100   679 _DR_WRITE	=	0xf100
                           00F300   680 G$DR_READ$0_0$0 == 0xf300
                           00F300   681 _DR_READ	=	0xf300
                           000001   682 Lmain.main$a$1_0$34==.
      000413                        683 _main_a_65536_34:
      000413                        684 	.ds 24
                           000019   685 Lmain.main$b$1_0$34==.
      00042B                        686 _main_b_65536_34:
      00042B                        687 	.ds 6
                           00001F   688 Lmain.main$choice$1_1$35==.
      000431                        689 _main_choice_65537_35:
      000431                        690 	.ds 1
                           000020   691 Lmain.main$row_value$1_1$35==.
      000432                        692 _main_row_value_65537_35:
      000432                        693 	.ds 1
                           000021   694 Lmain.main$column1$1_1$35==.
      000433                        695 _main_column1_65537_35:
      000433                        696 	.ds 1
                           000022   697 Lmain.main$column2$1_1$35==.
      000434                        698 _main_column2_65537_35:
      000434                        699 	.ds 1
                           000023   700 Lmain.main$column_value$1_1$35==.
      000435                        701 _main_column_value_65537_35:
      000435                        702 	.ds 1
                                    703 ;--------------------------------------------------------
                                    704 ; absolute external ram data
                                    705 ;--------------------------------------------------------
                                    706 	.area XABS    (ABS,XDATA)
                                    707 ;--------------------------------------------------------
                                    708 ; external initialized ram data
                                    709 ;--------------------------------------------------------
                                    710 	.area XISEG   (XDATA)
                           000000   711 G$count$0_0$0==.
      000454                        712 _count::
      000454                        713 	.ds 8
                           000008   714 G$flag$0_0$0==.
      00045C                        715 _flag::
      00045C                        716 	.ds 1
                           000009   717 G$milli$0_0$0==.
      00045D                        718 _milli::
      00045D                        719 	.ds 1
                           00000A   720 G$seconds$0_0$0==.
      00045E                        721 _seconds::
      00045E                        722 	.ds 1
                           00000B   723 G$minutes$0_0$0==.
      00045F                        724 _minutes::
      00045F                        725 	.ds 1
                                    726 	.area HOME    (CODE)
                                    727 	.area GSINIT0 (CODE)
                                    728 	.area GSINIT1 (CODE)
                                    729 	.area GSINIT2 (CODE)
                                    730 	.area GSINIT3 (CODE)
                                    731 	.area GSINIT4 (CODE)
                                    732 	.area GSINIT5 (CODE)
                                    733 	.area GSINIT  (CODE)
                                    734 	.area GSFINAL (CODE)
                                    735 	.area CSEG    (CODE)
                                    736 ;--------------------------------------------------------
                                    737 ; interrupt vector 
                                    738 ;--------------------------------------------------------
                                    739 	.area HOME    (CODE)
      002200                        740 __interrupt_vect:
      002200 02 22 11         [24]  741 	ljmp	__sdcc_gsinit_startup
      002203 32               [24]  742 	reti
      002204                        743 	.ds	7
      00220B 02 24 D4         [24]  744 	ljmp	_timer0_ISR
                                    745 ;--------------------------------------------------------
                                    746 ; global & static initialisations
                                    747 ;--------------------------------------------------------
                                    748 	.area HOME    (CODE)
                                    749 	.area GSINIT  (CODE)
                                    750 	.area GSFINAL (CODE)
                                    751 	.area GSINIT  (CODE)
                                    752 	.globl __sdcc_gsinit_startup
                                    753 	.globl __sdcc_program_startup
                                    754 	.globl __start__stack
                                    755 	.globl __mcs51_genXINIT
                                    756 	.globl __mcs51_genXRAMCLEAR
                                    757 	.globl __mcs51_genRAMCLEAR
                                    758 	.area GSFINAL (CODE)
      00226A 02 22 0E         [24]  759 	ljmp	__sdcc_program_startup
                                    760 ;--------------------------------------------------------
                                    761 ; Home
                                    762 ;--------------------------------------------------------
                                    763 	.area HOME    (CODE)
                                    764 	.area HOME    (CODE)
      00220E                        765 __sdcc_program_startup:
      00220E 02 26 B2         [24]  766 	ljmp	_main
                                    767 ;	return from main will return to caller
                                    768 ;--------------------------------------------------------
                                    769 ; code
                                    770 ;--------------------------------------------------------
                                    771 	.area CSEG    (CODE)
                                    772 ;------------------------------------------------------------
                                    773 ;Allocation info for local variables in function 'timer0_ISR'
                                    774 ;------------------------------------------------------------
                           000000   775 	G$timer0_ISR$0$0 ==.
                           000000   776 	C$main.c$24$0_0$25 ==.
                                    777 ;	main.c:24: void timer0_ISR() __interrupt(1)
                                    778 ;	-----------------------------------------
                                    779 ;	 function timer0_ISR
                                    780 ;	-----------------------------------------
      0024D4                        781 _timer0_ISR:
                           000007   782 	ar7 = 0x07
                           000006   783 	ar6 = 0x06
                           000005   784 	ar5 = 0x05
                           000004   785 	ar4 = 0x04
                           000003   786 	ar3 = 0x03
                           000002   787 	ar2 = 0x02
                           000001   788 	ar1 = 0x01
                           000000   789 	ar0 = 0x00
      0024D4 C0 E0            [24]  790 	push	acc
      0024D6 C0 82            [24]  791 	push	dpl
      0024D8 C0 83            [24]  792 	push	dph
      0024DA C0 07            [24]  793 	push	ar7
      0024DC C0 06            [24]  794 	push	ar6
      0024DE C0 05            [24]  795 	push	ar5
      0024E0 C0 04            [24]  796 	push	ar4
      0024E2 C0 03            [24]  797 	push	ar3
      0024E4 C0 02            [24]  798 	push	ar2
      0024E6 C0 01            [24]  799 	push	ar1
      0024E8 C0 00            [24]  800 	push	ar0
      0024EA C0 D0            [24]  801 	push	psw
      0024EC 75 D0 00         [24]  802 	mov	psw,#0x00
                           00001B   803 	C$main.c$25$1_0$25 ==.
                                    804 ;	main.c:25: {   EA=0;
                                    805 ;	assignBit
      0024EF C2 AF            [12]  806 	clr	_EA
                           00001D   807 	C$main.c$26$1_0$25 ==.
                                    808 ;	main.c:26: TR0=0;
                                    809 ;	assignBit
      0024F1 C2 8C            [12]  810 	clr	_TR0
                           00001F   811 	C$main.c$27$1_0$25 ==.
                                    812 ;	main.c:27: TF0=0;
                                    813 ;	assignBit
      0024F3 C2 8D            [12]  814 	clr	_TF0
                           000021   815 	C$main.c$28$1_0$25 ==.
                                    816 ;	main.c:28: TH0=0x4B;
      0024F5 75 8C 4B         [24]  817 	mov	_TH0,#0x4b
                           000024   818 	C$main.c$29$1_0$25 ==.
                                    819 ;	main.c:29: TL0=0xFC;
      0024F8 75 8A FC         [24]  820 	mov	_TL0,#0xfc
                           000027   821 	C$main.c$30$1_0$25 ==.
                                    822 ;	main.c:30: P1_1=!P1_1;
      0024FB B2 91            [12]  823 	cpl	_P1_1
                           000029   824 	C$main.c$31$1_0$25 ==.
                                    825 ;	main.c:31: TR0=1;
                                    826 ;	assignBit
      0024FD D2 8C            [12]  827 	setb	_TR0
                           00002B   828 	C$main.c$32$1_0$25 ==.
                                    829 ;	main.c:32: EA=1;
                                    830 ;	assignBit
      0024FF D2 AF            [12]  831 	setb	_EA
                           00002D   832 	C$main.c$33$1_0$25 ==.
                                    833 ;	main.c:33: count++;
      002501 90 04 54         [24]  834 	mov	dptr,#_count
      002504 E0               [24]  835 	movx	a,@dptr
      002505 F8               [12]  836 	mov	r0,a
      002506 A3               [24]  837 	inc	dptr
      002507 E0               [24]  838 	movx	a,@dptr
      002508 F9               [12]  839 	mov	r1,a
      002509 A3               [24]  840 	inc	dptr
      00250A E0               [24]  841 	movx	a,@dptr
      00250B FA               [12]  842 	mov	r2,a
      00250C A3               [24]  843 	inc	dptr
      00250D E0               [24]  844 	movx	a,@dptr
      00250E FB               [12]  845 	mov	r3,a
      00250F A3               [24]  846 	inc	dptr
      002510 E0               [24]  847 	movx	a,@dptr
      002511 FC               [12]  848 	mov	r4,a
      002512 A3               [24]  849 	inc	dptr
      002513 E0               [24]  850 	movx	a,@dptr
      002514 FD               [12]  851 	mov	r5,a
      002515 A3               [24]  852 	inc	dptr
      002516 E0               [24]  853 	movx	a,@dptr
      002517 FE               [12]  854 	mov	r6,a
      002518 A3               [24]  855 	inc	dptr
      002519 E0               [24]  856 	movx	a,@dptr
      00251A FF               [12]  857 	mov	r7,a
      00251B 90 04 54         [24]  858 	mov	dptr,#_count
      00251E 74 01            [12]  859 	mov	a,#0x01
      002520 28               [12]  860 	add	a,r0
      002521 F0               [24]  861 	movx	@dptr,a
      002522 E4               [12]  862 	clr	a
      002523 39               [12]  863 	addc	a,r1
      002524 A3               [24]  864 	inc	dptr
      002525 F0               [24]  865 	movx	@dptr,a
      002526 E4               [12]  866 	clr	a
      002527 3A               [12]  867 	addc	a,r2
      002528 A3               [24]  868 	inc	dptr
      002529 F0               [24]  869 	movx	@dptr,a
      00252A E4               [12]  870 	clr	a
      00252B 3B               [12]  871 	addc	a,r3
      00252C A3               [24]  872 	inc	dptr
      00252D F0               [24]  873 	movx	@dptr,a
      00252E E4               [12]  874 	clr	a
      00252F 3C               [12]  875 	addc	a,r4
      002530 A3               [24]  876 	inc	dptr
      002531 F0               [24]  877 	movx	@dptr,a
      002532 E4               [12]  878 	clr	a
      002533 3D               [12]  879 	addc	a,r5
      002534 A3               [24]  880 	inc	dptr
      002535 F0               [24]  881 	movx	@dptr,a
      002536 E4               [12]  882 	clr	a
      002537 3E               [12]  883 	addc	a,r6
      002538 A3               [24]  884 	inc	dptr
      002539 F0               [24]  885 	movx	@dptr,a
      00253A E4               [12]  886 	clr	a
      00253B 3F               [12]  887 	addc	a,r7
      00253C A3               [24]  888 	inc	dptr
      00253D F0               [24]  889 	movx	@dptr,a
                           00006A   890 	C$main.c$34$1_0$25 ==.
                                    891 ;	main.c:34: if(count%2==0)
      00253E 90 04 54         [24]  892 	mov	dptr,#_count
      002541 E0               [24]  893 	movx	a,@dptr
      002542 F8               [12]  894 	mov	r0,a
      002543 A3               [24]  895 	inc	dptr
      002544 E0               [24]  896 	movx	a,@dptr
      002545 A3               [24]  897 	inc	dptr
      002546 E0               [24]  898 	movx	a,@dptr
      002547 A3               [24]  899 	inc	dptr
      002548 E0               [24]  900 	movx	a,@dptr
      002549 A3               [24]  901 	inc	dptr
      00254A E0               [24]  902 	movx	a,@dptr
      00254B A3               [24]  903 	inc	dptr
      00254C E0               [24]  904 	movx	a,@dptr
      00254D A3               [24]  905 	inc	dptr
      00254E E0               [24]  906 	movx	a,@dptr
      00254F A3               [24]  907 	inc	dptr
      002550 E0               [24]  908 	movx	a,@dptr
      002551 E8               [12]  909 	mov	a,r0
      002552 20 E0 1B         [24]  910 	jb	acc.0,00102$
                           000081   911 	C$main.c$36$2_0$26 ==.
                                    912 ;	main.c:36: flag=1;
      002555 90 04 5C         [24]  913 	mov	dptr,#_flag
      002558 74 01            [12]  914 	mov	a,#0x01
      00255A F0               [24]  915 	movx	@dptr,a
                           000087   916 	C$main.c$37$2_0$26 ==.
                                    917 ;	main.c:37: count=0;
      00255B 90 04 54         [24]  918 	mov	dptr,#_count
      00255E E4               [12]  919 	clr	a
      00255F F0               [24]  920 	movx	@dptr,a
      002560 A3               [24]  921 	inc	dptr
      002561 F0               [24]  922 	movx	@dptr,a
      002562 A3               [24]  923 	inc	dptr
      002563 F0               [24]  924 	movx	@dptr,a
      002564 A3               [24]  925 	inc	dptr
      002565 F0               [24]  926 	movx	@dptr,a
      002566 A3               [24]  927 	inc	dptr
      002567 F0               [24]  928 	movx	@dptr,a
      002568 A3               [24]  929 	inc	dptr
      002569 F0               [24]  930 	movx	@dptr,a
      00256A A3               [24]  931 	inc	dptr
      00256B F0               [24]  932 	movx	@dptr,a
      00256C A3               [24]  933 	inc	dptr
      00256D F0               [24]  934 	movx	@dptr,a
      00256E 80 05            [24]  935 	sjmp	00104$
      002570                        936 00102$:
                           00009C   937 	C$main.c$41$2_0$27 ==.
                                    938 ;	main.c:41: flag=0;
      002570 90 04 5C         [24]  939 	mov	dptr,#_flag
      002573 E4               [12]  940 	clr	a
      002574 F0               [24]  941 	movx	@dptr,a
      002575                        942 00104$:
                           0000A1   943 	C$main.c$43$1_0$25 ==.
                                    944 ;	main.c:43: }
      002575 D0 D0            [24]  945 	pop	psw
      002577 D0 00            [24]  946 	pop	ar0
      002579 D0 01            [24]  947 	pop	ar1
      00257B D0 02            [24]  948 	pop	ar2
      00257D D0 03            [24]  949 	pop	ar3
      00257F D0 04            [24]  950 	pop	ar4
      002581 D0 05            [24]  951 	pop	ar5
      002583 D0 06            [24]  952 	pop	ar6
      002585 D0 07            [24]  953 	pop	ar7
      002587 D0 83            [24]  954 	pop	dph
      002589 D0 82            [24]  955 	pop	dpl
      00258B D0 E0            [24]  956 	pop	acc
                           0000B9   957 	C$main.c$43$1_0$25 ==.
                           0000B9   958 	XG$timer0_ISR$0$0 ==.
      00258D 32               [24]  959 	reti
                                    960 ;	eliminated unneeded push/pop b
                                    961 ;------------------------------------------------------------
                                    962 ;Allocation info for local variables in function 'time_show'
                                    963 ;------------------------------------------------------------
                           0000BA   964 	G$time_show$0$0 ==.
                           0000BA   965 	C$main.c$44$1_0$28 ==.
                                    966 ;	main.c:44: void time_show()
                                    967 ;	-----------------------------------------
                                    968 ;	 function time_show
                                    969 ;	-----------------------------------------
      00258E                        970 _time_show:
                           0000BA   971 	C$main.c$46$1_0$28 ==.
                                    972 ;	main.c:46: if(flag==1)
      00258E 90 04 5C         [24]  973 	mov	dptr,#_flag
      002591 E0               [24]  974 	movx	a,@dptr
      002592 FF               [12]  975 	mov	r7,a
      002593 BF 01 02         [24]  976 	cjne	r7,#0x01,00121$
      002596 80 03            [24]  977 	sjmp	00122$
      002598                        978 00121$:
      002598 02 26 17         [24]  979 	ljmp	00107$
      00259B                        980 00122$:
                           0000C7   981 	C$main.c$48$2_0$29 ==.
                                    982 ;	main.c:48: flag=0;
      00259B 90 04 5C         [24]  983 	mov	dptr,#_flag
      00259E E4               [12]  984 	clr	a
      00259F F0               [24]  985 	movx	@dptr,a
                           0000CC   986 	C$main.c$49$2_0$29 ==.
                                    987 ;	main.c:49: milli++;
      0025A0 90 04 5D         [24]  988 	mov	dptr,#_milli
      0025A3 E0               [24]  989 	movx	a,@dptr
      0025A4 04               [12]  990 	inc	a
      0025A5 F0               [24]  991 	movx	@dptr,a
                           0000D2   992 	C$main.c$50$2_0$29 ==.
                                    993 ;	main.c:50: if(milli==10)
      0025A6 E0               [24]  994 	movx	a,@dptr
      0025A7 FF               [12]  995 	mov	r7,a
      0025A8 BF 0A 0B         [24]  996 	cjne	r7,#0x0a,00102$
                           0000D7   997 	C$main.c$52$3_0$30 ==.
                                    998 ;	main.c:52: seconds++;
      0025AB 90 04 5E         [24]  999 	mov	dptr,#_seconds
      0025AE E0               [24] 1000 	movx	a,@dptr
      0025AF 04               [12] 1001 	inc	a
      0025B0 F0               [24] 1002 	movx	@dptr,a
                           0000DD  1003 	C$main.c$53$3_0$30 ==.
                                   1004 ;	main.c:53: milli=0;
      0025B1 90 04 5D         [24] 1005 	mov	dptr,#_milli
      0025B4 E4               [12] 1006 	clr	a
      0025B5 F0               [24] 1007 	movx	@dptr,a
      0025B6                       1008 00102$:
                           0000E2  1009 	C$main.c$55$2_0$29 ==.
                                   1010 ;	main.c:55: if(seconds==60)
      0025B6 90 04 5E         [24] 1011 	mov	dptr,#_seconds
      0025B9 E0               [24] 1012 	movx	a,@dptr
      0025BA FF               [12] 1013 	mov	r7,a
      0025BB BF 3C 0B         [24] 1014 	cjne	r7,#0x3c,00104$
                           0000EA  1015 	C$main.c$57$3_0$31 ==.
                                   1016 ;	main.c:57: minutes++;
      0025BE 90 04 5F         [24] 1017 	mov	dptr,#_minutes
      0025C1 E0               [24] 1018 	movx	a,@dptr
      0025C2 04               [12] 1019 	inc	a
      0025C3 F0               [24] 1020 	movx	@dptr,a
                           0000F0  1021 	C$main.c$58$3_0$31 ==.
                                   1022 ;	main.c:58: seconds=0;
      0025C4 90 04 5E         [24] 1023 	mov	dptr,#_seconds
      0025C7 E4               [12] 1024 	clr	a
      0025C8 F0               [24] 1025 	movx	@dptr,a
      0025C9                       1026 00104$:
                           0000F5  1027 	C$main.c$60$2_0$29 ==.
                                   1028 ;	main.c:60: hours=minutes/60;
      0025C9 90 04 5F         [24] 1029 	mov	dptr,#_minutes
      0025CC E0               [24] 1030 	movx	a,@dptr
      0025CD FF               [12] 1031 	mov	r7,a
      0025CE 7E 00            [12] 1032 	mov	r6,#0x00
      0025D0 90 04 45         [24] 1033 	mov	dptr,#__divsint_PARM_2
      0025D3 74 3C            [12] 1034 	mov	a,#0x3c
      0025D5 F0               [24] 1035 	movx	@dptr,a
      0025D6 E4               [12] 1036 	clr	a
      0025D7 A3               [24] 1037 	inc	dptr
      0025D8 F0               [24] 1038 	movx	@dptr,a
      0025D9 8F 82            [24] 1039 	mov	dpl,r7
      0025DB 8E 83            [24] 1040 	mov	dph,r6
      0025DD 12 2C C5         [24] 1041 	lcall	__divsint
      0025E0 AE 82            [24] 1042 	mov	r6,dpl
      0025E2 90 04 12         [24] 1043 	mov	dptr,#_hours
      0025E5 EE               [12] 1044 	mov	a,r6
      0025E6 F0               [24] 1045 	movx	@dptr,a
                           000113  1046 	C$main.c$61$2_0$29 ==.
                                   1047 ;	main.c:61: lcd_gotoxy(4,6);
      0025E7 90 04 10         [24] 1048 	mov	dptr,#_lcd_gotoxy_PARM_2
      0025EA 74 06            [12] 1049 	mov	a,#0x06
      0025EC F0               [24] 1050 	movx	@dptr,a
      0025ED 75 82 04         [24] 1051 	mov	dpl,#0x04
      0025F0 12 24 7A         [24] 1052 	lcall	_lcd_gotoxy
                           00011F  1053 	C$main.c$62$2_0$29 ==.
                                   1054 ;	main.c:62: inttostr(hours);
      0025F3 90 04 12         [24] 1055 	mov	dptr,#_hours
      0025F6 E0               [24] 1056 	movx	a,@dptr
      0025F7 F5 82            [12] 1057 	mov	dpl,a
      0025F9 12 29 C8         [24] 1058 	lcall	_inttostr
                           000128  1059 	C$main.c$63$2_0$29 ==.
                                   1060 ;	main.c:63: inttostr(minutes);
      0025FC 90 04 5F         [24] 1061 	mov	dptr,#_minutes
      0025FF E0               [24] 1062 	movx	a,@dptr
      002600 F5 82            [12] 1063 	mov	dpl,a
      002602 12 29 C8         [24] 1064 	lcall	_inttostr
                           000131  1065 	C$main.c$64$2_0$29 ==.
                                   1066 ;	main.c:64: inttostr(seconds);
      002605 90 04 5E         [24] 1067 	mov	dptr,#_seconds
      002608 E0               [24] 1068 	movx	a,@dptr
      002609 F5 82            [12] 1069 	mov	dpl,a
      00260B 12 29 C8         [24] 1070 	lcall	_inttostr
                           00013A  1071 	C$main.c$65$2_0$29 ==.
                                   1072 ;	main.c:65: inttostr(milli);
      00260E 90 04 5D         [24] 1073 	mov	dptr,#_milli
      002611 E0               [24] 1074 	movx	a,@dptr
      002612 F5 82            [12] 1075 	mov	dpl,a
      002614 12 29 C8         [24] 1076 	lcall	_inttostr
      002617                       1077 00107$:
                           000143  1078 	C$main.c$67$1_0$28 ==.
                                   1079 ;	main.c:67: }
                           000143  1080 	C$main.c$67$1_0$28 ==.
                           000143  1081 	XG$time_show$0$0 ==.
      002617 22               [24] 1082 	ret
                                   1083 ;------------------------------------------------------------
                                   1084 ;Allocation info for local variables in function 'help'
                                   1085 ;------------------------------------------------------------
                           000144  1086 	G$help$0$0 ==.
                           000144  1087 	C$main.c$68$1_0$32 ==.
                                   1088 ;	main.c:68: void help()
                                   1089 ;	-----------------------------------------
                                   1090 ;	 function help
                                   1091 ;	-----------------------------------------
      002618                       1092 _help:
                           000144  1093 	C$main.c$70$1_0$32 ==.
                                   1094 ;	main.c:70: printf_tiny("\n\r Welcome to the World Of working(maybe) LCD.");
      002618 74 E4            [12] 1095 	mov	a,#___str_0
      00261A C0 E0            [24] 1096 	push	acc
      00261C 74 2D            [12] 1097 	mov	a,#(___str_0 >> 8)
      00261E C0 E0            [24] 1098 	push	acc
      002620 12 2A A8         [24] 1099 	lcall	_printf_tiny
      002623 15 81            [12] 1100 	dec	sp
      002625 15 81            [12] 1101 	dec	sp
                           000153  1102 	C$main.c$71$1_0$32 ==.
                                   1103 ;	main.c:71: printf_tiny("\n\r There are some instructions to read before to proceed.");
      002627 74 13            [12] 1104 	mov	a,#___str_1
      002629 C0 E0            [24] 1105 	push	acc
      00262B 74 2E            [12] 1106 	mov	a,#(___str_1 >> 8)
      00262D C0 E0            [24] 1107 	push	acc
      00262F 12 2A A8         [24] 1108 	lcall	_printf_tiny
      002632 15 81            [12] 1109 	dec	sp
      002634 15 81            [12] 1110 	dec	sp
                           000162  1111 	C$main.c$72$1_0$32 ==.
                                   1112 ;	main.c:72: printf_tiny("\n\r This lab was aimed to allow the students to learn the implementation of the LCD.");
      002636 74 4D            [12] 1113 	mov	a,#___str_2
      002638 C0 E0            [24] 1114 	push	acc
      00263A 74 2E            [12] 1115 	mov	a,#(___str_2 >> 8)
      00263C C0 E0            [24] 1116 	push	acc
      00263E 12 2A A8         [24] 1117 	lcall	_printf_tiny
      002641 15 81            [12] 1118 	dec	sp
      002643 15 81            [12] 1119 	dec	sp
                           000171  1120 	C$main.c$73$1_0$32 ==.
                                   1121 ;	main.c:73: printf_tiny("\n\r The LCD has 4 rows and 16 columns.");
      002645 74 A1            [12] 1122 	mov	a,#___str_3
      002647 C0 E0            [24] 1123 	push	acc
      002649 74 2E            [12] 1124 	mov	a,#(___str_3 >> 8)
      00264B C0 E0            [24] 1125 	push	acc
      00264D 12 2A A8         [24] 1126 	lcall	_printf_tiny
      002650 15 81            [12] 1127 	dec	sp
      002652 15 81            [12] 1128 	dec	sp
                           000180  1129 	C$main.c$74$1_0$32 ==.
                                   1130 ;	main.c:74: printf_tiny("\n\r Trying to go beyond that will give you an error.");
      002654 74 C7            [12] 1131 	mov	a,#___str_4
      002656 C0 E0            [24] 1132 	push	acc
      002658 74 2E            [12] 1133 	mov	a,#(___str_4 >> 8)
      00265A C0 E0            [24] 1134 	push	acc
      00265C 12 2A A8         [24] 1135 	lcall	_printf_tiny
      00265F 15 81            [12] 1136 	dec	sp
      002661 15 81            [12] 1137 	dec	sp
                           00018F  1138 	C$main.c$75$1_0$32 ==.
                                   1139 ;	main.c:75: printf_tiny("\n\r if you want to print a character, we have an option for you.");
      002663 74 FB            [12] 1140 	mov	a,#___str_5
      002665 C0 E0            [24] 1141 	push	acc
      002667 74 2E            [12] 1142 	mov	a,#(___str_5 >> 8)
      002669 C0 E0            [24] 1143 	push	acc
      00266B 12 2A A8         [24] 1144 	lcall	_printf_tiny
      00266E 15 81            [12] 1145 	dec	sp
      002670 15 81            [12] 1146 	dec	sp
                           00019E  1147 	C$main.c$76$1_0$32 ==.
                                   1148 ;	main.c:76: printf_tiny("\n\r As soon as you enter the program, the timer will start.");
      002672 74 3B            [12] 1149 	mov	a,#___str_6
      002674 C0 E0            [24] 1150 	push	acc
      002676 74 2F            [12] 1151 	mov	a,#(___str_6 >> 8)
      002678 C0 E0            [24] 1152 	push	acc
      00267A 12 2A A8         [24] 1153 	lcall	_printf_tiny
      00267D 15 81            [12] 1154 	dec	sp
      00267F 15 81            [12] 1155 	dec	sp
                           0001AD  1156 	C$main.c$77$1_0$32 ==.
                                   1157 ;	main.c:77: printf_tiny("\n\r If you are here for the first time, The timer is stopped for now.");
      002681 74 76            [12] 1158 	mov	a,#___str_7
      002683 C0 E0            [24] 1159 	push	acc
      002685 74 2F            [12] 1160 	mov	a,#(___str_7 >> 8)
      002687 C0 E0            [24] 1161 	push	acc
      002689 12 2A A8         [24] 1162 	lcall	_printf_tiny
      00268C 15 81            [12] 1163 	dec	sp
      00268E 15 81            [12] 1164 	dec	sp
                           0001BC  1165 	C$main.c$78$1_0$32 ==.
                                   1166 ;	main.c:78: printf_tiny("\n\r The timer is running continuously, if you want to print the character at timer's place, its impossible.");
      002690 74 BB            [12] 1167 	mov	a,#___str_8
      002692 C0 E0            [24] 1168 	push	acc
      002694 74 2F            [12] 1169 	mov	a,#(___str_8 >> 8)
      002696 C0 E0            [24] 1170 	push	acc
      002698 12 2A A8         [24] 1171 	lcall	_printf_tiny
      00269B 15 81            [12] 1172 	dec	sp
      00269D 15 81            [12] 1173 	dec	sp
                           0001CB  1174 	C$main.c$79$1_0$32 ==.
                                   1175 ;	main.c:79: printf_tiny("\n\r Press Enter to Continue");
      00269F 74 26            [12] 1176 	mov	a,#___str_9
      0026A1 C0 E0            [24] 1177 	push	acc
      0026A3 74 30            [12] 1178 	mov	a,#(___str_9 >> 8)
      0026A5 C0 E0            [24] 1179 	push	acc
      0026A7 12 2A A8         [24] 1180 	lcall	_printf_tiny
      0026AA 15 81            [12] 1181 	dec	sp
      0026AC 15 81            [12] 1182 	dec	sp
                           0001DA  1183 	C$main.c$80$1_0$32 ==.
                                   1184 ;	main.c:80: getchar();
      0026AE 12 2A 7F         [24] 1185 	lcall	_getchar
                           0001DD  1186 	C$main.c$81$1_0$32 ==.
                                   1187 ;	main.c:81: }
                           0001DD  1188 	C$main.c$81$1_0$32 ==.
                           0001DD  1189 	XG$help$0$0 ==.
      0026B1 22               [24] 1190 	ret
                                   1191 ;------------------------------------------------------------
                                   1192 ;Allocation info for local variables in function 'main'
                                   1193 ;------------------------------------------------------------
                                   1194 ;a                         Allocated with name '_main_a_65536_34'
                                   1195 ;b                         Allocated with name '_main_b_65536_34'
                                   1196 ;ch                        Allocated with name '_main_ch_65536_34'
                                   1197 ;choice                    Allocated with name '_main_choice_65537_35'
                                   1198 ;row_value                 Allocated with name '_main_row_value_65537_35'
                                   1199 ;column1                   Allocated with name '_main_column1_65537_35'
                                   1200 ;column2                   Allocated with name '_main_column2_65537_35'
                                   1201 ;column_value              Allocated with name '_main_column_value_65537_35'
                                   1202 ;------------------------------------------------------------
                           0001DE  1203 	G$main$0$0 ==.
                           0001DE  1204 	C$main.c$82$1_0$34 ==.
                                   1205 ;	main.c:82: void main(void)
                                   1206 ;	-----------------------------------------
                                   1207 ;	 function main
                                   1208 ;	-----------------------------------------
      0026B2                       1209 _main:
                           0001DE  1210 	C$main.c$83$2_0$34 ==.
                                   1211 ;	main.c:83: {   char a[]={"Ye Bik Gayi Hai gormint"};
      0026B2 90 04 13         [24] 1212 	mov	dptr,#_main_a_65536_34
      0026B5 74 59            [12] 1213 	mov	a,#0x59
      0026B7 F0               [24] 1214 	movx	@dptr,a
      0026B8 90 04 14         [24] 1215 	mov	dptr,#(_main_a_65536_34 + 0x0001)
      0026BB 74 65            [12] 1216 	mov	a,#0x65
      0026BD F0               [24] 1217 	movx	@dptr,a
      0026BE 90 04 15         [24] 1218 	mov	dptr,#(_main_a_65536_34 + 0x0002)
      0026C1 74 20            [12] 1219 	mov	a,#0x20
      0026C3 F0               [24] 1220 	movx	@dptr,a
      0026C4 90 04 16         [24] 1221 	mov	dptr,#(_main_a_65536_34 + 0x0003)
      0026C7 74 42            [12] 1222 	mov	a,#0x42
      0026C9 F0               [24] 1223 	movx	@dptr,a
      0026CA 90 04 17         [24] 1224 	mov	dptr,#(_main_a_65536_34 + 0x0004)
      0026CD 74 69            [12] 1225 	mov	a,#0x69
      0026CF F0               [24] 1226 	movx	@dptr,a
      0026D0 90 04 18         [24] 1227 	mov	dptr,#(_main_a_65536_34 + 0x0005)
      0026D3 74 6B            [12] 1228 	mov	a,#0x6b
      0026D5 F0               [24] 1229 	movx	@dptr,a
      0026D6 90 04 19         [24] 1230 	mov	dptr,#(_main_a_65536_34 + 0x0006)
      0026D9 74 20            [12] 1231 	mov	a,#0x20
      0026DB F0               [24] 1232 	movx	@dptr,a
      0026DC 90 04 1A         [24] 1233 	mov	dptr,#(_main_a_65536_34 + 0x0007)
      0026DF 74 47            [12] 1234 	mov	a,#0x47
      0026E1 F0               [24] 1235 	movx	@dptr,a
      0026E2 90 04 1B         [24] 1236 	mov	dptr,#(_main_a_65536_34 + 0x0008)
      0026E5 74 61            [12] 1237 	mov	a,#0x61
      0026E7 F0               [24] 1238 	movx	@dptr,a
      0026E8 90 04 1C         [24] 1239 	mov	dptr,#(_main_a_65536_34 + 0x0009)
      0026EB 74 79            [12] 1240 	mov	a,#0x79
      0026ED F0               [24] 1241 	movx	@dptr,a
      0026EE 90 04 1D         [24] 1242 	mov	dptr,#(_main_a_65536_34 + 0x000a)
      0026F1 74 69            [12] 1243 	mov	a,#0x69
      0026F3 F0               [24] 1244 	movx	@dptr,a
      0026F4 90 04 1E         [24] 1245 	mov	dptr,#(_main_a_65536_34 + 0x000b)
      0026F7 74 20            [12] 1246 	mov	a,#0x20
      0026F9 F0               [24] 1247 	movx	@dptr,a
      0026FA 90 04 1F         [24] 1248 	mov	dptr,#(_main_a_65536_34 + 0x000c)
      0026FD 74 48            [12] 1249 	mov	a,#0x48
      0026FF F0               [24] 1250 	movx	@dptr,a
      002700 90 04 20         [24] 1251 	mov	dptr,#(_main_a_65536_34 + 0x000d)
      002703 74 61            [12] 1252 	mov	a,#0x61
      002705 F0               [24] 1253 	movx	@dptr,a
      002706 90 04 21         [24] 1254 	mov	dptr,#(_main_a_65536_34 + 0x000e)
      002709 74 69            [12] 1255 	mov	a,#0x69
      00270B F0               [24] 1256 	movx	@dptr,a
      00270C 90 04 22         [24] 1257 	mov	dptr,#(_main_a_65536_34 + 0x000f)
      00270F 74 20            [12] 1258 	mov	a,#0x20
      002711 F0               [24] 1259 	movx	@dptr,a
      002712 90 04 23         [24] 1260 	mov	dptr,#(_main_a_65536_34 + 0x0010)
      002715 74 67            [12] 1261 	mov	a,#0x67
      002717 F0               [24] 1262 	movx	@dptr,a
      002718 90 04 24         [24] 1263 	mov	dptr,#(_main_a_65536_34 + 0x0011)
      00271B 74 6F            [12] 1264 	mov	a,#0x6f
      00271D F0               [24] 1265 	movx	@dptr,a
      00271E 90 04 25         [24] 1266 	mov	dptr,#(_main_a_65536_34 + 0x0012)
      002721 74 72            [12] 1267 	mov	a,#0x72
      002723 F0               [24] 1268 	movx	@dptr,a
      002724 90 04 26         [24] 1269 	mov	dptr,#(_main_a_65536_34 + 0x0013)
      002727 74 6D            [12] 1270 	mov	a,#0x6d
      002729 F0               [24] 1271 	movx	@dptr,a
      00272A 90 04 27         [24] 1272 	mov	dptr,#(_main_a_65536_34 + 0x0014)
      00272D 74 69            [12] 1273 	mov	a,#0x69
      00272F F0               [24] 1274 	movx	@dptr,a
      002730 90 04 28         [24] 1275 	mov	dptr,#(_main_a_65536_34 + 0x0015)
      002733 74 6E            [12] 1276 	mov	a,#0x6e
      002735 F0               [24] 1277 	movx	@dptr,a
      002736 90 04 29         [24] 1278 	mov	dptr,#(_main_a_65536_34 + 0x0016)
      002739 74 74            [12] 1279 	mov	a,#0x74
      00273B F0               [24] 1280 	movx	@dptr,a
      00273C 90 04 2A         [24] 1281 	mov	dptr,#(_main_a_65536_34 + 0x0017)
      00273F E4               [12] 1282 	clr	a
      002740 F0               [24] 1283 	movx	@dptr,a
                           00026D  1284 	C$main.c$84$2_0$34 ==.
                                   1285 ;	main.c:84: char b[]={"Nitik"};
      002741 90 04 2B         [24] 1286 	mov	dptr,#_main_b_65536_34
      002744 74 4E            [12] 1287 	mov	a,#0x4e
      002746 F0               [24] 1288 	movx	@dptr,a
      002747 90 04 2C         [24] 1289 	mov	dptr,#(_main_b_65536_34 + 0x0001)
      00274A 74 69            [12] 1290 	mov	a,#0x69
      00274C F0               [24] 1291 	movx	@dptr,a
      00274D 90 04 2D         [24] 1292 	mov	dptr,#(_main_b_65536_34 + 0x0002)
      002750 74 74            [12] 1293 	mov	a,#0x74
      002752 F0               [24] 1294 	movx	@dptr,a
      002753 90 04 2E         [24] 1295 	mov	dptr,#(_main_b_65536_34 + 0x0003)
      002756 74 69            [12] 1296 	mov	a,#0x69
      002758 F0               [24] 1297 	movx	@dptr,a
      002759 90 04 2F         [24] 1298 	mov	dptr,#(_main_b_65536_34 + 0x0004)
      00275C 74 6B            [12] 1299 	mov	a,#0x6b
      00275E F0               [24] 1300 	movx	@dptr,a
      00275F 90 04 30         [24] 1301 	mov	dptr,#(_main_b_65536_34 + 0x0005)
      002762 E4               [12] 1302 	clr	a
      002763 F0               [24] 1303 	movx	@dptr,a
                           000290  1304 	C$main.c$86$1_0$34 ==.
                                   1305 ;	main.c:86: milli=0,seconds=0,minutes=0;
      002764 90 04 5D         [24] 1306 	mov	dptr,#_milli
      002767 F0               [24] 1307 	movx	@dptr,a
      002768 90 04 5E         [24] 1308 	mov	dptr,#_seconds
      00276B F0               [24] 1309 	movx	@dptr,a
      00276C 90 04 5F         [24] 1310 	mov	dptr,#_minutes
      00276F F0               [24] 1311 	movx	@dptr,a
                           00029C  1312 	C$main.c$87$2_0$35 ==.
                                   1313 ;	main.c:87: volatile uint8_t choice=1,row_value,column1,column2,column_value;
      002770 90 04 31         [24] 1314 	mov	dptr,#_main_choice_65537_35
      002773 04               [12] 1315 	inc	a
      002774 F0               [24] 1316 	movx	@dptr,a
                           0002A1  1317 	C$main.c$88$1_1$35 ==.
                                   1318 ;	main.c:88: help();
      002775 12 26 18         [24] 1319 	lcall	_help
                           0002A4  1320 	C$main.c$89$1_1$35 ==.
                                   1321 ;	main.c:89: timer_init();
      002778 12 29 AA         [24] 1322 	lcall	_timer_init
                           0002A7  1323 	C$main.c$93$1_1$35 ==.
                                   1324 ;	main.c:93: LCD_Init();
      00277B 12 23 40         [24] 1325 	lcall	_LCD_Init
                           0002AA  1326 	C$main.c$105$1_1$35 ==.
                                   1327 ;	main.c:105: do
      00277E                       1328 00127$:
                           0002AA  1329 	C$main.c$106$2_1$36 ==.
                                   1330 ;	main.c:106: {   if(choice!=0)
      00277E 90 04 31         [24] 1331 	mov	dptr,#_main_choice_65537_35
      002781 E0               [24] 1332 	movx	a,@dptr
      002782 60 69            [24] 1333 	jz	00102$
                           0002B0  1334 	C$main.c$107$3_1$37 ==.
                                   1335 ;	main.c:107: {   printf_tiny("\n\r Your Options Are:");
      002784 74 41            [12] 1336 	mov	a,#___str_12
      002786 C0 E0            [24] 1337 	push	acc
      002788 74 30            [12] 1338 	mov	a,#(___str_12 >> 8)
      00278A C0 E0            [24] 1339 	push	acc
      00278C 12 2A A8         [24] 1340 	lcall	_printf_tiny
      00278F 15 81            [12] 1341 	dec	sp
      002791 15 81            [12] 1342 	dec	sp
                           0002BF  1343 	C$main.c$108$3_1$37 ==.
                                   1344 ;	main.c:108: printf_tiny("\n\r 1. Print the character at the starting.");
      002793 74 56            [12] 1345 	mov	a,#___str_13
      002795 C0 E0            [24] 1346 	push	acc
      002797 74 30            [12] 1347 	mov	a,#(___str_13 >> 8)
      002799 C0 E0            [24] 1348 	push	acc
      00279B 12 2A A8         [24] 1349 	lcall	_printf_tiny
      00279E 15 81            [12] 1350 	dec	sp
      0027A0 15 81            [12] 1351 	dec	sp
                           0002CE  1352 	C$main.c$109$3_1$37 ==.
                                   1353 ;	main.c:109: printf_tiny("\n\r 2. Print the character at your place of choosing.");
      0027A2 74 81            [12] 1354 	mov	a,#___str_14
      0027A4 C0 E0            [24] 1355 	push	acc
      0027A6 74 30            [12] 1356 	mov	a,#(___str_14 >> 8)
      0027A8 C0 E0            [24] 1357 	push	acc
      0027AA 12 2A A8         [24] 1358 	lcall	_printf_tiny
      0027AD 15 81            [12] 1359 	dec	sp
      0027AF 15 81            [12] 1360 	dec	sp
                           0002DD  1361 	C$main.c$110$3_1$37 ==.
                                   1362 ;	main.c:110: printf_tiny("\n\r 3. Print the string at the starting.");
      0027B1 74 B6            [12] 1363 	mov	a,#___str_15
      0027B3 C0 E0            [24] 1364 	push	acc
      0027B5 74 30            [12] 1365 	mov	a,#(___str_15 >> 8)
      0027B7 C0 E0            [24] 1366 	push	acc
      0027B9 12 2A A8         [24] 1367 	lcall	_printf_tiny
      0027BC 15 81            [12] 1368 	dec	sp
      0027BE 15 81            [12] 1369 	dec	sp
                           0002EC  1370 	C$main.c$111$3_1$37 ==.
                                   1371 ;	main.c:111: printf_tiny("\n\r 4. Clear the Screen.");
      0027C0 74 DE            [12] 1372 	mov	a,#___str_16
      0027C2 C0 E0            [24] 1373 	push	acc
      0027C4 74 30            [12] 1374 	mov	a,#(___str_16 >> 8)
      0027C6 C0 E0            [24] 1375 	push	acc
      0027C8 12 2A A8         [24] 1376 	lcall	_printf_tiny
      0027CB 15 81            [12] 1377 	dec	sp
      0027CD 15 81            [12] 1378 	dec	sp
                           0002FB  1379 	C$main.c$112$3_1$37 ==.
                                   1380 ;	main.c:112: printf_tiny("\n\r 5. Exit");
      0027CF 74 F6            [12] 1381 	mov	a,#___str_17
      0027D1 C0 E0            [24] 1382 	push	acc
      0027D3 74 30            [12] 1383 	mov	a,#(___str_17 >> 8)
      0027D5 C0 E0            [24] 1384 	push	acc
      0027D7 12 2A A8         [24] 1385 	lcall	_printf_tiny
      0027DA 15 81            [12] 1386 	dec	sp
      0027DC 15 81            [12] 1387 	dec	sp
                           00030A  1388 	C$main.c$113$3_1$37 ==.
                                   1389 ;	main.c:113: printf_tiny("\n\r Enter your choice:");
      0027DE 74 01            [12] 1390 	mov	a,#___str_18
      0027E0 C0 E0            [24] 1391 	push	acc
      0027E2 74 31            [12] 1392 	mov	a,#(___str_18 >> 8)
      0027E4 C0 E0            [24] 1393 	push	acc
      0027E6 12 2A A8         [24] 1394 	lcall	_printf_tiny
      0027E9 15 81            [12] 1395 	dec	sp
      0027EB 15 81            [12] 1396 	dec	sp
      0027ED                       1397 00102$:
                           000319  1398 	C$main.c$115$2_1$36 ==.
                                   1399 ;	main.c:115: choice=0;
      0027ED 90 04 31         [24] 1400 	mov	dptr,#_main_choice_65537_35
      0027F0 E4               [12] 1401 	clr	a
      0027F1 F0               [24] 1402 	movx	@dptr,a
                           00031E  1403 	C$main.c$116$2_1$36 ==.
                                   1404 ;	main.c:116: choice=getchar_nonblock();
      0027F2 12 2A 92         [24] 1405 	lcall	_getchar_nonblock
      0027F5 AE 82            [24] 1406 	mov	r6,dpl
      0027F7 90 04 31         [24] 1407 	mov	dptr,#_main_choice_65537_35
      0027FA EE               [12] 1408 	mov	a,r6
      0027FB F0               [24] 1409 	movx	@dptr,a
                           000328  1410 	C$main.c$117$2_1$36 ==.
                                   1411 ;	main.c:117: switch(choice)
      0027FC E0               [24] 1412 	movx	a,@dptr
      0027FD FF               [12] 1413 	mov	r7,a
      0027FE BF 30 03         [24] 1414 	cjne	r7,#0x30,00188$
      002801 02 29 99         [24] 1415 	ljmp	00126$
      002804                       1416 00188$:
      002804 BF 31 02         [24] 1417 	cjne	r7,#0x31,00189$
      002807 80 08            [24] 1418 	sjmp	00104$
      002809                       1419 00189$:
      002809 BF 32 02         [24] 1420 	cjne	r7,#0x32,00190$
      00280C 80 48            [24] 1421 	sjmp	00105$
      00280E                       1422 00190$:
      00280E 02 29 99         [24] 1423 	ljmp	00126$
                           00033D  1424 	C$main.c$120$3_1$38 ==.
                                   1425 ;	main.c:120: case '1':   printf_tiny("\n\rEnter the character:");
      002811                       1426 00104$:
      002811 74 17            [12] 1427 	mov	a,#___str_19
      002813 C0 E0            [24] 1428 	push	acc
      002815 74 31            [12] 1429 	mov	a,#(___str_19 >> 8)
      002817 C0 E0            [24] 1430 	push	acc
      002819 12 2A A8         [24] 1431 	lcall	_printf_tiny
      00281C 15 81            [12] 1432 	dec	sp
      00281E 15 81            [12] 1433 	dec	sp
                           00034C  1434 	C$main.c$121$3_1$38 ==.
                                   1435 ;	main.c:121: ch=getchar();
      002820 12 2A 7F         [24] 1436 	lcall	_getchar
      002823 AE 82            [24] 1437 	mov	r6,dpl
                           000351  1438 	C$main.c$122$3_1$38 ==.
                                   1439 ;	main.c:122: printf_tiny("%c",ch);
      002825 8E 05            [24] 1440 	mov	ar5,r6
      002827 7F 00            [12] 1441 	mov	r7,#0x00
      002829 C0 06            [24] 1442 	push	ar6
      00282B C0 05            [24] 1443 	push	ar5
      00282D C0 07            [24] 1444 	push	ar7
      00282F 74 2E            [12] 1445 	mov	a,#___str_20
      002831 C0 E0            [24] 1446 	push	acc
      002833 74 31            [12] 1447 	mov	a,#(___str_20 >> 8)
      002835 C0 E0            [24] 1448 	push	acc
      002837 12 2A A8         [24] 1449 	lcall	_printf_tiny
      00283A E5 81            [12] 1450 	mov	a,sp
      00283C 24 FC            [12] 1451 	add	a,#0xfc
      00283E F5 81            [12] 1452 	mov	sp,a
                           00036C  1453 	C$main.c$123$3_1$38 ==.
                                   1454 ;	main.c:123: lcd_gotoxy(1,1);
      002840 90 04 10         [24] 1455 	mov	dptr,#_lcd_gotoxy_PARM_2
      002843 74 01            [12] 1456 	mov	a,#0x01
      002845 F0               [24] 1457 	movx	@dptr,a
      002846 75 82 01         [24] 1458 	mov	dpl,#0x01
      002849 12 24 7A         [24] 1459 	lcall	_lcd_gotoxy
      00284C D0 06            [24] 1460 	pop	ar6
                           00037A  1461 	C$main.c$124$3_1$38 ==.
                                   1462 ;	main.c:124: LCD_putch(ch);
      00284E 8E 82            [24] 1463 	mov	dpl,r6
      002850 12 23 9B         [24] 1464 	lcall	_LCD_putch
                           00037F  1465 	C$main.c$125$3_1$38 ==.
                                   1466 ;	main.c:125: break;
      002853 02 29 99         [24] 1467 	ljmp	00126$
                           000382  1468 	C$main.c$126$3_1$38 ==.
                                   1469 ;	main.c:126: case '2':
      002856                       1470 00105$:
                           000382  1471 	C$main.c$127$3_1$38 ==.
                                   1472 ;	main.c:127: printf_tiny("\n\rEnter the row:");
      002856 74 31            [12] 1473 	mov	a,#___str_21
      002858 C0 E0            [24] 1474 	push	acc
      00285A 74 31            [12] 1475 	mov	a,#(___str_21 >> 8)
      00285C C0 E0            [24] 1476 	push	acc
      00285E 12 2A A8         [24] 1477 	lcall	_printf_tiny
      002861 15 81            [12] 1478 	dec	sp
      002863 15 81            [12] 1479 	dec	sp
                           000391  1480 	C$main.c$128$3_1$38 ==.
                                   1481 ;	main.c:128: do
      002865                       1482 00110$:
                           000391  1483 	C$main.c$130$4_1$39 ==.
                                   1484 ;	main.c:130: row_value=getchar();
      002865 12 2A 7F         [24] 1485 	lcall	_getchar
      002868 AE 82            [24] 1486 	mov	r6,dpl
      00286A 90 04 32         [24] 1487 	mov	dptr,#_main_row_value_65537_35
      00286D EE               [12] 1488 	mov	a,r6
      00286E F0               [24] 1489 	movx	@dptr,a
                           00039B  1490 	C$main.c$131$4_1$39 ==.
                                   1491 ;	main.c:131: if(row_value>'5' || row_value =='0')
      00286F E0               [24] 1492 	movx	a,@dptr
      002870 24 CA            [12] 1493 	add	a,#0xff - 0x35
      002872 40 08            [24] 1494 	jc	00106$
      002874 90 04 32         [24] 1495 	mov	dptr,#_main_row_value_65537_35
      002877 E0               [24] 1496 	movx	a,@dptr
      002878 FF               [12] 1497 	mov	r7,a
      002879 BF 30 0F         [24] 1498 	cjne	r7,#0x30,00111$
      00287C                       1499 00106$:
                           0003A8  1500 	C$main.c$133$5_1$40 ==.
                                   1501 ;	main.c:133: printf_tiny("\n\r Sorry wrong choice, Enter Again.");
      00287C 74 42            [12] 1502 	mov	a,#___str_22
      00287E C0 E0            [24] 1503 	push	acc
      002880 74 31            [12] 1504 	mov	a,#(___str_22 >> 8)
      002882 C0 E0            [24] 1505 	push	acc
      002884 12 2A A8         [24] 1506 	lcall	_printf_tiny
      002887 15 81            [12] 1507 	dec	sp
      002889 15 81            [12] 1508 	dec	sp
      00288B                       1509 00111$:
                           0003B7  1510 	C$main.c$135$3_1$38 ==.
                                   1511 ;	main.c:135: }while(!(row_value>'0' && row_value<'5'));
      00288B 90 04 32         [24] 1512 	mov	dptr,#_main_row_value_65537_35
      00288E E0               [24] 1513 	movx	a,@dptr
      00288F FF               [12] 1514 	mov  r7,a
      002890 24 CF            [12] 1515 	add	a,#0xff - 0x30
      002892 50 D1            [24] 1516 	jnc	00110$
      002894 90 04 32         [24] 1517 	mov	dptr,#_main_row_value_65537_35
      002897 E0               [24] 1518 	movx	a,@dptr
      002898 FF               [12] 1519 	mov	r7,a
      002899 BF 35 00         [24] 1520 	cjne	r7,#0x35,00195$
      00289C                       1521 00195$:
      00289C 50 C7            [24] 1522 	jnc	00110$
                           0003CA  1523 	C$main.c$136$3_1$38 ==.
                                   1524 ;	main.c:136: printf_tiny("%c",row_value);
      00289E 90 04 32         [24] 1525 	mov	dptr,#_main_row_value_65537_35
      0028A1 E0               [24] 1526 	movx	a,@dptr
      0028A2 FF               [12] 1527 	mov	r7,a
      0028A3 7E 00            [12] 1528 	mov	r6,#0x00
      0028A5 C0 07            [24] 1529 	push	ar7
      0028A7 C0 06            [24] 1530 	push	ar6
      0028A9 74 2E            [12] 1531 	mov	a,#___str_20
      0028AB C0 E0            [24] 1532 	push	acc
      0028AD 74 31            [12] 1533 	mov	a,#(___str_20 >> 8)
      0028AF C0 E0            [24] 1534 	push	acc
      0028B1 12 2A A8         [24] 1535 	lcall	_printf_tiny
      0028B4 E5 81            [12] 1536 	mov	a,sp
      0028B6 24 FC            [12] 1537 	add	a,#0xfc
      0028B8 F5 81            [12] 1538 	mov	sp,a
                           0003E6  1539 	C$main.c$137$3_1$38 ==.
                                   1540 ;	main.c:137: printf_tiny("\n\rEnter the column:");
      0028BA 74 66            [12] 1541 	mov	a,#___str_23
      0028BC C0 E0            [24] 1542 	push	acc
      0028BE 74 31            [12] 1543 	mov	a,#(___str_23 >> 8)
      0028C0 C0 E0            [24] 1544 	push	acc
      0028C2 12 2A A8         [24] 1545 	lcall	_printf_tiny
      0028C5 15 81            [12] 1546 	dec	sp
      0028C7 15 81            [12] 1547 	dec	sp
                           0003F5  1548 	C$main.c$138$3_1$38 ==.
                                   1549 ;	main.c:138: do
      0028C9                       1550 00119$:
                           0003F5  1551 	C$main.c$140$4_1$41 ==.
                                   1552 ;	main.c:140: column1=getchar();
      0028C9 12 2A 7F         [24] 1553 	lcall	_getchar
      0028CC AE 82            [24] 1554 	mov	r6,dpl
      0028CE 90 04 33         [24] 1555 	mov	dptr,#_main_column1_65537_35
      0028D1 EE               [12] 1556 	mov	a,r6
      0028D2 F0               [24] 1557 	movx	@dptr,a
                           0003FF  1558 	C$main.c$141$4_1$41 ==.
                                   1559 ;	main.c:141: column1=column1-'0';
      0028D3 E0               [24] 1560 	movx	a,@dptr
      0028D4 24 D0            [12] 1561 	add	a,#0xd0
      0028D6 F0               [24] 1562 	movx	@dptr,a
                           000403  1563 	C$main.c$142$4_1$41 ==.
                                   1564 ;	main.c:142: if(column1==1||column1==0)
      0028D7 E0               [24] 1565 	movx	a,@dptr
      0028D8 FF               [12] 1566 	mov	r7,a
      0028D9 BF 01 02         [24] 1567 	cjne	r7,#0x01,00197$
      0028DC 80 06            [24] 1568 	sjmp	00113$
      0028DE                       1569 00197$:
      0028DE 90 04 33         [24] 1570 	mov	dptr,#_main_column1_65537_35
      0028E1 E0               [24] 1571 	movx	a,@dptr
      0028E2 70 23            [24] 1572 	jnz	00114$
      0028E4                       1573 00113$:
                           000410  1574 	C$main.c$143$5_1$42 ==.
                                   1575 ;	main.c:143: {   column2=getchar();
      0028E4 12 2A 7F         [24] 1576 	lcall	_getchar
      0028E7 AE 82            [24] 1577 	mov	r6,dpl
      0028E9 90 04 34         [24] 1578 	mov	dptr,#_main_column2_65537_35
      0028EC EE               [12] 1579 	mov	a,r6
      0028ED F0               [24] 1580 	movx	@dptr,a
                           00041A  1581 	C$main.c$144$5_1$42 ==.
                                   1582 ;	main.c:144: column2=column2-'0';
      0028EE E0               [24] 1583 	movx	a,@dptr
      0028EF 24 D0            [12] 1584 	add	a,#0xd0
      0028F1 F0               [24] 1585 	movx	@dptr,a
                           00041E  1586 	C$main.c$145$5_1$42 ==.
                                   1587 ;	main.c:145: column_value=column1*10+column2;
      0028F2 90 04 33         [24] 1588 	mov	dptr,#_main_column1_65537_35
      0028F5 E0               [24] 1589 	movx	a,@dptr
      0028F6 75 F0 0A         [24] 1590 	mov	b,#0x0a
      0028F9 A4               [48] 1591 	mul	ab
      0028FA FF               [12] 1592 	mov	r7,a
      0028FB 90 04 34         [24] 1593 	mov	dptr,#_main_column2_65537_35
      0028FE E0               [24] 1594 	movx	a,@dptr
      0028FF FE               [12] 1595 	mov	r6,a
      002900 90 04 35         [24] 1596 	mov	dptr,#_main_column_value_65537_35
      002903 2F               [12] 1597 	add	a,r7
      002904 F0               [24] 1598 	movx	@dptr,a
      002905 80 0D            [24] 1599 	sjmp	00115$
      002907                       1600 00114$:
                           000433  1601 	C$main.c$149$5_1$43 ==.
                                   1602 ;	main.c:149: column2=0;
      002907 90 04 34         [24] 1603 	mov	dptr,#_main_column2_65537_35
      00290A E4               [12] 1604 	clr	a
      00290B F0               [24] 1605 	movx	@dptr,a
                           000438  1606 	C$main.c$150$5_1$43 ==.
                                   1607 ;	main.c:150: column_value=column1;
      00290C 90 04 33         [24] 1608 	mov	dptr,#_main_column1_65537_35
      00290F E0               [24] 1609 	movx	a,@dptr
      002910 90 04 35         [24] 1610 	mov	dptr,#_main_column_value_65537_35
      002913 F0               [24] 1611 	movx	@dptr,a
      002914                       1612 00115$:
                           000440  1613 	C$main.c$154$4_1$41 ==.
                                   1614 ;	main.c:154: if(column_value>16)
      002914 90 04 35         [24] 1615 	mov	dptr,#_main_column_value_65537_35
      002917 E0               [24] 1616 	movx	a,@dptr
      002918 24 EF            [12] 1617 	add	a,#0xff - 0x10
      00291A 50 0F            [24] 1618 	jnc	00120$
                           000448  1619 	C$main.c$156$5_1$44 ==.
                                   1620 ;	main.c:156: printf_tiny("\n\r Sorry wrong choice, Enter Again.");
      00291C 74 42            [12] 1621 	mov	a,#___str_22
      00291E C0 E0            [24] 1622 	push	acc
      002920 74 31            [12] 1623 	mov	a,#(___str_22 >> 8)
      002922 C0 E0            [24] 1624 	push	acc
      002924 12 2A A8         [24] 1625 	lcall	_printf_tiny
      002927 15 81            [12] 1626 	dec	sp
      002929 15 81            [12] 1627 	dec	sp
      00292B                       1628 00120$:
                           000457  1629 	C$main.c$158$3_1$38 ==.
                                   1630 ;	main.c:158: }while((column_value>16));
      00292B 90 04 35         [24] 1631 	mov	dptr,#_main_column_value_65537_35
      00292E E0               [24] 1632 	movx	a,@dptr
      00292F 24 EF            [12] 1633 	add	a,#0xff - 0x10
      002931 40 96            [24] 1634 	jc	00119$
                           00045F  1635 	C$main.c$159$3_1$38 ==.
                                   1636 ;	main.c:159: printf_tiny("%d",column_value);
      002933 90 04 35         [24] 1637 	mov	dptr,#_main_column_value_65537_35
      002936 E0               [24] 1638 	movx	a,@dptr
      002937 FF               [12] 1639 	mov	r7,a
      002938 7E 00            [12] 1640 	mov	r6,#0x00
      00293A C0 07            [24] 1641 	push	ar7
      00293C C0 06            [24] 1642 	push	ar6
      00293E 74 7A            [12] 1643 	mov	a,#___str_24
      002940 C0 E0            [24] 1644 	push	acc
      002942 74 31            [12] 1645 	mov	a,#(___str_24 >> 8)
      002944 C0 E0            [24] 1646 	push	acc
      002946 12 2A A8         [24] 1647 	lcall	_printf_tiny
      002949 E5 81            [12] 1648 	mov	a,sp
      00294B 24 FC            [12] 1649 	add	a,#0xfc
      00294D F5 81            [12] 1650 	mov	sp,a
                           00047B  1651 	C$main.c$160$3_1$38 ==.
                                   1652 ;	main.c:160: printf_tiny("\n\rEnter the character:");
      00294F 74 17            [12] 1653 	mov	a,#___str_19
      002951 C0 E0            [24] 1654 	push	acc
      002953 74 31            [12] 1655 	mov	a,#(___str_19 >> 8)
      002955 C0 E0            [24] 1656 	push	acc
      002957 12 2A A8         [24] 1657 	lcall	_printf_tiny
      00295A 15 81            [12] 1658 	dec	sp
      00295C 15 81            [12] 1659 	dec	sp
                           00048A  1660 	C$main.c$161$3_1$38 ==.
                                   1661 ;	main.c:161: ch=getchar();
      00295E 12 2A 7F         [24] 1662 	lcall	_getchar
      002961 AE 82            [24] 1663 	mov	r6,dpl
                           00048F  1664 	C$main.c$162$3_1$38 ==.
                                   1665 ;	main.c:162: printf_tiny("%c",ch);
      002963 8E 05            [24] 1666 	mov	ar5,r6
      002965 7F 00            [12] 1667 	mov	r7,#0x00
      002967 C0 06            [24] 1668 	push	ar6
      002969 C0 05            [24] 1669 	push	ar5
      00296B C0 07            [24] 1670 	push	ar7
      00296D 74 2E            [12] 1671 	mov	a,#___str_20
      00296F C0 E0            [24] 1672 	push	acc
      002971 74 31            [12] 1673 	mov	a,#(___str_20 >> 8)
      002973 C0 E0            [24] 1674 	push	acc
      002975 12 2A A8         [24] 1675 	lcall	_printf_tiny
      002978 E5 81            [12] 1676 	mov	a,sp
      00297A 24 FC            [12] 1677 	add	a,#0xfc
      00297C F5 81            [12] 1678 	mov	sp,a
                           0004AA  1679 	C$main.c$163$3_1$38 ==.
                                   1680 ;	main.c:163: lcd_gotoxy(row_value-'0',column_value);
      00297E 90 04 32         [24] 1681 	mov	dptr,#_main_row_value_65537_35
      002981 E0               [24] 1682 	movx	a,@dptr
      002982 24 D0            [12] 1683 	add	a,#0xd0
      002984 FF               [12] 1684 	mov	r7,a
      002985 90 04 35         [24] 1685 	mov	dptr,#_main_column_value_65537_35
      002988 E0               [24] 1686 	movx	a,@dptr
      002989 90 04 10         [24] 1687 	mov	dptr,#_lcd_gotoxy_PARM_2
      00298C F0               [24] 1688 	movx	@dptr,a
      00298D 8F 82            [24] 1689 	mov	dpl,r7
      00298F 12 24 7A         [24] 1690 	lcall	_lcd_gotoxy
      002992 D0 06            [24] 1691 	pop	ar6
                           0004C0  1692 	C$main.c$164$3_1$38 ==.
                                   1693 ;	main.c:164: LCD_putch(ch);
      002994 8E 82            [24] 1694 	mov	dpl,r6
      002996 12 23 9B         [24] 1695 	lcall	_LCD_putch
                           0004C5  1696 	C$main.c$171$2_1$36 ==.
                                   1697 ;	main.c:171: }
      002999                       1698 00126$:
                           0004C5  1699 	C$main.c$172$2_1$36 ==.
                                   1700 ;	main.c:172: time_show();
      002999 12 25 8E         [24] 1701 	lcall	_time_show
                           0004C8  1702 	C$main.c$173$1_1$35 ==.
                                   1703 ;	main.c:173: }while(choice!='5');
      00299C 90 04 31         [24] 1704 	mov	dptr,#_main_choice_65537_35
      00299F E0               [24] 1705 	movx	a,@dptr
      0029A0 FF               [12] 1706 	mov	r7,a
      0029A1 BF 35 02         [24] 1707 	cjne	r7,#0x35,00201$
      0029A4 80 03            [24] 1708 	sjmp	00202$
      0029A6                       1709 00201$:
      0029A6 02 27 7E         [24] 1710 	ljmp	00127$
      0029A9                       1711 00202$:
                           0004D5  1712 	C$main.c$175$1_1$34 ==.
                                   1713 ;	main.c:175: }
                           0004D5  1714 	C$main.c$175$1_1$34 ==.
                           0004D5  1715 	XG$main$0$0 ==.
      0029A9 22               [24] 1716 	ret
                                   1717 	.area CSEG    (CODE)
                                   1718 	.area CONST   (CODE)
                           000000  1719 Fmain$__str_0$0_0$0 == .
                                   1720 	.area CONST   (CODE)
      002DE4                       1721 ___str_0:
      002DE4 0A                    1722 	.db 0x0a
      002DE5 0D                    1723 	.db 0x0d
      002DE6 20 57 65 6C 63 6F 6D  1724 	.ascii " Welcome to the World Of working(maybe) LCD."
             65 20 74 6F 20 74 68
             65 20 57 6F 72 6C 64
             20 4F 66 20 77 6F 72
             6B 69 6E 67 28 6D 61
             79 62 65 29 20 4C 43
             44 2E
      002E12 00                    1725 	.db 0x00
                                   1726 	.area CSEG    (CODE)
                           0004D6  1727 Fmain$__str_1$0_0$0 == .
                                   1728 	.area CONST   (CODE)
      002E13                       1729 ___str_1:
      002E13 0A                    1730 	.db 0x0a
      002E14 0D                    1731 	.db 0x0d
      002E15 20 54 68 65 72 65 20  1732 	.ascii " There are some instructions to read before to proceed."
             61 72 65 20 73 6F 6D
             65 20 69 6E 73 74 72
             75 63 74 69 6F 6E 73
             20 74 6F 20 72 65 61
             64 20 62 65 66 6F 72
             65 20 74 6F 20 70 72
             6F 63 65 65 64 2E
      002E4C 00                    1733 	.db 0x00
                                   1734 	.area CSEG    (CODE)
                           0004D6  1735 Fmain$__str_2$0_0$0 == .
                                   1736 	.area CONST   (CODE)
      002E4D                       1737 ___str_2:
      002E4D 0A                    1738 	.db 0x0a
      002E4E 0D                    1739 	.db 0x0d
      002E4F 20 54 68 69 73 20 6C  1740 	.ascii " This lab was aimed to allow the students to learn the imple"
             61 62 20 77 61 73 20
             61 69 6D 65 64 20 74
             6F 20 61 6C 6C 6F 77
             20 74 68 65 20 73 74
             75 64 65 6E 74 73 20
             74 6F 20 6C 65 61 72
             6E 20 74 68 65 20 69
             6D 70 6C 65
      002E8B 6D 65 6E 74 61 74 69  1741 	.ascii "mentation of the LCD."
             6F 6E 20 6F 66 20 74
             68 65 20 4C 43 44 2E
      002EA0 00                    1742 	.db 0x00
                                   1743 	.area CSEG    (CODE)
                           0004D6  1744 Fmain$__str_3$0_0$0 == .
                                   1745 	.area CONST   (CODE)
      002EA1                       1746 ___str_3:
      002EA1 0A                    1747 	.db 0x0a
      002EA2 0D                    1748 	.db 0x0d
      002EA3 20 54 68 65 20 4C 43  1749 	.ascii " The LCD has 4 rows and 16 columns."
             44 20 68 61 73 20 34
             20 72 6F 77 73 20 61
             6E 64 20 31 36 20 63
             6F 6C 75 6D 6E 73 2E
      002EC6 00                    1750 	.db 0x00
                                   1751 	.area CSEG    (CODE)
                           0004D6  1752 Fmain$__str_4$0_0$0 == .
                                   1753 	.area CONST   (CODE)
      002EC7                       1754 ___str_4:
      002EC7 0A                    1755 	.db 0x0a
      002EC8 0D                    1756 	.db 0x0d
      002EC9 20 54 72 79 69 6E 67  1757 	.ascii " Trying to go beyond that will give you an error."
             20 74 6F 20 67 6F 20
             62 65 79 6F 6E 64 20
             74 68 61 74 20 77 69
             6C 6C 20 67 69 76 65
             20 79 6F 75 20 61 6E
             20 65 72 72 6F 72 2E
      002EFA 00                    1758 	.db 0x00
                                   1759 	.area CSEG    (CODE)
                           0004D6  1760 Fmain$__str_5$0_0$0 == .
                                   1761 	.area CONST   (CODE)
      002EFB                       1762 ___str_5:
      002EFB 0A                    1763 	.db 0x0a
      002EFC 0D                    1764 	.db 0x0d
      002EFD 20 69 66 20 79 6F 75  1765 	.ascii " if you want to print a character, we have an option for you"
             20 77 61 6E 74 20 74
             6F 20 70 72 69 6E 74
             20 61 20 63 68 61 72
             61 63 74 65 72 2C 20
             77 65 20 68 61 76 65
             20 61 6E 20 6F 70 74
             69 6F 6E 20 66 6F 72
             20 79 6F 75
      002F39 2E                    1766 	.ascii "."
      002F3A 00                    1767 	.db 0x00
                                   1768 	.area CSEG    (CODE)
                           0004D6  1769 Fmain$__str_6$0_0$0 == .
                                   1770 	.area CONST   (CODE)
      002F3B                       1771 ___str_6:
      002F3B 0A                    1772 	.db 0x0a
      002F3C 0D                    1773 	.db 0x0d
      002F3D 20 41 73 20 73 6F 6F  1774 	.ascii " As soon as you enter the program, the timer will start."
             6E 20 61 73 20 79 6F
             75 20 65 6E 74 65 72
             20 74 68 65 20 70 72
             6F 67 72 61 6D 2C 20
             74 68 65 20 74 69 6D
             65 72 20 77 69 6C 6C
             20 73 74 61 72 74 2E
      002F75 00                    1775 	.db 0x00
                                   1776 	.area CSEG    (CODE)
                           0004D6  1777 Fmain$__str_7$0_0$0 == .
                                   1778 	.area CONST   (CODE)
      002F76                       1779 ___str_7:
      002F76 0A                    1780 	.db 0x0a
      002F77 0D                    1781 	.db 0x0d
      002F78 20 49 66 20 79 6F 75  1782 	.ascii " If you are here for the first time, The timer is stopped fo"
             20 61 72 65 20 68 65
             72 65 20 66 6F 72 20
             74 68 65 20 66 69 72
             73 74 20 74 69 6D 65
             2C 20 54 68 65 20 74
             69 6D 65 72 20 69 73
             20 73 74 6F 70 70 65
             64 20 66 6F
      002FB4 72 20 6E 6F 77 2E     1783 	.ascii "r now."
      002FBA 00                    1784 	.db 0x00
                                   1785 	.area CSEG    (CODE)
                           0004D6  1786 Fmain$__str_8$0_0$0 == .
                                   1787 	.area CONST   (CODE)
      002FBB                       1788 ___str_8:
      002FBB 0A                    1789 	.db 0x0a
      002FBC 0D                    1790 	.db 0x0d
      002FBD 20 54 68 65 20 74 69  1791 	.ascii " The timer is running continuously, if you want to print the"
             6D 65 72 20 69 73 20
             72 75 6E 6E 69 6E 67
             20 63 6F 6E 74 69 6E
             75 6F 75 73 6C 79 2C
             20 69 66 20 79 6F 75
             20 77 61 6E 74 20 74
             6F 20 70 72 69 6E 74
             20 74 68 65
      002FF9 20 63 68 61 72 61 63  1792 	.ascii " character at timer's place, its impossible."
             74 65 72 20 61 74 20
             74 69 6D 65 72 27 73
             20 70 6C 61 63 65 2C
             20 69 74 73 20 69 6D
             70 6F 73 73 69 62 6C
             65 2E
      003025 00                    1793 	.db 0x00
                                   1794 	.area CSEG    (CODE)
                           0004D6  1795 Fmain$__str_9$0_0$0 == .
                                   1796 	.area CONST   (CODE)
      003026                       1797 ___str_9:
      003026 0A                    1798 	.db 0x0a
      003027 0D                    1799 	.db 0x0d
      003028 20 50 72 65 73 73 20  1800 	.ascii " Press Enter to Continue"
             45 6E 74 65 72 20 74
             6F 20 43 6F 6E 74 69
             6E 75 65
      003040 00                    1801 	.db 0x00
                                   1802 	.area CSEG    (CODE)
                           0004D6  1803 Fmain$__str_12$0_0$0 == .
                                   1804 	.area CONST   (CODE)
      003041                       1805 ___str_12:
      003041 0A                    1806 	.db 0x0a
      003042 0D                    1807 	.db 0x0d
      003043 20 59 6F 75 72 20 4F  1808 	.ascii " Your Options Are:"
             70 74 69 6F 6E 73 20
             41 72 65 3A
      003055 00                    1809 	.db 0x00
                                   1810 	.area CSEG    (CODE)
                           0004D6  1811 Fmain$__str_13$0_0$0 == .
                                   1812 	.area CONST   (CODE)
      003056                       1813 ___str_13:
      003056 0A                    1814 	.db 0x0a
      003057 0D                    1815 	.db 0x0d
      003058 20 31 2E 20 50 72 69  1816 	.ascii " 1. Print the character at the starting."
             6E 74 20 74 68 65 20
             63 68 61 72 61 63 74
             65 72 20 61 74 20 74
             68 65 20 73 74 61 72
             74 69 6E 67 2E
      003080 00                    1817 	.db 0x00
                                   1818 	.area CSEG    (CODE)
                           0004D6  1819 Fmain$__str_14$0_0$0 == .
                                   1820 	.area CONST   (CODE)
      003081                       1821 ___str_14:
      003081 0A                    1822 	.db 0x0a
      003082 0D                    1823 	.db 0x0d
      003083 20 32 2E 20 50 72 69  1824 	.ascii " 2. Print the character at your place of choosing."
             6E 74 20 74 68 65 20
             63 68 61 72 61 63 74
             65 72 20 61 74 20 79
             6F 75 72 20 70 6C 61
             63 65 20 6F 66 20 63
             68 6F 6F 73 69 6E 67
             2E
      0030B5 00                    1825 	.db 0x00
                                   1826 	.area CSEG    (CODE)
                           0004D6  1827 Fmain$__str_15$0_0$0 == .
                                   1828 	.area CONST   (CODE)
      0030B6                       1829 ___str_15:
      0030B6 0A                    1830 	.db 0x0a
      0030B7 0D                    1831 	.db 0x0d
      0030B8 20 33 2E 20 50 72 69  1832 	.ascii " 3. Print the string at the starting."
             6E 74 20 74 68 65 20
             73 74 72 69 6E 67 20
             61 74 20 74 68 65 20
             73 74 61 72 74 69 6E
             67 2E
      0030DD 00                    1833 	.db 0x00
                                   1834 	.area CSEG    (CODE)
                           0004D6  1835 Fmain$__str_16$0_0$0 == .
                                   1836 	.area CONST   (CODE)
      0030DE                       1837 ___str_16:
      0030DE 0A                    1838 	.db 0x0a
      0030DF 0D                    1839 	.db 0x0d
      0030E0 20 34 2E 20 43 6C 65  1840 	.ascii " 4. Clear the Screen."
             61 72 20 74 68 65 20
             53 63 72 65 65 6E 2E
      0030F5 00                    1841 	.db 0x00
                                   1842 	.area CSEG    (CODE)
                           0004D6  1843 Fmain$__str_17$0_0$0 == .
                                   1844 	.area CONST   (CODE)
      0030F6                       1845 ___str_17:
      0030F6 0A                    1846 	.db 0x0a
      0030F7 0D                    1847 	.db 0x0d
      0030F8 20 35 2E 20 45 78 69  1848 	.ascii " 5. Exit"
             74
      003100 00                    1849 	.db 0x00
                                   1850 	.area CSEG    (CODE)
                           0004D6  1851 Fmain$__str_18$0_0$0 == .
                                   1852 	.area CONST   (CODE)
      003101                       1853 ___str_18:
      003101 0A                    1854 	.db 0x0a
      003102 0D                    1855 	.db 0x0d
      003103 20 45 6E 74 65 72 20  1856 	.ascii " Enter your choice:"
             79 6F 75 72 20 63 68
             6F 69 63 65 3A
      003116 00                    1857 	.db 0x00
                                   1858 	.area CSEG    (CODE)
                           0004D6  1859 Fmain$__str_19$0_0$0 == .
                                   1860 	.area CONST   (CODE)
      003117                       1861 ___str_19:
      003117 0A                    1862 	.db 0x0a
      003118 0D                    1863 	.db 0x0d
      003119 45 6E 74 65 72 20 74  1864 	.ascii "Enter the character:"
             68 65 20 63 68 61 72
             61 63 74 65 72 3A
      00312D 00                    1865 	.db 0x00
                                   1866 	.area CSEG    (CODE)
                           0004D6  1867 Fmain$__str_20$0_0$0 == .
                                   1868 	.area CONST   (CODE)
      00312E                       1869 ___str_20:
      00312E 25 63                 1870 	.ascii "%c"
      003130 00                    1871 	.db 0x00
                                   1872 	.area CSEG    (CODE)
                           0004D6  1873 Fmain$__str_21$0_0$0 == .
                                   1874 	.area CONST   (CODE)
      003131                       1875 ___str_21:
      003131 0A                    1876 	.db 0x0a
      003132 0D                    1877 	.db 0x0d
      003133 45 6E 74 65 72 20 74  1878 	.ascii "Enter the row:"
             68 65 20 72 6F 77 3A
      003141 00                    1879 	.db 0x00
                                   1880 	.area CSEG    (CODE)
                           0004D6  1881 Fmain$__str_22$0_0$0 == .
                                   1882 	.area CONST   (CODE)
      003142                       1883 ___str_22:
      003142 0A                    1884 	.db 0x0a
      003143 0D                    1885 	.db 0x0d
      003144 20 53 6F 72 72 79 20  1886 	.ascii " Sorry wrong choice, Enter Again."
             77 72 6F 6E 67 20 63
             68 6F 69 63 65 2C 20
             45 6E 74 65 72 20 41
             67 61 69 6E 2E
      003165 00                    1887 	.db 0x00
                                   1888 	.area CSEG    (CODE)
                           0004D6  1889 Fmain$__str_23$0_0$0 == .
                                   1890 	.area CONST   (CODE)
      003166                       1891 ___str_23:
      003166 0A                    1892 	.db 0x0a
      003167 0D                    1893 	.db 0x0d
      003168 45 6E 74 65 72 20 74  1894 	.ascii "Enter the column:"
             68 65 20 63 6F 6C 75
             6D 6E 3A
      003179 00                    1895 	.db 0x00
                                   1896 	.area CSEG    (CODE)
                           0004D6  1897 Fmain$__str_24$0_0$0 == .
                                   1898 	.area CONST   (CODE)
      00317A                       1899 ___str_24:
      00317A 25 64                 1900 	.ascii "%d"
      00317C 00                    1901 	.db 0x00
                                   1902 	.area CSEG    (CODE)
                                   1903 	.area XINIT   (CODE)
                           000000  1904 Fmain$__xinit_count$0_0$0 == .
      003181                       1905 __xinit__count:
      003181 00 00 00 00 00 00 00  1906 	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
             00
                           000008  1907 Fmain$__xinit_flag$0_0$0 == .
      003189                       1908 __xinit__flag:
      003189 00                    1909 	.db #0x00	; 0
                           000009  1910 Fmain$__xinit_milli$0_0$0 == .
      00318A                       1911 __xinit__milli:
      00318A 00                    1912 	.db #0x00	; 0
                           00000A  1913 Fmain$__xinit_seconds$0_0$0 == .
      00318B                       1914 __xinit__seconds:
      00318B 00                    1915 	.db #0x00	; 0
                           00000B  1916 Fmain$__xinit_minutes$0_0$0 == .
      00318C                       1917 __xinit__minutes:
      00318C 00                    1918 	.db #0x00	; 0
                                   1919 	.area CABS    (ABS,CODE)
