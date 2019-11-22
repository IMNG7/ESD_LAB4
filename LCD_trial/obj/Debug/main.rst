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
                                     17 	.globl _lcd_gotoxy
                                     18 	.globl _lcd_clear
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
      00042B                        687 	.ds 23
                           000030   688 Lmain.main$choice$1_1$35==.
      000442                        689 _main_choice_65537_35:
      000442                        690 	.ds 1
                           000031   691 Lmain.main$row_value$1_1$35==.
      000443                        692 _main_row_value_65537_35:
      000443                        693 	.ds 1
                           000032   694 Lmain.main$column1$1_1$35==.
      000444                        695 _main_column1_65537_35:
      000444                        696 	.ds 1
                           000033   697 Lmain.main$column2$1_1$35==.
      000445                        698 _main_column2_65537_35:
      000445                        699 	.ds 1
                           000034   700 Lmain.main$column_value$1_1$35==.
      000446                        701 _main_column_value_65537_35:
      000446                        702 	.ds 1
                                    703 ;--------------------------------------------------------
                                    704 ; absolute external ram data
                                    705 ;--------------------------------------------------------
                                    706 	.area XABS    (ABS,XDATA)
                                    707 ;--------------------------------------------------------
                                    708 ; external initialized ram data
                                    709 ;--------------------------------------------------------
                                    710 	.area XISEG   (XDATA)
                           000000   711 G$count$0_0$0==.
      000465                        712 _count::
      000465                        713 	.ds 8
                           000008   714 G$flag$0_0$0==.
      00046D                        715 _flag::
      00046D                        716 	.ds 1
                           000009   717 G$milli$0_0$0==.
      00046E                        718 _milli::
      00046E                        719 	.ds 1
                           00000A   720 G$seconds$0_0$0==.
      00046F                        721 _seconds::
      00046F                        722 	.ds 1
                           00000B   723 G$minutes$0_0$0==.
      000470                        724 _minutes::
      000470                        725 	.ds 1
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
      002501 90 04 65         [24]  834 	mov	dptr,#_count
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
      00251B 90 04 65         [24]  858 	mov	dptr,#_count
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
      00253E 90 04 65         [24]  892 	mov	dptr,#_count
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
      002555 90 04 6D         [24]  913 	mov	dptr,#_flag
      002558 74 01            [12]  914 	mov	a,#0x01
      00255A F0               [24]  915 	movx	@dptr,a
                           000087   916 	C$main.c$37$2_0$26 ==.
                                    917 ;	main.c:37: count=0;
      00255B 90 04 65         [24]  918 	mov	dptr,#_count
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
      002570 90 04 6D         [24]  939 	mov	dptr,#_flag
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
      00258E 90 04 6D         [24]  973 	mov	dptr,#_flag
      002591 E0               [24]  974 	movx	a,@dptr
      002592 FF               [12]  975 	mov	r7,a
      002593 BF 01 02         [24]  976 	cjne	r7,#0x01,00121$
      002596 80 03            [24]  977 	sjmp	00122$
      002598                        978 00121$:
      002598 02 26 17         [24]  979 	ljmp	00107$
      00259B                        980 00122$:
                           0000C7   981 	C$main.c$48$2_0$29 ==.
                                    982 ;	main.c:48: flag=0;
      00259B 90 04 6D         [24]  983 	mov	dptr,#_flag
      00259E E4               [12]  984 	clr	a
      00259F F0               [24]  985 	movx	@dptr,a
                           0000CC   986 	C$main.c$49$2_0$29 ==.
                                    987 ;	main.c:49: milli++;
      0025A0 90 04 6E         [24]  988 	mov	dptr,#_milli
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
      0025AB 90 04 6F         [24]  999 	mov	dptr,#_seconds
      0025AE E0               [24] 1000 	movx	a,@dptr
      0025AF 04               [12] 1001 	inc	a
      0025B0 F0               [24] 1002 	movx	@dptr,a
                           0000DD  1003 	C$main.c$53$3_0$30 ==.
                                   1004 ;	main.c:53: milli=0;
      0025B1 90 04 6E         [24] 1005 	mov	dptr,#_milli
      0025B4 E4               [12] 1006 	clr	a
      0025B5 F0               [24] 1007 	movx	@dptr,a
      0025B6                       1008 00102$:
                           0000E2  1009 	C$main.c$55$2_0$29 ==.
                                   1010 ;	main.c:55: if(seconds==60)
      0025B6 90 04 6F         [24] 1011 	mov	dptr,#_seconds
      0025B9 E0               [24] 1012 	movx	a,@dptr
      0025BA FF               [12] 1013 	mov	r7,a
      0025BB BF 3C 0B         [24] 1014 	cjne	r7,#0x3c,00104$
                           0000EA  1015 	C$main.c$57$3_0$31 ==.
                                   1016 ;	main.c:57: minutes++;
      0025BE 90 04 70         [24] 1017 	mov	dptr,#_minutes
      0025C1 E0               [24] 1018 	movx	a,@dptr
      0025C2 04               [12] 1019 	inc	a
      0025C3 F0               [24] 1020 	movx	@dptr,a
                           0000F0  1021 	C$main.c$58$3_0$31 ==.
                                   1022 ;	main.c:58: seconds=0;
      0025C4 90 04 6F         [24] 1023 	mov	dptr,#_seconds
      0025C7 E4               [12] 1024 	clr	a
      0025C8 F0               [24] 1025 	movx	@dptr,a
      0025C9                       1026 00104$:
                           0000F5  1027 	C$main.c$60$2_0$29 ==.
                                   1028 ;	main.c:60: hours=minutes/60;
      0025C9 90 04 70         [24] 1029 	mov	dptr,#_minutes
      0025CC E0               [24] 1030 	movx	a,@dptr
      0025CD FF               [12] 1031 	mov	r7,a
      0025CE 7E 00            [12] 1032 	mov	r6,#0x00
      0025D0 90 04 56         [24] 1033 	mov	dptr,#__divsint_PARM_2
      0025D3 74 3C            [12] 1034 	mov	a,#0x3c
      0025D5 F0               [24] 1035 	movx	@dptr,a
      0025D6 E4               [12] 1036 	clr	a
      0025D7 A3               [24] 1037 	inc	dptr
      0025D8 F0               [24] 1038 	movx	@dptr,a
      0025D9 8F 82            [24] 1039 	mov	dpl,r7
      0025DB 8E 83            [24] 1040 	mov	dph,r6
      0025DD 12 2D B2         [24] 1041 	lcall	__divsint
      0025E0 AE 82            [24] 1042 	mov	r6,dpl
      0025E2 90 04 12         [24] 1043 	mov	dptr,#_hours
      0025E5 EE               [12] 1044 	mov	a,r6
      0025E6 F0               [24] 1045 	movx	@dptr,a
                           000113  1046 	C$main.c$61$2_0$29 ==.
                                   1047 ;	main.c:61: lcd_gotoxy(4,5);
      0025E7 90 04 10         [24] 1048 	mov	dptr,#_lcd_gotoxy_PARM_2
      0025EA 74 05            [12] 1049 	mov	a,#0x05
      0025EC F0               [24] 1050 	movx	@dptr,a
      0025ED 75 82 04         [24] 1051 	mov	dpl,#0x04
      0025F0 12 24 7A         [24] 1052 	lcall	_lcd_gotoxy
                           00011F  1053 	C$main.c$62$2_0$29 ==.
                                   1054 ;	main.c:62: inttostr(hours);
      0025F3 90 04 12         [24] 1055 	mov	dptr,#_hours
      0025F6 E0               [24] 1056 	movx	a,@dptr
      0025F7 F5 82            [12] 1057 	mov	dpl,a
      0025F9 12 2A CB         [24] 1058 	lcall	_inttostr
                           000128  1059 	C$main.c$63$2_0$29 ==.
                                   1060 ;	main.c:63: inttostr(minutes);
      0025FC 90 04 70         [24] 1061 	mov	dptr,#_minutes
      0025FF E0               [24] 1062 	movx	a,@dptr
      002600 F5 82            [12] 1063 	mov	dpl,a
      002602 12 2A CB         [24] 1064 	lcall	_inttostr
                           000131  1065 	C$main.c$64$2_0$29 ==.
                                   1066 ;	main.c:64: inttostr(seconds);
      002605 90 04 6F         [24] 1067 	mov	dptr,#_seconds
      002608 E0               [24] 1068 	movx	a,@dptr
      002609 F5 82            [12] 1069 	mov	dpl,a
      00260B 12 2A CB         [24] 1070 	lcall	_inttostr
                           00013A  1071 	C$main.c$65$2_0$29 ==.
                                   1072 ;	main.c:65: inttostr(milli);
      00260E 90 04 6E         [24] 1073 	mov	dptr,#_milli
      002611 E0               [24] 1074 	movx	a,@dptr
      002612 F5 82            [12] 1075 	mov	dpl,a
      002614 12 2A CB         [24] 1076 	lcall	_inttostr
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
      002618 74 D1            [12] 1095 	mov	a,#___str_0
      00261A C0 E0            [24] 1096 	push	acc
      00261C 74 2E            [12] 1097 	mov	a,#(___str_0 >> 8)
      00261E C0 E0            [24] 1098 	push	acc
      002620 12 2B 95         [24] 1099 	lcall	_printf_tiny
      002623 15 81            [12] 1100 	dec	sp
      002625 15 81            [12] 1101 	dec	sp
                           000153  1102 	C$main.c$71$1_0$32 ==.
                                   1103 ;	main.c:71: printf_tiny("\n\r There are some instructions to read before to proceed.");
      002627 74 00            [12] 1104 	mov	a,#___str_1
      002629 C0 E0            [24] 1105 	push	acc
      00262B 74 2F            [12] 1106 	mov	a,#(___str_1 >> 8)
      00262D C0 E0            [24] 1107 	push	acc
      00262F 12 2B 95         [24] 1108 	lcall	_printf_tiny
      002632 15 81            [12] 1109 	dec	sp
      002634 15 81            [12] 1110 	dec	sp
                           000162  1111 	C$main.c$72$1_0$32 ==.
                                   1112 ;	main.c:72: printf_tiny("\n\r This lab was aimed to allow the students to learn the implementation of the LCD.");
      002636 74 3A            [12] 1113 	mov	a,#___str_2
      002638 C0 E0            [24] 1114 	push	acc
      00263A 74 2F            [12] 1115 	mov	a,#(___str_2 >> 8)
      00263C C0 E0            [24] 1116 	push	acc
      00263E 12 2B 95         [24] 1117 	lcall	_printf_tiny
      002641 15 81            [12] 1118 	dec	sp
      002643 15 81            [12] 1119 	dec	sp
                           000171  1120 	C$main.c$73$1_0$32 ==.
                                   1121 ;	main.c:73: printf_tiny("\n\r The LCD has 4 rows and 16 columns.");
      002645 74 8E            [12] 1122 	mov	a,#___str_3
      002647 C0 E0            [24] 1123 	push	acc
      002649 74 2F            [12] 1124 	mov	a,#(___str_3 >> 8)
      00264B C0 E0            [24] 1125 	push	acc
      00264D 12 2B 95         [24] 1126 	lcall	_printf_tiny
      002650 15 81            [12] 1127 	dec	sp
      002652 15 81            [12] 1128 	dec	sp
                           000180  1129 	C$main.c$74$1_0$32 ==.
                                   1130 ;	main.c:74: printf_tiny("\n\r Trying to go beyond that will give you an error.");
      002654 74 B4            [12] 1131 	mov	a,#___str_4
      002656 C0 E0            [24] 1132 	push	acc
      002658 74 2F            [12] 1133 	mov	a,#(___str_4 >> 8)
      00265A C0 E0            [24] 1134 	push	acc
      00265C 12 2B 95         [24] 1135 	lcall	_printf_tiny
      00265F 15 81            [12] 1136 	dec	sp
      002661 15 81            [12] 1137 	dec	sp
                           00018F  1138 	C$main.c$75$1_0$32 ==.
                                   1139 ;	main.c:75: printf_tiny("\n\r if you want to print a character, we have an option for you.");
      002663 74 E8            [12] 1140 	mov	a,#___str_5
      002665 C0 E0            [24] 1141 	push	acc
      002667 74 2F            [12] 1142 	mov	a,#(___str_5 >> 8)
      002669 C0 E0            [24] 1143 	push	acc
      00266B 12 2B 95         [24] 1144 	lcall	_printf_tiny
      00266E 15 81            [12] 1145 	dec	sp
      002670 15 81            [12] 1146 	dec	sp
                           00019E  1147 	C$main.c$76$1_0$32 ==.
                                   1148 ;	main.c:76: printf_tiny("\n\r As soon as you enter the program, the timer will start.");
      002672 74 28            [12] 1149 	mov	a,#___str_6
      002674 C0 E0            [24] 1150 	push	acc
      002676 74 30            [12] 1151 	mov	a,#(___str_6 >> 8)
      002678 C0 E0            [24] 1152 	push	acc
      00267A 12 2B 95         [24] 1153 	lcall	_printf_tiny
      00267D 15 81            [12] 1154 	dec	sp
      00267F 15 81            [12] 1155 	dec	sp
                           0001AD  1156 	C$main.c$77$1_0$32 ==.
                                   1157 ;	main.c:77: printf_tiny("\n\r If you are here for the first time, The timer is stopped for now.");
      002681 74 63            [12] 1158 	mov	a,#___str_7
      002683 C0 E0            [24] 1159 	push	acc
      002685 74 30            [12] 1160 	mov	a,#(___str_7 >> 8)
      002687 C0 E0            [24] 1161 	push	acc
      002689 12 2B 95         [24] 1162 	lcall	_printf_tiny
      00268C 15 81            [12] 1163 	dec	sp
      00268E 15 81            [12] 1164 	dec	sp
                           0001BC  1165 	C$main.c$78$1_0$32 ==.
                                   1166 ;	main.c:78: printf_tiny("\n\r The timer is running continuously, if you want to print the character at timer's place, its impossible.");
      002690 74 A8            [12] 1167 	mov	a,#___str_8
      002692 C0 E0            [24] 1168 	push	acc
      002694 74 30            [12] 1169 	mov	a,#(___str_8 >> 8)
      002696 C0 E0            [24] 1170 	push	acc
      002698 12 2B 95         [24] 1171 	lcall	_printf_tiny
      00269B 15 81            [12] 1172 	dec	sp
      00269D 15 81            [12] 1173 	dec	sp
                           0001CB  1174 	C$main.c$79$1_0$32 ==.
                                   1175 ;	main.c:79: printf_tiny("\n\r Press Enter to Continue");
      00269F 74 13            [12] 1176 	mov	a,#___str_9
      0026A1 C0 E0            [24] 1177 	push	acc
      0026A3 74 31            [12] 1178 	mov	a,#(___str_9 >> 8)
      0026A5 C0 E0            [24] 1179 	push	acc
      0026A7 12 2B 95         [24] 1180 	lcall	_printf_tiny
      0026AA 15 81            [12] 1181 	dec	sp
      0026AC 15 81            [12] 1182 	dec	sp
                           0001DA  1183 	C$main.c$80$1_0$32 ==.
                                   1184 ;	main.c:80: getchar();
      0026AE 12 2B 82         [24] 1185 	lcall	_getchar
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
                                   1285 ;	main.c:84: char b[]={"My Name is Nitik Gupta"};
      002741 90 04 2B         [24] 1286 	mov	dptr,#_main_b_65536_34
      002744 74 4D            [12] 1287 	mov	a,#0x4d
      002746 F0               [24] 1288 	movx	@dptr,a
      002747 90 04 2C         [24] 1289 	mov	dptr,#(_main_b_65536_34 + 0x0001)
      00274A 74 79            [12] 1290 	mov	a,#0x79
      00274C F0               [24] 1291 	movx	@dptr,a
      00274D 90 04 2D         [24] 1292 	mov	dptr,#(_main_b_65536_34 + 0x0002)
      002750 74 20            [12] 1293 	mov	a,#0x20
      002752 F0               [24] 1294 	movx	@dptr,a
      002753 90 04 2E         [24] 1295 	mov	dptr,#(_main_b_65536_34 + 0x0003)
      002756 74 4E            [12] 1296 	mov	a,#0x4e
      002758 F0               [24] 1297 	movx	@dptr,a
      002759 90 04 2F         [24] 1298 	mov	dptr,#(_main_b_65536_34 + 0x0004)
      00275C 74 61            [12] 1299 	mov	a,#0x61
      00275E F0               [24] 1300 	movx	@dptr,a
      00275F 90 04 30         [24] 1301 	mov	dptr,#(_main_b_65536_34 + 0x0005)
      002762 74 6D            [12] 1302 	mov	a,#0x6d
      002764 F0               [24] 1303 	movx	@dptr,a
      002765 90 04 31         [24] 1304 	mov	dptr,#(_main_b_65536_34 + 0x0006)
      002768 74 65            [12] 1305 	mov	a,#0x65
      00276A F0               [24] 1306 	movx	@dptr,a
      00276B 90 04 32         [24] 1307 	mov	dptr,#(_main_b_65536_34 + 0x0007)
      00276E 74 20            [12] 1308 	mov	a,#0x20
      002770 F0               [24] 1309 	movx	@dptr,a
      002771 90 04 33         [24] 1310 	mov	dptr,#(_main_b_65536_34 + 0x0008)
      002774 74 69            [12] 1311 	mov	a,#0x69
      002776 F0               [24] 1312 	movx	@dptr,a
      002777 90 04 34         [24] 1313 	mov	dptr,#(_main_b_65536_34 + 0x0009)
      00277A 74 73            [12] 1314 	mov	a,#0x73
      00277C F0               [24] 1315 	movx	@dptr,a
      00277D 90 04 35         [24] 1316 	mov	dptr,#(_main_b_65536_34 + 0x000a)
      002780 74 20            [12] 1317 	mov	a,#0x20
      002782 F0               [24] 1318 	movx	@dptr,a
      002783 90 04 36         [24] 1319 	mov	dptr,#(_main_b_65536_34 + 0x000b)
      002786 74 4E            [12] 1320 	mov	a,#0x4e
      002788 F0               [24] 1321 	movx	@dptr,a
      002789 90 04 37         [24] 1322 	mov	dptr,#(_main_b_65536_34 + 0x000c)
      00278C 74 69            [12] 1323 	mov	a,#0x69
      00278E F0               [24] 1324 	movx	@dptr,a
      00278F 90 04 38         [24] 1325 	mov	dptr,#(_main_b_65536_34 + 0x000d)
      002792 74 74            [12] 1326 	mov	a,#0x74
      002794 F0               [24] 1327 	movx	@dptr,a
      002795 90 04 39         [24] 1328 	mov	dptr,#(_main_b_65536_34 + 0x000e)
      002798 74 69            [12] 1329 	mov	a,#0x69
      00279A F0               [24] 1330 	movx	@dptr,a
      00279B 90 04 3A         [24] 1331 	mov	dptr,#(_main_b_65536_34 + 0x000f)
      00279E 74 6B            [12] 1332 	mov	a,#0x6b
      0027A0 F0               [24] 1333 	movx	@dptr,a
      0027A1 90 04 3B         [24] 1334 	mov	dptr,#(_main_b_65536_34 + 0x0010)
      0027A4 74 20            [12] 1335 	mov	a,#0x20
      0027A6 F0               [24] 1336 	movx	@dptr,a
      0027A7 90 04 3C         [24] 1337 	mov	dptr,#(_main_b_65536_34 + 0x0011)
      0027AA 74 47            [12] 1338 	mov	a,#0x47
      0027AC F0               [24] 1339 	movx	@dptr,a
      0027AD 90 04 3D         [24] 1340 	mov	dptr,#(_main_b_65536_34 + 0x0012)
      0027B0 74 75            [12] 1341 	mov	a,#0x75
      0027B2 F0               [24] 1342 	movx	@dptr,a
      0027B3 90 04 3E         [24] 1343 	mov	dptr,#(_main_b_65536_34 + 0x0013)
      0027B6 74 70            [12] 1344 	mov	a,#0x70
      0027B8 F0               [24] 1345 	movx	@dptr,a
      0027B9 90 04 3F         [24] 1346 	mov	dptr,#(_main_b_65536_34 + 0x0014)
      0027BC 74 74            [12] 1347 	mov	a,#0x74
      0027BE F0               [24] 1348 	movx	@dptr,a
      0027BF 90 04 40         [24] 1349 	mov	dptr,#(_main_b_65536_34 + 0x0015)
      0027C2 74 61            [12] 1350 	mov	a,#0x61
      0027C4 F0               [24] 1351 	movx	@dptr,a
      0027C5 90 04 41         [24] 1352 	mov	dptr,#(_main_b_65536_34 + 0x0016)
      0027C8 E4               [12] 1353 	clr	a
      0027C9 F0               [24] 1354 	movx	@dptr,a
                           0002F6  1355 	C$main.c$86$1_0$34 ==.
                                   1356 ;	main.c:86: milli=0,seconds=0,minutes=0;
      0027CA 90 04 6E         [24] 1357 	mov	dptr,#_milli
      0027CD F0               [24] 1358 	movx	@dptr,a
      0027CE 90 04 6F         [24] 1359 	mov	dptr,#_seconds
      0027D1 F0               [24] 1360 	movx	@dptr,a
      0027D2 90 04 70         [24] 1361 	mov	dptr,#_minutes
      0027D5 F0               [24] 1362 	movx	@dptr,a
                           000302  1363 	C$main.c$87$2_0$35 ==.
                                   1364 ;	main.c:87: volatile uint8_t choice=1,row_value,column1,column2,column_value;
      0027D6 90 04 42         [24] 1365 	mov	dptr,#_main_choice_65537_35
      0027D9 04               [12] 1366 	inc	a
      0027DA F0               [24] 1367 	movx	@dptr,a
                           000307  1368 	C$main.c$88$1_1$35 ==.
                                   1369 ;	main.c:88: help();
      0027DB 12 26 18         [24] 1370 	lcall	_help
                           00030A  1371 	C$main.c$89$1_1$35 ==.
                                   1372 ;	main.c:89: timer_init();
      0027DE 12 2A AD         [24] 1373 	lcall	_timer_init
                           00030D  1374 	C$main.c$93$1_1$35 ==.
                                   1375 ;	main.c:93: LCD_Init();
      0027E1 12 23 40         [24] 1376 	lcall	_LCD_Init
                           000310  1377 	C$main.c$105$1_1$35 ==.
                                   1378 ;	main.c:105: do
      0027E4                       1379 00130$:
                           000310  1380 	C$main.c$106$2_1$36 ==.
                                   1381 ;	main.c:106: {   if(choice!=0)
      0027E4 90 04 42         [24] 1382 	mov	dptr,#_main_choice_65537_35
      0027E7 E0               [24] 1383 	movx	a,@dptr
      0027E8 70 03            [24] 1384 	jnz	00184$
      0027EA 02 28 83         [24] 1385 	ljmp	00102$
      0027ED                       1386 00184$:
                           000319  1387 	C$main.c$107$3_1$37 ==.
                                   1388 ;	main.c:107: {   printf_tiny("\n\r Your Options Are:");
      0027ED 74 2E            [12] 1389 	mov	a,#___str_12
      0027EF C0 E0            [24] 1390 	push	acc
      0027F1 74 31            [12] 1391 	mov	a,#(___str_12 >> 8)
      0027F3 C0 E0            [24] 1392 	push	acc
      0027F5 12 2B 95         [24] 1393 	lcall	_printf_tiny
      0027F8 15 81            [12] 1394 	dec	sp
      0027FA 15 81            [12] 1395 	dec	sp
                           000328  1396 	C$main.c$108$3_1$37 ==.
                                   1397 ;	main.c:108: printf_tiny("\n\r 1. Print the character at the starting.");
      0027FC 74 43            [12] 1398 	mov	a,#___str_13
      0027FE C0 E0            [24] 1399 	push	acc
      002800 74 31            [12] 1400 	mov	a,#(___str_13 >> 8)
      002802 C0 E0            [24] 1401 	push	acc
      002804 12 2B 95         [24] 1402 	lcall	_printf_tiny
      002807 15 81            [12] 1403 	dec	sp
      002809 15 81            [12] 1404 	dec	sp
                           000337  1405 	C$main.c$109$3_1$37 ==.
                                   1406 ;	main.c:109: printf_tiny("\n\r 2. Print the character at your place of choosing.");
      00280B 74 6E            [12] 1407 	mov	a,#___str_14
      00280D C0 E0            [24] 1408 	push	acc
      00280F 74 31            [12] 1409 	mov	a,#(___str_14 >> 8)
      002811 C0 E0            [24] 1410 	push	acc
      002813 12 2B 95         [24] 1411 	lcall	_printf_tiny
      002816 15 81            [12] 1412 	dec	sp
      002818 15 81            [12] 1413 	dec	sp
                           000346  1414 	C$main.c$110$3_1$37 ==.
                                   1415 ;	main.c:110: printf_tiny("\n\r 3. Reset The clock.");
      00281A 74 A3            [12] 1416 	mov	a,#___str_15
      00281C C0 E0            [24] 1417 	push	acc
      00281E 74 31            [12] 1418 	mov	a,#(___str_15 >> 8)
      002820 C0 E0            [24] 1419 	push	acc
      002822 12 2B 95         [24] 1420 	lcall	_printf_tiny
      002825 15 81            [12] 1421 	dec	sp
      002827 15 81            [12] 1422 	dec	sp
                           000355  1423 	C$main.c$111$3_1$37 ==.
                                   1424 ;	main.c:111: printf_tiny("\n\r 4. Stop The clock.");
      002829 74 BA            [12] 1425 	mov	a,#___str_16
      00282B C0 E0            [24] 1426 	push	acc
      00282D 74 31            [12] 1427 	mov	a,#(___str_16 >> 8)
      00282F C0 E0            [24] 1428 	push	acc
      002831 12 2B 95         [24] 1429 	lcall	_printf_tiny
      002834 15 81            [12] 1430 	dec	sp
      002836 15 81            [12] 1431 	dec	sp
                           000364  1432 	C$main.c$112$3_1$37 ==.
                                   1433 ;	main.c:112: printf_tiny("\n\r 5. Restart The clock.");
      002838 74 D0            [12] 1434 	mov	a,#___str_17
      00283A C0 E0            [24] 1435 	push	acc
      00283C 74 31            [12] 1436 	mov	a,#(___str_17 >> 8)
      00283E C0 E0            [24] 1437 	push	acc
      002840 12 2B 95         [24] 1438 	lcall	_printf_tiny
      002843 15 81            [12] 1439 	dec	sp
      002845 15 81            [12] 1440 	dec	sp
                           000373  1441 	C$main.c$113$3_1$37 ==.
                                   1442 ;	main.c:113: printf_tiny("\n\r 6. Clear the Screen.");
      002847 74 E9            [12] 1443 	mov	a,#___str_18
      002849 C0 E0            [24] 1444 	push	acc
      00284B 74 31            [12] 1445 	mov	a,#(___str_18 >> 8)
      00284D C0 E0            [24] 1446 	push	acc
      00284F 12 2B 95         [24] 1447 	lcall	_printf_tiny
      002852 15 81            [12] 1448 	dec	sp
      002854 15 81            [12] 1449 	dec	sp
                           000382  1450 	C$main.c$114$3_1$37 ==.
                                   1451 ;	main.c:114: printf_tiny("\n\r 7. Help Menu");
      002856 74 01            [12] 1452 	mov	a,#___str_19
      002858 C0 E0            [24] 1453 	push	acc
      00285A 74 32            [12] 1454 	mov	a,#(___str_19 >> 8)
      00285C C0 E0            [24] 1455 	push	acc
      00285E 12 2B 95         [24] 1456 	lcall	_printf_tiny
      002861 15 81            [12] 1457 	dec	sp
      002863 15 81            [12] 1458 	dec	sp
                           000391  1459 	C$main.c$115$3_1$37 ==.
                                   1460 ;	main.c:115: printf_tiny("\n\r 8. Exit");
      002865 74 11            [12] 1461 	mov	a,#___str_20
      002867 C0 E0            [24] 1462 	push	acc
      002869 74 32            [12] 1463 	mov	a,#(___str_20 >> 8)
      00286B C0 E0            [24] 1464 	push	acc
      00286D 12 2B 95         [24] 1465 	lcall	_printf_tiny
      002870 15 81            [12] 1466 	dec	sp
      002872 15 81            [12] 1467 	dec	sp
                           0003A0  1468 	C$main.c$116$3_1$37 ==.
                                   1469 ;	main.c:116: printf_tiny("\n\r Enter your choice:");
      002874 74 1C            [12] 1470 	mov	a,#___str_21
      002876 C0 E0            [24] 1471 	push	acc
      002878 74 32            [12] 1472 	mov	a,#(___str_21 >> 8)
      00287A C0 E0            [24] 1473 	push	acc
      00287C 12 2B 95         [24] 1474 	lcall	_printf_tiny
      00287F 15 81            [12] 1475 	dec	sp
      002881 15 81            [12] 1476 	dec	sp
      002883                       1477 00102$:
                           0003AF  1478 	C$main.c$118$2_1$36 ==.
                                   1479 ;	main.c:118: choice=0;
      002883 90 04 42         [24] 1480 	mov	dptr,#_main_choice_65537_35
      002886 E4               [12] 1481 	clr	a
      002887 F0               [24] 1482 	movx	@dptr,a
                           0003B4  1483 	C$main.c$119$2_1$36 ==.
                                   1484 ;	main.c:119: choice=getchar();
      002888 12 2B 82         [24] 1485 	lcall	_getchar
      00288B AE 82            [24] 1486 	mov	r6,dpl
      00288D 90 04 42         [24] 1487 	mov	dptr,#_main_choice_65537_35
      002890 EE               [12] 1488 	mov	a,r6
      002891 F0               [24] 1489 	movx	@dptr,a
                           0003BE  1490 	C$main.c$120$2_1$36 ==.
                                   1491 ;	main.c:120: switch(choice)
      002892 E0               [24] 1492 	movx	a,@dptr
      002893 FF               [12] 1493 	mov	r7,a
      002894 BF 30 00         [24] 1494 	cjne	r7,#0x30,00185$
      002897                       1495 00185$:
      002897 50 03            [24] 1496 	jnc	00186$
      002899 02 2A 9F         [24] 1497 	ljmp	00131$
      00289C                       1498 00186$:
      00289C EF               [12] 1499 	mov	a,r7
      00289D 24 C7            [12] 1500 	add	a,#0xff - 0x38
      00289F 50 03            [24] 1501 	jnc	00187$
      0028A1 02 2A 9F         [24] 1502 	ljmp	00131$
      0028A4                       1503 00187$:
      0028A4 EF               [12] 1504 	mov	a,r7
      0028A5 24 D0            [12] 1505 	add	a,#0xd0
      0028A7 FF               [12] 1506 	mov	r7,a
      0028A8 24 0A            [12] 1507 	add	a,#(00188$-3-.)
      0028AA 83               [24] 1508 	movc	a,@a+pc
      0028AB F5 82            [12] 1509 	mov	dpl,a
      0028AD EF               [12] 1510 	mov	a,r7
      0028AE 24 0D            [12] 1511 	add	a,#(00189$-3-.)
      0028B0 83               [24] 1512 	movc	a,@a+pc
      0028B1 F5 83            [12] 1513 	mov	dph,a
      0028B3 E4               [12] 1514 	clr	a
      0028B4 73               [24] 1515 	jmp	@a+dptr
      0028B5                       1516 00188$:
      0028B5 9F                    1517 	.db	00131$
      0028B6 C7                    1518 	.db	00104$
      0028B7 0C                    1519 	.db	00105$
      0028B8 51                    1520 	.db	00122$
      0028B9 6F                    1521 	.db	00123$
      0028BA 82                    1522 	.db	00124$
      0028BB 86                    1523 	.db	00125$
      0028BC 8B                    1524 	.db	00126$
      0028BD 90                    1525 	.db	00127$
      0028BE                       1526 00189$:
      0028BE 2A                    1527 	.db	00131$>>8
      0028BF 28                    1528 	.db	00104$>>8
      0028C0 29                    1529 	.db	00105$>>8
      0028C1 2A                    1530 	.db	00122$>>8
      0028C2 2A                    1531 	.db	00123$>>8
      0028C3 2A                    1532 	.db	00124$>>8
      0028C4 2A                    1533 	.db	00125$>>8
      0028C5 2A                    1534 	.db	00126$>>8
      0028C6 2A                    1535 	.db	00127$>>8
                           0003F3  1536 	C$main.c$124$3_1$38 ==.
                                   1537 ;	main.c:124: case '1':   printf_tiny("\n\rEnter the character:");
      0028C7                       1538 00104$:
      0028C7 74 32            [12] 1539 	mov	a,#___str_22
      0028C9 C0 E0            [24] 1540 	push	acc
      0028CB 74 32            [12] 1541 	mov	a,#(___str_22 >> 8)
      0028CD C0 E0            [24] 1542 	push	acc
      0028CF 12 2B 95         [24] 1543 	lcall	_printf_tiny
      0028D2 15 81            [12] 1544 	dec	sp
      0028D4 15 81            [12] 1545 	dec	sp
                           000402  1546 	C$main.c$125$3_1$38 ==.
                                   1547 ;	main.c:125: ch=getchar();
      0028D6 12 2B 82         [24] 1548 	lcall	_getchar
      0028D9 AE 82            [24] 1549 	mov	r6,dpl
                           000407  1550 	C$main.c$126$3_1$38 ==.
                                   1551 ;	main.c:126: printf_tiny("%c",ch);
      0028DB 8E 05            [24] 1552 	mov	ar5,r6
      0028DD 7F 00            [12] 1553 	mov	r7,#0x00
      0028DF C0 06            [24] 1554 	push	ar6
      0028E1 C0 05            [24] 1555 	push	ar5
      0028E3 C0 07            [24] 1556 	push	ar7
      0028E5 74 49            [12] 1557 	mov	a,#___str_23
      0028E7 C0 E0            [24] 1558 	push	acc
      0028E9 74 32            [12] 1559 	mov	a,#(___str_23 >> 8)
      0028EB C0 E0            [24] 1560 	push	acc
      0028ED 12 2B 95         [24] 1561 	lcall	_printf_tiny
      0028F0 E5 81            [12] 1562 	mov	a,sp
      0028F2 24 FC            [12] 1563 	add	a,#0xfc
      0028F4 F5 81            [12] 1564 	mov	sp,a
                           000422  1565 	C$main.c$127$3_1$38 ==.
                                   1566 ;	main.c:127: lcd_gotoxy(1,1);
      0028F6 90 04 10         [24] 1567 	mov	dptr,#_lcd_gotoxy_PARM_2
      0028F9 74 01            [12] 1568 	mov	a,#0x01
      0028FB F0               [24] 1569 	movx	@dptr,a
      0028FC 75 82 01         [24] 1570 	mov	dpl,#0x01
      0028FF 12 24 7A         [24] 1571 	lcall	_lcd_gotoxy
      002902 D0 06            [24] 1572 	pop	ar6
                           000430  1573 	C$main.c$128$3_1$38 ==.
                                   1574 ;	main.c:128: LCD_putch(ch);
      002904 8E 82            [24] 1575 	mov	dpl,r6
      002906 12 23 9B         [24] 1576 	lcall	_LCD_putch
                           000435  1577 	C$main.c$129$3_1$38 ==.
                                   1578 ;	main.c:129: break;
      002909 02 2A 9F         [24] 1579 	ljmp	00131$
                           000438  1580 	C$main.c$130$3_1$38 ==.
                                   1581 ;	main.c:130: case '2':
      00290C                       1582 00105$:
                           000438  1583 	C$main.c$131$3_1$38 ==.
                                   1584 ;	main.c:131: printf_tiny("\n\rEnter the row:");
      00290C 74 4C            [12] 1585 	mov	a,#___str_24
      00290E C0 E0            [24] 1586 	push	acc
      002910 74 32            [12] 1587 	mov	a,#(___str_24 >> 8)
      002912 C0 E0            [24] 1588 	push	acc
      002914 12 2B 95         [24] 1589 	lcall	_printf_tiny
      002917 15 81            [12] 1590 	dec	sp
      002919 15 81            [12] 1591 	dec	sp
                           000447  1592 	C$main.c$132$3_1$38 ==.
                                   1593 ;	main.c:132: do
      00291B                       1594 00110$:
                           000447  1595 	C$main.c$134$4_1$39 ==.
                                   1596 ;	main.c:134: row_value=getchar();
      00291B 12 2B 82         [24] 1597 	lcall	_getchar
      00291E AE 82            [24] 1598 	mov	r6,dpl
      002920 90 04 43         [24] 1599 	mov	dptr,#_main_row_value_65537_35
      002923 EE               [12] 1600 	mov	a,r6
      002924 F0               [24] 1601 	movx	@dptr,a
                           000451  1602 	C$main.c$135$4_1$39 ==.
                                   1603 ;	main.c:135: if(row_value>'5' || row_value =='0')
      002925 E0               [24] 1604 	movx	a,@dptr
      002926 24 CA            [12] 1605 	add	a,#0xff - 0x35
      002928 40 08            [24] 1606 	jc	00106$
      00292A 90 04 43         [24] 1607 	mov	dptr,#_main_row_value_65537_35
      00292D E0               [24] 1608 	movx	a,@dptr
      00292E FF               [12] 1609 	mov	r7,a
      00292F BF 30 0F         [24] 1610 	cjne	r7,#0x30,00111$
      002932                       1611 00106$:
                           00045E  1612 	C$main.c$137$5_1$40 ==.
                                   1613 ;	main.c:137: printf_tiny("\n\r Sorry wrong choice, Enter Again.");
      002932 74 5D            [12] 1614 	mov	a,#___str_25
      002934 C0 E0            [24] 1615 	push	acc
      002936 74 32            [12] 1616 	mov	a,#(___str_25 >> 8)
      002938 C0 E0            [24] 1617 	push	acc
      00293A 12 2B 95         [24] 1618 	lcall	_printf_tiny
      00293D 15 81            [12] 1619 	dec	sp
      00293F 15 81            [12] 1620 	dec	sp
      002941                       1621 00111$:
                           00046D  1622 	C$main.c$139$3_1$38 ==.
                                   1623 ;	main.c:139: }while(!(row_value>'0' && row_value<'5'));
      002941 90 04 43         [24] 1624 	mov	dptr,#_main_row_value_65537_35
      002944 E0               [24] 1625 	movx	a,@dptr
      002945 FF               [12] 1626 	mov  r7,a
      002946 24 CF            [12] 1627 	add	a,#0xff - 0x30
      002948 50 D1            [24] 1628 	jnc	00110$
      00294A 90 04 43         [24] 1629 	mov	dptr,#_main_row_value_65537_35
      00294D E0               [24] 1630 	movx	a,@dptr
      00294E FF               [12] 1631 	mov	r7,a
      00294F BF 35 00         [24] 1632 	cjne	r7,#0x35,00194$
      002952                       1633 00194$:
      002952 50 C7            [24] 1634 	jnc	00110$
                           000480  1635 	C$main.c$140$3_1$38 ==.
                                   1636 ;	main.c:140: printf_tiny("%c",row_value);
      002954 90 04 43         [24] 1637 	mov	dptr,#_main_row_value_65537_35
      002957 E0               [24] 1638 	movx	a,@dptr
      002958 FF               [12] 1639 	mov	r7,a
      002959 7E 00            [12] 1640 	mov	r6,#0x00
      00295B C0 07            [24] 1641 	push	ar7
      00295D C0 06            [24] 1642 	push	ar6
      00295F 74 49            [12] 1643 	mov	a,#___str_23
      002961 C0 E0            [24] 1644 	push	acc
      002963 74 32            [12] 1645 	mov	a,#(___str_23 >> 8)
      002965 C0 E0            [24] 1646 	push	acc
      002967 12 2B 95         [24] 1647 	lcall	_printf_tiny
      00296A E5 81            [12] 1648 	mov	a,sp
      00296C 24 FC            [12] 1649 	add	a,#0xfc
      00296E F5 81            [12] 1650 	mov	sp,a
                           00049C  1651 	C$main.c$141$3_1$38 ==.
                                   1652 ;	main.c:141: printf_tiny("\n\rEnter the column:");
      002970 74 81            [12] 1653 	mov	a,#___str_26
      002972 C0 E0            [24] 1654 	push	acc
      002974 74 32            [12] 1655 	mov	a,#(___str_26 >> 8)
      002976 C0 E0            [24] 1656 	push	acc
      002978 12 2B 95         [24] 1657 	lcall	_printf_tiny
      00297B 15 81            [12] 1658 	dec	sp
      00297D 15 81            [12] 1659 	dec	sp
                           0004AB  1660 	C$main.c$142$3_1$38 ==.
                                   1661 ;	main.c:142: do
      00297F                       1662 00119$:
                           0004AB  1663 	C$main.c$144$4_1$41 ==.
                                   1664 ;	main.c:144: column1=getchar();
      00297F 12 2B 82         [24] 1665 	lcall	_getchar
      002982 AE 82            [24] 1666 	mov	r6,dpl
      002984 90 04 44         [24] 1667 	mov	dptr,#_main_column1_65537_35
      002987 EE               [12] 1668 	mov	a,r6
      002988 F0               [24] 1669 	movx	@dptr,a
                           0004B5  1670 	C$main.c$145$4_1$41 ==.
                                   1671 ;	main.c:145: column1=column1-'0';
      002989 E0               [24] 1672 	movx	a,@dptr
      00298A 24 D0            [12] 1673 	add	a,#0xd0
      00298C F0               [24] 1674 	movx	@dptr,a
                           0004B9  1675 	C$main.c$146$4_1$41 ==.
                                   1676 ;	main.c:146: if(column1==1||column1==0)
      00298D E0               [24] 1677 	movx	a,@dptr
      00298E FF               [12] 1678 	mov	r7,a
      00298F BF 01 02         [24] 1679 	cjne	r7,#0x01,00196$
      002992 80 06            [24] 1680 	sjmp	00113$
      002994                       1681 00196$:
      002994 90 04 44         [24] 1682 	mov	dptr,#_main_column1_65537_35
      002997 E0               [24] 1683 	movx	a,@dptr
      002998 70 23            [24] 1684 	jnz	00114$
      00299A                       1685 00113$:
                           0004C6  1686 	C$main.c$147$5_1$42 ==.
                                   1687 ;	main.c:147: {   column2=getchar();
      00299A 12 2B 82         [24] 1688 	lcall	_getchar
      00299D AE 82            [24] 1689 	mov	r6,dpl
      00299F 90 04 45         [24] 1690 	mov	dptr,#_main_column2_65537_35
      0029A2 EE               [12] 1691 	mov	a,r6
      0029A3 F0               [24] 1692 	movx	@dptr,a
                           0004D0  1693 	C$main.c$148$5_1$42 ==.
                                   1694 ;	main.c:148: column2=column2-'0';
      0029A4 E0               [24] 1695 	movx	a,@dptr
      0029A5 24 D0            [12] 1696 	add	a,#0xd0
      0029A7 F0               [24] 1697 	movx	@dptr,a
                           0004D4  1698 	C$main.c$149$5_1$42 ==.
                                   1699 ;	main.c:149: column_value=column1*10+column2;
      0029A8 90 04 44         [24] 1700 	mov	dptr,#_main_column1_65537_35
      0029AB E0               [24] 1701 	movx	a,@dptr
      0029AC 75 F0 0A         [24] 1702 	mov	b,#0x0a
      0029AF A4               [48] 1703 	mul	ab
      0029B0 FF               [12] 1704 	mov	r7,a
      0029B1 90 04 45         [24] 1705 	mov	dptr,#_main_column2_65537_35
      0029B4 E0               [24] 1706 	movx	a,@dptr
      0029B5 FE               [12] 1707 	mov	r6,a
      0029B6 90 04 46         [24] 1708 	mov	dptr,#_main_column_value_65537_35
      0029B9 2F               [12] 1709 	add	a,r7
      0029BA F0               [24] 1710 	movx	@dptr,a
      0029BB 80 0D            [24] 1711 	sjmp	00115$
      0029BD                       1712 00114$:
                           0004E9  1713 	C$main.c$153$5_1$43 ==.
                                   1714 ;	main.c:153: column2=0;
      0029BD 90 04 45         [24] 1715 	mov	dptr,#_main_column2_65537_35
      0029C0 E4               [12] 1716 	clr	a
      0029C1 F0               [24] 1717 	movx	@dptr,a
                           0004EE  1718 	C$main.c$154$5_1$43 ==.
                                   1719 ;	main.c:154: column_value=column1;
      0029C2 90 04 44         [24] 1720 	mov	dptr,#_main_column1_65537_35
      0029C5 E0               [24] 1721 	movx	a,@dptr
      0029C6 90 04 46         [24] 1722 	mov	dptr,#_main_column_value_65537_35
      0029C9 F0               [24] 1723 	movx	@dptr,a
      0029CA                       1724 00115$:
                           0004F6  1725 	C$main.c$158$4_1$41 ==.
                                   1726 ;	main.c:158: if(column_value>16)
      0029CA 90 04 46         [24] 1727 	mov	dptr,#_main_column_value_65537_35
      0029CD E0               [24] 1728 	movx	a,@dptr
      0029CE 24 EF            [12] 1729 	add	a,#0xff - 0x10
      0029D0 50 0F            [24] 1730 	jnc	00120$
                           0004FE  1731 	C$main.c$160$5_1$44 ==.
                                   1732 ;	main.c:160: printf_tiny("\n\r Sorry wrong choice, Enter Again.");
      0029D2 74 5D            [12] 1733 	mov	a,#___str_25
      0029D4 C0 E0            [24] 1734 	push	acc
      0029D6 74 32            [12] 1735 	mov	a,#(___str_25 >> 8)
      0029D8 C0 E0            [24] 1736 	push	acc
      0029DA 12 2B 95         [24] 1737 	lcall	_printf_tiny
      0029DD 15 81            [12] 1738 	dec	sp
      0029DF 15 81            [12] 1739 	dec	sp
      0029E1                       1740 00120$:
                           00050D  1741 	C$main.c$162$3_1$38 ==.
                                   1742 ;	main.c:162: }while((column_value>16));
      0029E1 90 04 46         [24] 1743 	mov	dptr,#_main_column_value_65537_35
      0029E4 E0               [24] 1744 	movx	a,@dptr
      0029E5 24 EF            [12] 1745 	add	a,#0xff - 0x10
      0029E7 40 96            [24] 1746 	jc	00119$
                           000515  1747 	C$main.c$163$3_1$38 ==.
                                   1748 ;	main.c:163: printf_tiny("%d",column_value);
      0029E9 90 04 46         [24] 1749 	mov	dptr,#_main_column_value_65537_35
      0029EC E0               [24] 1750 	movx	a,@dptr
      0029ED FF               [12] 1751 	mov	r7,a
      0029EE 7E 00            [12] 1752 	mov	r6,#0x00
      0029F0 C0 07            [24] 1753 	push	ar7
      0029F2 C0 06            [24] 1754 	push	ar6
      0029F4 74 95            [12] 1755 	mov	a,#___str_27
      0029F6 C0 E0            [24] 1756 	push	acc
      0029F8 74 32            [12] 1757 	mov	a,#(___str_27 >> 8)
      0029FA C0 E0            [24] 1758 	push	acc
      0029FC 12 2B 95         [24] 1759 	lcall	_printf_tiny
      0029FF E5 81            [12] 1760 	mov	a,sp
      002A01 24 FC            [12] 1761 	add	a,#0xfc
      002A03 F5 81            [12] 1762 	mov	sp,a
                           000531  1763 	C$main.c$164$3_1$38 ==.
                                   1764 ;	main.c:164: printf_tiny("\n\rEnter the character:");
      002A05 74 32            [12] 1765 	mov	a,#___str_22
      002A07 C0 E0            [24] 1766 	push	acc
      002A09 74 32            [12] 1767 	mov	a,#(___str_22 >> 8)
      002A0B C0 E0            [24] 1768 	push	acc
      002A0D 12 2B 95         [24] 1769 	lcall	_printf_tiny
      002A10 15 81            [12] 1770 	dec	sp
      002A12 15 81            [12] 1771 	dec	sp
                           000540  1772 	C$main.c$165$3_1$38 ==.
                                   1773 ;	main.c:165: ch=getchar();
      002A14 12 2B 82         [24] 1774 	lcall	_getchar
      002A17 AE 82            [24] 1775 	mov	r6,dpl
                           000545  1776 	C$main.c$166$3_1$38 ==.
                                   1777 ;	main.c:166: printf_tiny("%c",ch);
      002A19 8E 05            [24] 1778 	mov	ar5,r6
      002A1B 7F 00            [12] 1779 	mov	r7,#0x00
      002A1D C0 06            [24] 1780 	push	ar6
      002A1F C0 05            [24] 1781 	push	ar5
      002A21 C0 07            [24] 1782 	push	ar7
      002A23 74 49            [12] 1783 	mov	a,#___str_23
      002A25 C0 E0            [24] 1784 	push	acc
      002A27 74 32            [12] 1785 	mov	a,#(___str_23 >> 8)
      002A29 C0 E0            [24] 1786 	push	acc
      002A2B 12 2B 95         [24] 1787 	lcall	_printf_tiny
      002A2E E5 81            [12] 1788 	mov	a,sp
      002A30 24 FC            [12] 1789 	add	a,#0xfc
      002A32 F5 81            [12] 1790 	mov	sp,a
                           000560  1791 	C$main.c$167$3_1$38 ==.
                                   1792 ;	main.c:167: lcd_gotoxy(row_value-'0',column_value);
      002A34 90 04 43         [24] 1793 	mov	dptr,#_main_row_value_65537_35
      002A37 E0               [24] 1794 	movx	a,@dptr
      002A38 24 D0            [12] 1795 	add	a,#0xd0
      002A3A FF               [12] 1796 	mov	r7,a
      002A3B 90 04 46         [24] 1797 	mov	dptr,#_main_column_value_65537_35
      002A3E E0               [24] 1798 	movx	a,@dptr
      002A3F 90 04 10         [24] 1799 	mov	dptr,#_lcd_gotoxy_PARM_2
      002A42 F0               [24] 1800 	movx	@dptr,a
      002A43 8F 82            [24] 1801 	mov	dpl,r7
      002A45 12 24 7A         [24] 1802 	lcall	_lcd_gotoxy
      002A48 D0 06            [24] 1803 	pop	ar6
                           000576  1804 	C$main.c$168$3_1$38 ==.
                                   1805 ;	main.c:168: LCD_putch(ch);
      002A4A 8E 82            [24] 1806 	mov	dpl,r6
      002A4C 12 23 9B         [24] 1807 	lcall	_LCD_putch
                           00057B  1808 	C$main.c$169$3_1$38 ==.
                                   1809 ;	main.c:169: break;
                           00057B  1810 	C$main.c$171$3_1$38 ==.
                                   1811 ;	main.c:171: case '3': milli=0,seconds=0,minutes=0;
      002A4F 80 4E            [24] 1812 	sjmp	00131$
      002A51                       1813 00122$:
      002A51 90 04 6E         [24] 1814 	mov	dptr,#_milli
      002A54 E4               [12] 1815 	clr	a
      002A55 F0               [24] 1816 	movx	@dptr,a
      002A56 90 04 6F         [24] 1817 	mov	dptr,#_seconds
      002A59 F0               [24] 1818 	movx	@dptr,a
      002A5A 90 04 70         [24] 1819 	mov	dptr,#_minutes
      002A5D F0               [24] 1820 	movx	@dptr,a
                           00058A  1821 	C$main.c$172$3_1$38 ==.
                                   1822 ;	main.c:172: printf_tiny("\n\r Clock Successfully Reset");
      002A5E 74 98            [12] 1823 	mov	a,#___str_28
      002A60 C0 E0            [24] 1824 	push	acc
      002A62 74 32            [12] 1825 	mov	a,#(___str_28 >> 8)
      002A64 C0 E0            [24] 1826 	push	acc
      002A66 12 2B 95         [24] 1827 	lcall	_printf_tiny
      002A69 15 81            [12] 1828 	dec	sp
      002A6B 15 81            [12] 1829 	dec	sp
                           000599  1830 	C$main.c$173$3_1$38 ==.
                                   1831 ;	main.c:173: break;
                           000599  1832 	C$main.c$174$3_1$38 ==.
                                   1833 ;	main.c:174: case '4': TR0=0;
      002A6D 80 30            [24] 1834 	sjmp	00131$
      002A6F                       1835 00123$:
                                   1836 ;	assignBit
      002A6F C2 8C            [12] 1837 	clr	_TR0
                           00059D  1838 	C$main.c$175$3_1$38 ==.
                                   1839 ;	main.c:175: printf_tiny("\n\r LCD Cleared Successfully ");
      002A71 74 B4            [12] 1840 	mov	a,#___str_29
      002A73 C0 E0            [24] 1841 	push	acc
      002A75 74 32            [12] 1842 	mov	a,#(___str_29 >> 8)
      002A77 C0 E0            [24] 1843 	push	acc
      002A79 12 2B 95         [24] 1844 	lcall	_printf_tiny
      002A7C 15 81            [12] 1845 	dec	sp
      002A7E 15 81            [12] 1846 	dec	sp
                           0005AC  1847 	C$main.c$176$3_1$38 ==.
                                   1848 ;	main.c:176: break;
                           0005AC  1849 	C$main.c$177$3_1$38 ==.
                                   1850 ;	main.c:177: case '5':   TR0=1;
      002A80 80 1D            [24] 1851 	sjmp	00131$
      002A82                       1852 00124$:
                                   1853 ;	assignBit
      002A82 D2 8C            [12] 1854 	setb	_TR0
                           0005B0  1855 	C$main.c$178$3_1$38 ==.
                                   1856 ;	main.c:178: break;
                           0005B0  1857 	C$main.c$179$3_1$38 ==.
                                   1858 ;	main.c:179: case '6' :  lcd_clear();
      002A84 80 19            [24] 1859 	sjmp	00131$
      002A86                       1860 00125$:
      002A86 12 24 5C         [24] 1861 	lcall	_lcd_clear
                           0005B5  1862 	C$main.c$180$3_1$38 ==.
                                   1863 ;	main.c:180: break;
                           0005B5  1864 	C$main.c$181$3_1$38 ==.
                                   1865 ;	main.c:181: case '7' :  help();
      002A89 80 14            [24] 1866 	sjmp	00131$
      002A8B                       1867 00126$:
      002A8B 12 26 18         [24] 1868 	lcall	_help
                           0005BA  1869 	C$main.c$182$3_1$38 ==.
                                   1870 ;	main.c:182: break;
                           0005BA  1871 	C$main.c$183$3_1$38 ==.
                                   1872 ;	main.c:183: case '8': printf_tiny("\n\r Thank You for Participating");
      002A8E 80 0F            [24] 1873 	sjmp	00131$
      002A90                       1874 00127$:
      002A90 74 D1            [12] 1875 	mov	a,#___str_30
      002A92 C0 E0            [24] 1876 	push	acc
      002A94 74 32            [12] 1877 	mov	a,#(___str_30 >> 8)
      002A96 C0 E0            [24] 1878 	push	acc
      002A98 12 2B 95         [24] 1879 	lcall	_printf_tiny
      002A9B 15 81            [12] 1880 	dec	sp
      002A9D 15 81            [12] 1881 	dec	sp
                           0005CB  1882 	C$main.c$187$1_1$35 ==.
                                   1883 ;	main.c:187: }
      002A9F                       1884 00131$:
                           0005CB  1885 	C$main.c$188$1_1$35 ==.
                                   1886 ;	main.c:188: }while(choice!='8');
      002A9F 90 04 42         [24] 1887 	mov	dptr,#_main_choice_65537_35
      002AA2 E0               [24] 1888 	movx	a,@dptr
      002AA3 FF               [12] 1889 	mov	r7,a
      002AA4 BF 38 02         [24] 1890 	cjne	r7,#0x38,00200$
      002AA7 80 03            [24] 1891 	sjmp	00201$
      002AA9                       1892 00200$:
      002AA9 02 27 E4         [24] 1893 	ljmp	00130$
      002AAC                       1894 00201$:
                           0005D8  1895 	C$main.c$189$1_1$34 ==.
                                   1896 ;	main.c:189: }
                           0005D8  1897 	C$main.c$189$1_1$34 ==.
                           0005D8  1898 	XG$main$0$0 ==.
      002AAC 22               [24] 1899 	ret
                                   1900 	.area CSEG    (CODE)
                                   1901 	.area CONST   (CODE)
                           000000  1902 Fmain$__str_0$0_0$0 == .
                                   1903 	.area CONST   (CODE)
      002ED1                       1904 ___str_0:
      002ED1 0A                    1905 	.db 0x0a
      002ED2 0D                    1906 	.db 0x0d
      002ED3 20 57 65 6C 63 6F 6D  1907 	.ascii " Welcome to the World Of working(maybe) LCD."
             65 20 74 6F 20 74 68
             65 20 57 6F 72 6C 64
             20 4F 66 20 77 6F 72
             6B 69 6E 67 28 6D 61
             79 62 65 29 20 4C 43
             44 2E
      002EFF 00                    1908 	.db 0x00
                                   1909 	.area CSEG    (CODE)
                           0005D9  1910 Fmain$__str_1$0_0$0 == .
                                   1911 	.area CONST   (CODE)
      002F00                       1912 ___str_1:
      002F00 0A                    1913 	.db 0x0a
      002F01 0D                    1914 	.db 0x0d
      002F02 20 54 68 65 72 65 20  1915 	.ascii " There are some instructions to read before to proceed."
             61 72 65 20 73 6F 6D
             65 20 69 6E 73 74 72
             75 63 74 69 6F 6E 73
             20 74 6F 20 72 65 61
             64 20 62 65 66 6F 72
             65 20 74 6F 20 70 72
             6F 63 65 65 64 2E
      002F39 00                    1916 	.db 0x00
                                   1917 	.area CSEG    (CODE)
                           0005D9  1918 Fmain$__str_2$0_0$0 == .
                                   1919 	.area CONST   (CODE)
      002F3A                       1920 ___str_2:
      002F3A 0A                    1921 	.db 0x0a
      002F3B 0D                    1922 	.db 0x0d
      002F3C 20 54 68 69 73 20 6C  1923 	.ascii " This lab was aimed to allow the students to learn the imple"
             61 62 20 77 61 73 20
             61 69 6D 65 64 20 74
             6F 20 61 6C 6C 6F 77
             20 74 68 65 20 73 74
             75 64 65 6E 74 73 20
             74 6F 20 6C 65 61 72
             6E 20 74 68 65 20 69
             6D 70 6C 65
      002F78 6D 65 6E 74 61 74 69  1924 	.ascii "mentation of the LCD."
             6F 6E 20 6F 66 20 74
             68 65 20 4C 43 44 2E
      002F8D 00                    1925 	.db 0x00
                                   1926 	.area CSEG    (CODE)
                           0005D9  1927 Fmain$__str_3$0_0$0 == .
                                   1928 	.area CONST   (CODE)
      002F8E                       1929 ___str_3:
      002F8E 0A                    1930 	.db 0x0a
      002F8F 0D                    1931 	.db 0x0d
      002F90 20 54 68 65 20 4C 43  1932 	.ascii " The LCD has 4 rows and 16 columns."
             44 20 68 61 73 20 34
             20 72 6F 77 73 20 61
             6E 64 20 31 36 20 63
             6F 6C 75 6D 6E 73 2E
      002FB3 00                    1933 	.db 0x00
                                   1934 	.area CSEG    (CODE)
                           0005D9  1935 Fmain$__str_4$0_0$0 == .
                                   1936 	.area CONST   (CODE)
      002FB4                       1937 ___str_4:
      002FB4 0A                    1938 	.db 0x0a
      002FB5 0D                    1939 	.db 0x0d
      002FB6 20 54 72 79 69 6E 67  1940 	.ascii " Trying to go beyond that will give you an error."
             20 74 6F 20 67 6F 20
             62 65 79 6F 6E 64 20
             74 68 61 74 20 77 69
             6C 6C 20 67 69 76 65
             20 79 6F 75 20 61 6E
             20 65 72 72 6F 72 2E
      002FE7 00                    1941 	.db 0x00
                                   1942 	.area CSEG    (CODE)
                           0005D9  1943 Fmain$__str_5$0_0$0 == .
                                   1944 	.area CONST   (CODE)
      002FE8                       1945 ___str_5:
      002FE8 0A                    1946 	.db 0x0a
      002FE9 0D                    1947 	.db 0x0d
      002FEA 20 69 66 20 79 6F 75  1948 	.ascii " if you want to print a character, we have an option for you"
             20 77 61 6E 74 20 74
             6F 20 70 72 69 6E 74
             20 61 20 63 68 61 72
             61 63 74 65 72 2C 20
             77 65 20 68 61 76 65
             20 61 6E 20 6F 70 74
             69 6F 6E 20 66 6F 72
             20 79 6F 75
      003026 2E                    1949 	.ascii "."
      003027 00                    1950 	.db 0x00
                                   1951 	.area CSEG    (CODE)
                           0005D9  1952 Fmain$__str_6$0_0$0 == .
                                   1953 	.area CONST   (CODE)
      003028                       1954 ___str_6:
      003028 0A                    1955 	.db 0x0a
      003029 0D                    1956 	.db 0x0d
      00302A 20 41 73 20 73 6F 6F  1957 	.ascii " As soon as you enter the program, the timer will start."
             6E 20 61 73 20 79 6F
             75 20 65 6E 74 65 72
             20 74 68 65 20 70 72
             6F 67 72 61 6D 2C 20
             74 68 65 20 74 69 6D
             65 72 20 77 69 6C 6C
             20 73 74 61 72 74 2E
      003062 00                    1958 	.db 0x00
                                   1959 	.area CSEG    (CODE)
                           0005D9  1960 Fmain$__str_7$0_0$0 == .
                                   1961 	.area CONST   (CODE)
      003063                       1962 ___str_7:
      003063 0A                    1963 	.db 0x0a
      003064 0D                    1964 	.db 0x0d
      003065 20 49 66 20 79 6F 75  1965 	.ascii " If you are here for the first time, The timer is stopped fo"
             20 61 72 65 20 68 65
             72 65 20 66 6F 72 20
             74 68 65 20 66 69 72
             73 74 20 74 69 6D 65
             2C 20 54 68 65 20 74
             69 6D 65 72 20 69 73
             20 73 74 6F 70 70 65
             64 20 66 6F
      0030A1 72 20 6E 6F 77 2E     1966 	.ascii "r now."
      0030A7 00                    1967 	.db 0x00
                                   1968 	.area CSEG    (CODE)
                           0005D9  1969 Fmain$__str_8$0_0$0 == .
                                   1970 	.area CONST   (CODE)
      0030A8                       1971 ___str_8:
      0030A8 0A                    1972 	.db 0x0a
      0030A9 0D                    1973 	.db 0x0d
      0030AA 20 54 68 65 20 74 69  1974 	.ascii " The timer is running continuously, if you want to print the"
             6D 65 72 20 69 73 20
             72 75 6E 6E 69 6E 67
             20 63 6F 6E 74 69 6E
             75 6F 75 73 6C 79 2C
             20 69 66 20 79 6F 75
             20 77 61 6E 74 20 74
             6F 20 70 72 69 6E 74
             20 74 68 65
      0030E6 20 63 68 61 72 61 63  1975 	.ascii " character at timer's place, its impossible."
             74 65 72 20 61 74 20
             74 69 6D 65 72 27 73
             20 70 6C 61 63 65 2C
             20 69 74 73 20 69 6D
             70 6F 73 73 69 62 6C
             65 2E
      003112 00                    1976 	.db 0x00
                                   1977 	.area CSEG    (CODE)
                           0005D9  1978 Fmain$__str_9$0_0$0 == .
                                   1979 	.area CONST   (CODE)
      003113                       1980 ___str_9:
      003113 0A                    1981 	.db 0x0a
      003114 0D                    1982 	.db 0x0d
      003115 20 50 72 65 73 73 20  1983 	.ascii " Press Enter to Continue"
             45 6E 74 65 72 20 74
             6F 20 43 6F 6E 74 69
             6E 75 65
      00312D 00                    1984 	.db 0x00
                                   1985 	.area CSEG    (CODE)
                           0005D9  1986 Fmain$__str_12$0_0$0 == .
                                   1987 	.area CONST   (CODE)
      00312E                       1988 ___str_12:
      00312E 0A                    1989 	.db 0x0a
      00312F 0D                    1990 	.db 0x0d
      003130 20 59 6F 75 72 20 4F  1991 	.ascii " Your Options Are:"
             70 74 69 6F 6E 73 20
             41 72 65 3A
      003142 00                    1992 	.db 0x00
                                   1993 	.area CSEG    (CODE)
                           0005D9  1994 Fmain$__str_13$0_0$0 == .
                                   1995 	.area CONST   (CODE)
      003143                       1996 ___str_13:
      003143 0A                    1997 	.db 0x0a
      003144 0D                    1998 	.db 0x0d
      003145 20 31 2E 20 50 72 69  1999 	.ascii " 1. Print the character at the starting."
             6E 74 20 74 68 65 20
             63 68 61 72 61 63 74
             65 72 20 61 74 20 74
             68 65 20 73 74 61 72
             74 69 6E 67 2E
      00316D 00                    2000 	.db 0x00
                                   2001 	.area CSEG    (CODE)
                           0005D9  2002 Fmain$__str_14$0_0$0 == .
                                   2003 	.area CONST   (CODE)
      00316E                       2004 ___str_14:
      00316E 0A                    2005 	.db 0x0a
      00316F 0D                    2006 	.db 0x0d
      003170 20 32 2E 20 50 72 69  2007 	.ascii " 2. Print the character at your place of choosing."
             6E 74 20 74 68 65 20
             63 68 61 72 61 63 74
             65 72 20 61 74 20 79
             6F 75 72 20 70 6C 61
             63 65 20 6F 66 20 63
             68 6F 6F 73 69 6E 67
             2E
      0031A2 00                    2008 	.db 0x00
                                   2009 	.area CSEG    (CODE)
                           0005D9  2010 Fmain$__str_15$0_0$0 == .
                                   2011 	.area CONST   (CODE)
      0031A3                       2012 ___str_15:
      0031A3 0A                    2013 	.db 0x0a
      0031A4 0D                    2014 	.db 0x0d
      0031A5 20 33 2E 20 52 65 73  2015 	.ascii " 3. Reset The clock."
             65 74 20 54 68 65 20
             63 6C 6F 63 6B 2E
      0031B9 00                    2016 	.db 0x00
                                   2017 	.area CSEG    (CODE)
                           0005D9  2018 Fmain$__str_16$0_0$0 == .
                                   2019 	.area CONST   (CODE)
      0031BA                       2020 ___str_16:
      0031BA 0A                    2021 	.db 0x0a
      0031BB 0D                    2022 	.db 0x0d
      0031BC 20 34 2E 20 53 74 6F  2023 	.ascii " 4. Stop The clock."
             70 20 54 68 65 20 63
             6C 6F 63 6B 2E
      0031CF 00                    2024 	.db 0x00
                                   2025 	.area CSEG    (CODE)
                           0005D9  2026 Fmain$__str_17$0_0$0 == .
                                   2027 	.area CONST   (CODE)
      0031D0                       2028 ___str_17:
      0031D0 0A                    2029 	.db 0x0a
      0031D1 0D                    2030 	.db 0x0d
      0031D2 20 35 2E 20 52 65 73  2031 	.ascii " 5. Restart The clock."
             74 61 72 74 20 54 68
             65 20 63 6C 6F 63 6B
             2E
      0031E8 00                    2032 	.db 0x00
                                   2033 	.area CSEG    (CODE)
                           0005D9  2034 Fmain$__str_18$0_0$0 == .
                                   2035 	.area CONST   (CODE)
      0031E9                       2036 ___str_18:
      0031E9 0A                    2037 	.db 0x0a
      0031EA 0D                    2038 	.db 0x0d
      0031EB 20 36 2E 20 43 6C 65  2039 	.ascii " 6. Clear the Screen."
             61 72 20 74 68 65 20
             53 63 72 65 65 6E 2E
      003200 00                    2040 	.db 0x00
                                   2041 	.area CSEG    (CODE)
                           0005D9  2042 Fmain$__str_19$0_0$0 == .
                                   2043 	.area CONST   (CODE)
      003201                       2044 ___str_19:
      003201 0A                    2045 	.db 0x0a
      003202 0D                    2046 	.db 0x0d
      003203 20 37 2E 20 48 65 6C  2047 	.ascii " 7. Help Menu"
             70 20 4D 65 6E 75
      003210 00                    2048 	.db 0x00
                                   2049 	.area CSEG    (CODE)
                           0005D9  2050 Fmain$__str_20$0_0$0 == .
                                   2051 	.area CONST   (CODE)
      003211                       2052 ___str_20:
      003211 0A                    2053 	.db 0x0a
      003212 0D                    2054 	.db 0x0d
      003213 20 38 2E 20 45 78 69  2055 	.ascii " 8. Exit"
             74
      00321B 00                    2056 	.db 0x00
                                   2057 	.area CSEG    (CODE)
                           0005D9  2058 Fmain$__str_21$0_0$0 == .
                                   2059 	.area CONST   (CODE)
      00321C                       2060 ___str_21:
      00321C 0A                    2061 	.db 0x0a
      00321D 0D                    2062 	.db 0x0d
      00321E 20 45 6E 74 65 72 20  2063 	.ascii " Enter your choice:"
             79 6F 75 72 20 63 68
             6F 69 63 65 3A
      003231 00                    2064 	.db 0x00
                                   2065 	.area CSEG    (CODE)
                           0005D9  2066 Fmain$__str_22$0_0$0 == .
                                   2067 	.area CONST   (CODE)
      003232                       2068 ___str_22:
      003232 0A                    2069 	.db 0x0a
      003233 0D                    2070 	.db 0x0d
      003234 45 6E 74 65 72 20 74  2071 	.ascii "Enter the character:"
             68 65 20 63 68 61 72
             61 63 74 65 72 3A
      003248 00                    2072 	.db 0x00
                                   2073 	.area CSEG    (CODE)
                           0005D9  2074 Fmain$__str_23$0_0$0 == .
                                   2075 	.area CONST   (CODE)
      003249                       2076 ___str_23:
      003249 25 63                 2077 	.ascii "%c"
      00324B 00                    2078 	.db 0x00
                                   2079 	.area CSEG    (CODE)
                           0005D9  2080 Fmain$__str_24$0_0$0 == .
                                   2081 	.area CONST   (CODE)
      00324C                       2082 ___str_24:
      00324C 0A                    2083 	.db 0x0a
      00324D 0D                    2084 	.db 0x0d
      00324E 45 6E 74 65 72 20 74  2085 	.ascii "Enter the row:"
             68 65 20 72 6F 77 3A
      00325C 00                    2086 	.db 0x00
                                   2087 	.area CSEG    (CODE)
                           0005D9  2088 Fmain$__str_25$0_0$0 == .
                                   2089 	.area CONST   (CODE)
      00325D                       2090 ___str_25:
      00325D 0A                    2091 	.db 0x0a
      00325E 0D                    2092 	.db 0x0d
      00325F 20 53 6F 72 72 79 20  2093 	.ascii " Sorry wrong choice, Enter Again."
             77 72 6F 6E 67 20 63
             68 6F 69 63 65 2C 20
             45 6E 74 65 72 20 41
             67 61 69 6E 2E
      003280 00                    2094 	.db 0x00
                                   2095 	.area CSEG    (CODE)
                           0005D9  2096 Fmain$__str_26$0_0$0 == .
                                   2097 	.area CONST   (CODE)
      003281                       2098 ___str_26:
      003281 0A                    2099 	.db 0x0a
      003282 0D                    2100 	.db 0x0d
      003283 45 6E 74 65 72 20 74  2101 	.ascii "Enter the column:"
             68 65 20 63 6F 6C 75
             6D 6E 3A
      003294 00                    2102 	.db 0x00
                                   2103 	.area CSEG    (CODE)
                           0005D9  2104 Fmain$__str_27$0_0$0 == .
                                   2105 	.area CONST   (CODE)
      003295                       2106 ___str_27:
      003295 25 64                 2107 	.ascii "%d"
      003297 00                    2108 	.db 0x00
                                   2109 	.area CSEG    (CODE)
                           0005D9  2110 Fmain$__str_28$0_0$0 == .
                                   2111 	.area CONST   (CODE)
      003298                       2112 ___str_28:
      003298 0A                    2113 	.db 0x0a
      003299 0D                    2114 	.db 0x0d
      00329A 20 43 6C 6F 63 6B 20  2115 	.ascii " Clock Successfully Reset"
             53 75 63 63 65 73 73
             66 75 6C 6C 79 20 52
             65 73 65 74
      0032B3 00                    2116 	.db 0x00
                                   2117 	.area CSEG    (CODE)
                           0005D9  2118 Fmain$__str_29$0_0$0 == .
                                   2119 	.area CONST   (CODE)
      0032B4                       2120 ___str_29:
      0032B4 0A                    2121 	.db 0x0a
      0032B5 0D                    2122 	.db 0x0d
      0032B6 20 4C 43 44 20 43 6C  2123 	.ascii " LCD Cleared Successfully "
             65 61 72 65 64 20 53
             75 63 63 65 73 73 66
             75 6C 6C 79 20
      0032D0 00                    2124 	.db 0x00
                                   2125 	.area CSEG    (CODE)
                           0005D9  2126 Fmain$__str_30$0_0$0 == .
                                   2127 	.area CONST   (CODE)
      0032D1                       2128 ___str_30:
      0032D1 0A                    2129 	.db 0x0a
      0032D2 0D                    2130 	.db 0x0d
      0032D3 20 54 68 61 6E 6B 20  2131 	.ascii " Thank You for Participating"
             59 6F 75 20 66 6F 72
             20 50 61 72 74 69 63
             69 70 61 74 69 6E 67
      0032EF 00                    2132 	.db 0x00
                                   2133 	.area CSEG    (CODE)
                                   2134 	.area XINIT   (CODE)
                           000000  2135 Fmain$__xinit_count$0_0$0 == .
      0032F4                       2136 __xinit__count:
      0032F4 00 00 00 00 00 00 00  2137 	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
             00
                           000008  2138 Fmain$__xinit_flag$0_0$0 == .
      0032FC                       2139 __xinit__flag:
      0032FC 00                    2140 	.db #0x00	; 0
                           000009  2141 Fmain$__xinit_milli$0_0$0 == .
      0032FD                       2142 __xinit__milli:
      0032FD 00                    2143 	.db #0x00	; 0
                           00000A  2144 Fmain$__xinit_seconds$0_0$0 == .
      0032FE                       2145 __xinit__seconds:
      0032FE 00                    2146 	.db #0x00	; 0
                           00000B  2147 Fmain$__xinit_minutes$0_0$0 == .
      0032FF                       2148 __xinit__minutes:
      0032FF 00                    2149 	.db #0x00	; 0
                                   2150 	.area CABS    (ABS,CODE)
