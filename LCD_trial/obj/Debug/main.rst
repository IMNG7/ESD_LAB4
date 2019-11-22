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
                                     12 	.globl _time_show
                                     13 	.globl _inttostr
                                     14 	.globl _timer0_ISR
                                     15 	.globl _timer_init
                                     16 	.globl _lcd_gotoxy
                                     17 	.globl _delay
                                     18 	.globl _lcd_clear
                                     19 	.globl _LCD_putstr
                                     20 	.globl _lcdbusywait
                                     21 	.globl _LCD_Init
                                     22 	.globl _printf_tiny
                                     23 	.globl _P5_7
                                     24 	.globl _P5_6
                                     25 	.globl _P5_5
                                     26 	.globl _P5_4
                                     27 	.globl _P5_3
                                     28 	.globl _P5_2
                                     29 	.globl _P5_1
                                     30 	.globl _P5_0
                                     31 	.globl _P4_7
                                     32 	.globl _P4_6
                                     33 	.globl _P4_5
                                     34 	.globl _P4_4
                                     35 	.globl _P4_3
                                     36 	.globl _P4_2
                                     37 	.globl _P4_1
                                     38 	.globl _P4_0
                                     39 	.globl _PX0L
                                     40 	.globl _PT0L
                                     41 	.globl _PX1L
                                     42 	.globl _PT1L
                                     43 	.globl _PSL
                                     44 	.globl _PT2L
                                     45 	.globl _PPCL
                                     46 	.globl _EC
                                     47 	.globl _CCF0
                                     48 	.globl _CCF1
                                     49 	.globl _CCF2
                                     50 	.globl _CCF3
                                     51 	.globl _CCF4
                                     52 	.globl _CR
                                     53 	.globl _CF
                                     54 	.globl _TF2
                                     55 	.globl _EXF2
                                     56 	.globl _RCLK
                                     57 	.globl _TCLK
                                     58 	.globl _EXEN2
                                     59 	.globl _TR2
                                     60 	.globl _C_T2
                                     61 	.globl _CP_RL2
                                     62 	.globl _T2CON_7
                                     63 	.globl _T2CON_6
                                     64 	.globl _T2CON_5
                                     65 	.globl _T2CON_4
                                     66 	.globl _T2CON_3
                                     67 	.globl _T2CON_2
                                     68 	.globl _T2CON_1
                                     69 	.globl _T2CON_0
                                     70 	.globl _PT2
                                     71 	.globl _ET2
                                     72 	.globl _CY
                                     73 	.globl _AC
                                     74 	.globl _F0
                                     75 	.globl _RS1
                                     76 	.globl _RS0
                                     77 	.globl _OV
                                     78 	.globl _F1
                                     79 	.globl _P
                                     80 	.globl _PS
                                     81 	.globl _PT1
                                     82 	.globl _PX1
                                     83 	.globl _PT0
                                     84 	.globl _PX0
                                     85 	.globl _RD
                                     86 	.globl _WR
                                     87 	.globl _T1
                                     88 	.globl _T0
                                     89 	.globl _INT1
                                     90 	.globl _INT0
                                     91 	.globl _TXD
                                     92 	.globl _RXD
                                     93 	.globl _P3_7
                                     94 	.globl _P3_6
                                     95 	.globl _P3_5
                                     96 	.globl _P3_4
                                     97 	.globl _P3_3
                                     98 	.globl _P3_2
                                     99 	.globl _P3_1
                                    100 	.globl _P3_0
                                    101 	.globl _EA
                                    102 	.globl _ES
                                    103 	.globl _ET1
                                    104 	.globl _EX1
                                    105 	.globl _ET0
                                    106 	.globl _EX0
                                    107 	.globl _P2_7
                                    108 	.globl _P2_6
                                    109 	.globl _P2_5
                                    110 	.globl _P2_4
                                    111 	.globl _P2_3
                                    112 	.globl _P2_2
                                    113 	.globl _P2_1
                                    114 	.globl _P2_0
                                    115 	.globl _SM0
                                    116 	.globl _SM1
                                    117 	.globl _SM2
                                    118 	.globl _REN
                                    119 	.globl _TB8
                                    120 	.globl _RB8
                                    121 	.globl _TI
                                    122 	.globl _RI
                                    123 	.globl _P1_7
                                    124 	.globl _P1_6
                                    125 	.globl _P1_5
                                    126 	.globl _P1_4
                                    127 	.globl _P1_3
                                    128 	.globl _P1_2
                                    129 	.globl _P1_1
                                    130 	.globl _P1_0
                                    131 	.globl _TF1
                                    132 	.globl _TR1
                                    133 	.globl _TF0
                                    134 	.globl _TR0
                                    135 	.globl _IE1
                                    136 	.globl _IT1
                                    137 	.globl _IE0
                                    138 	.globl _IT0
                                    139 	.globl _P0_7
                                    140 	.globl _P0_6
                                    141 	.globl _P0_5
                                    142 	.globl _P0_4
                                    143 	.globl _P0_3
                                    144 	.globl _P0_2
                                    145 	.globl _P0_1
                                    146 	.globl _P0_0
                                    147 	.globl _EECON
                                    148 	.globl _KBF
                                    149 	.globl _KBE
                                    150 	.globl _KBLS
                                    151 	.globl _BRL
                                    152 	.globl _BDRCON
                                    153 	.globl _T2MOD
                                    154 	.globl _SPDAT
                                    155 	.globl _SPSTA
                                    156 	.globl _SPCON
                                    157 	.globl _SADEN
                                    158 	.globl _SADDR
                                    159 	.globl _WDTPRG
                                    160 	.globl _WDTRST
                                    161 	.globl _P5
                                    162 	.globl _P4
                                    163 	.globl _IPH1
                                    164 	.globl _IPL1
                                    165 	.globl _IPH0
                                    166 	.globl _IPL0
                                    167 	.globl _IEN1
                                    168 	.globl _IEN0
                                    169 	.globl _CMOD
                                    170 	.globl _CL
                                    171 	.globl _CH
                                    172 	.globl _CCON
                                    173 	.globl _CCAPM4
                                    174 	.globl _CCAPM3
                                    175 	.globl _CCAPM2
                                    176 	.globl _CCAPM1
                                    177 	.globl _CCAPM0
                                    178 	.globl _CCAP4L
                                    179 	.globl _CCAP3L
                                    180 	.globl _CCAP2L
                                    181 	.globl _CCAP1L
                                    182 	.globl _CCAP0L
                                    183 	.globl _CCAP4H
                                    184 	.globl _CCAP3H
                                    185 	.globl _CCAP2H
                                    186 	.globl _CCAP1H
                                    187 	.globl _CCAP0H
                                    188 	.globl _CKCON1
                                    189 	.globl _CKCON0
                                    190 	.globl _CKRL
                                    191 	.globl _AUXR1
                                    192 	.globl _AUXR
                                    193 	.globl _TH2
                                    194 	.globl _TL2
                                    195 	.globl _RCAP2H
                                    196 	.globl _RCAP2L
                                    197 	.globl _T2CON
                                    198 	.globl _B
                                    199 	.globl _ACC
                                    200 	.globl _PSW
                                    201 	.globl _IP
                                    202 	.globl _P3
                                    203 	.globl _IE
                                    204 	.globl _P2
                                    205 	.globl _SBUF
                                    206 	.globl _SCON
                                    207 	.globl _P1
                                    208 	.globl _TH1
                                    209 	.globl _TH0
                                    210 	.globl _TL1
                                    211 	.globl _TL0
                                    212 	.globl _TMOD
                                    213 	.globl _TCON
                                    214 	.globl _PCON
                                    215 	.globl _DPH
                                    216 	.globl _DPL
                                    217 	.globl _SP
                                    218 	.globl _P0
                                    219 	.globl _minutes
                                    220 	.globl _seconds
                                    221 	.globl _milli
                                    222 	.globl _flag
                                    223 	.globl _count
                                    224 	.globl _DR_READ
                                    225 	.globl _DR_WRITE
                                    226 	.globl _BF_Read
                                    227 	.globl _IR_Write
                                    228 	.globl _hours
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
                           000001   682 Lmain.inttostr$a$1_0$27==.
      000413                        683 _inttostr_a_65536_27:
      000413                        684 	.ds 1
                           000002   685 Lmain.inttostr$b$1_0$28==.
      000414                        686 _inttostr_b_65536_28:
      000414                        687 	.ds 3
                           000005   688 Lmain.main$a$1_0$37==.
      000417                        689 _main_a_65536_37:
      000417                        690 	.ds 24
                           00001D   691 Lmain.main$b$1_0$37==.
      00042F                        692 _main_b_65536_37:
      00042F                        693 	.ds 6
                                    694 ;--------------------------------------------------------
                                    695 ; absolute external ram data
                                    696 ;--------------------------------------------------------
                                    697 	.area XABS    (ABS,XDATA)
                                    698 ;--------------------------------------------------------
                                    699 ; external initialized ram data
                                    700 ;--------------------------------------------------------
                                    701 	.area XISEG   (XDATA)
                           000000   702 G$count$0_0$0==.
      00044F                        703 _count::
      00044F                        704 	.ds 8
                           000008   705 G$flag$0_0$0==.
      000457                        706 _flag::
      000457                        707 	.ds 1
                           000009   708 G$milli$0_0$0==.
      000458                        709 _milli::
      000458                        710 	.ds 1
                           00000A   711 G$seconds$0_0$0==.
      000459                        712 _seconds::
      000459                        713 	.ds 1
                           00000B   714 G$minutes$0_0$0==.
      00045A                        715 _minutes::
      00045A                        716 	.ds 1
                                    717 	.area HOME    (CODE)
                                    718 	.area GSINIT0 (CODE)
                                    719 	.area GSINIT1 (CODE)
                                    720 	.area GSINIT2 (CODE)
                                    721 	.area GSINIT3 (CODE)
                                    722 	.area GSINIT4 (CODE)
                                    723 	.area GSINIT5 (CODE)
                                    724 	.area GSINIT  (CODE)
                                    725 	.area GSFINAL (CODE)
                                    726 	.area CSEG    (CODE)
                                    727 ;--------------------------------------------------------
                                    728 ; interrupt vector 
                                    729 ;--------------------------------------------------------
                                    730 	.area HOME    (CODE)
      002200                        731 __interrupt_vect:
      002200 02 22 11         [24]  732 	ljmp	__sdcc_gsinit_startup
      002203 32               [24]  733 	reti
      002204                        734 	.ds	7
      00220B 02 24 D4         [24]  735 	ljmp	_timer0_ISR
                                    736 ;--------------------------------------------------------
                                    737 ; global & static initialisations
                                    738 ;--------------------------------------------------------
                                    739 	.area HOME    (CODE)
                                    740 	.area GSINIT  (CODE)
                                    741 	.area GSFINAL (CODE)
                                    742 	.area GSINIT  (CODE)
                                    743 	.globl __sdcc_gsinit_startup
                                    744 	.globl __sdcc_program_startup
                                    745 	.globl __start__stack
                                    746 	.globl __mcs51_genXINIT
                                    747 	.globl __mcs51_genXRAMCLEAR
                                    748 	.globl __mcs51_genRAMCLEAR
                                    749 	.area GSFINAL (CODE)
      00226A 02 22 0E         [24]  750 	ljmp	__sdcc_program_startup
                                    751 ;--------------------------------------------------------
                                    752 ; Home
                                    753 ;--------------------------------------------------------
                                    754 	.area HOME    (CODE)
                                    755 	.area HOME    (CODE)
      00220E                        756 __sdcc_program_startup:
      00220E 02 26 B9         [24]  757 	ljmp	_main
                                    758 ;	return from main will return to caller
                                    759 ;--------------------------------------------------------
                                    760 ; code
                                    761 ;--------------------------------------------------------
                                    762 	.area CSEG    (CODE)
                                    763 ;------------------------------------------------------------
                                    764 ;Allocation info for local variables in function 'timer0_ISR'
                                    765 ;------------------------------------------------------------
                           000000   766 	G$timer0_ISR$0$0 ==.
                           000000   767 	C$main.c$24$0_0$24 ==.
                                    768 ;	main.c:24: void timer0_ISR() __interrupt(1)
                                    769 ;	-----------------------------------------
                                    770 ;	 function timer0_ISR
                                    771 ;	-----------------------------------------
      0024D4                        772 _timer0_ISR:
                           000007   773 	ar7 = 0x07
                           000006   774 	ar6 = 0x06
                           000005   775 	ar5 = 0x05
                           000004   776 	ar4 = 0x04
                           000003   777 	ar3 = 0x03
                           000002   778 	ar2 = 0x02
                           000001   779 	ar1 = 0x01
                           000000   780 	ar0 = 0x00
      0024D4 C0 E0            [24]  781 	push	acc
      0024D6 C0 82            [24]  782 	push	dpl
      0024D8 C0 83            [24]  783 	push	dph
      0024DA C0 07            [24]  784 	push	ar7
      0024DC C0 06            [24]  785 	push	ar6
      0024DE C0 05            [24]  786 	push	ar5
      0024E0 C0 04            [24]  787 	push	ar4
      0024E2 C0 03            [24]  788 	push	ar3
      0024E4 C0 02            [24]  789 	push	ar2
      0024E6 C0 01            [24]  790 	push	ar1
      0024E8 C0 00            [24]  791 	push	ar0
      0024EA C0 D0            [24]  792 	push	psw
      0024EC 75 D0 00         [24]  793 	mov	psw,#0x00
                           00001B   794 	C$main.c$25$1_0$24 ==.
                                    795 ;	main.c:25: {   EA=0;
                                    796 ;	assignBit
      0024EF C2 AF            [12]  797 	clr	_EA
                           00001D   798 	C$main.c$26$1_0$24 ==.
                                    799 ;	main.c:26: TR0=0;
                                    800 ;	assignBit
      0024F1 C2 8C            [12]  801 	clr	_TR0
                           00001F   802 	C$main.c$27$1_0$24 ==.
                                    803 ;	main.c:27: TF0=0;
                                    804 ;	assignBit
      0024F3 C2 8D            [12]  805 	clr	_TF0
                           000021   806 	C$main.c$28$1_0$24 ==.
                                    807 ;	main.c:28: TH0=0x4B;
      0024F5 75 8C 4B         [24]  808 	mov	_TH0,#0x4b
                           000024   809 	C$main.c$29$1_0$24 ==.
                                    810 ;	main.c:29: TL0=0xFC;
      0024F8 75 8A FC         [24]  811 	mov	_TL0,#0xfc
                           000027   812 	C$main.c$30$1_0$24 ==.
                                    813 ;	main.c:30: P1_1=!P1_1;
      0024FB B2 91            [12]  814 	cpl	_P1_1
                           000029   815 	C$main.c$31$1_0$24 ==.
                                    816 ;	main.c:31: TR0=1;
                                    817 ;	assignBit
      0024FD D2 8C            [12]  818 	setb	_TR0
                           00002B   819 	C$main.c$32$1_0$24 ==.
                                    820 ;	main.c:32: EA=1;
                                    821 ;	assignBit
      0024FF D2 AF            [12]  822 	setb	_EA
                           00002D   823 	C$main.c$33$1_0$24 ==.
                                    824 ;	main.c:33: count++;
      002501 90 04 4F         [24]  825 	mov	dptr,#_count
      002504 E0               [24]  826 	movx	a,@dptr
      002505 F8               [12]  827 	mov	r0,a
      002506 A3               [24]  828 	inc	dptr
      002507 E0               [24]  829 	movx	a,@dptr
      002508 F9               [12]  830 	mov	r1,a
      002509 A3               [24]  831 	inc	dptr
      00250A E0               [24]  832 	movx	a,@dptr
      00250B FA               [12]  833 	mov	r2,a
      00250C A3               [24]  834 	inc	dptr
      00250D E0               [24]  835 	movx	a,@dptr
      00250E FB               [12]  836 	mov	r3,a
      00250F A3               [24]  837 	inc	dptr
      002510 E0               [24]  838 	movx	a,@dptr
      002511 FC               [12]  839 	mov	r4,a
      002512 A3               [24]  840 	inc	dptr
      002513 E0               [24]  841 	movx	a,@dptr
      002514 FD               [12]  842 	mov	r5,a
      002515 A3               [24]  843 	inc	dptr
      002516 E0               [24]  844 	movx	a,@dptr
      002517 FE               [12]  845 	mov	r6,a
      002518 A3               [24]  846 	inc	dptr
      002519 E0               [24]  847 	movx	a,@dptr
      00251A FF               [12]  848 	mov	r7,a
      00251B 90 04 4F         [24]  849 	mov	dptr,#_count
      00251E 74 01            [12]  850 	mov	a,#0x01
      002520 28               [12]  851 	add	a,r0
      002521 F0               [24]  852 	movx	@dptr,a
      002522 E4               [12]  853 	clr	a
      002523 39               [12]  854 	addc	a,r1
      002524 A3               [24]  855 	inc	dptr
      002525 F0               [24]  856 	movx	@dptr,a
      002526 E4               [12]  857 	clr	a
      002527 3A               [12]  858 	addc	a,r2
      002528 A3               [24]  859 	inc	dptr
      002529 F0               [24]  860 	movx	@dptr,a
      00252A E4               [12]  861 	clr	a
      00252B 3B               [12]  862 	addc	a,r3
      00252C A3               [24]  863 	inc	dptr
      00252D F0               [24]  864 	movx	@dptr,a
      00252E E4               [12]  865 	clr	a
      00252F 3C               [12]  866 	addc	a,r4
      002530 A3               [24]  867 	inc	dptr
      002531 F0               [24]  868 	movx	@dptr,a
      002532 E4               [12]  869 	clr	a
      002533 3D               [12]  870 	addc	a,r5
      002534 A3               [24]  871 	inc	dptr
      002535 F0               [24]  872 	movx	@dptr,a
      002536 E4               [12]  873 	clr	a
      002537 3E               [12]  874 	addc	a,r6
      002538 A3               [24]  875 	inc	dptr
      002539 F0               [24]  876 	movx	@dptr,a
      00253A E4               [12]  877 	clr	a
      00253B 3F               [12]  878 	addc	a,r7
      00253C A3               [24]  879 	inc	dptr
      00253D F0               [24]  880 	movx	@dptr,a
                           00006A   881 	C$main.c$34$1_0$24 ==.
                                    882 ;	main.c:34: if(count%2==0)
      00253E 90 04 4F         [24]  883 	mov	dptr,#_count
      002541 E0               [24]  884 	movx	a,@dptr
      002542 F8               [12]  885 	mov	r0,a
      002543 A3               [24]  886 	inc	dptr
      002544 E0               [24]  887 	movx	a,@dptr
      002545 A3               [24]  888 	inc	dptr
      002546 E0               [24]  889 	movx	a,@dptr
      002547 A3               [24]  890 	inc	dptr
      002548 E0               [24]  891 	movx	a,@dptr
      002549 A3               [24]  892 	inc	dptr
      00254A E0               [24]  893 	movx	a,@dptr
      00254B A3               [24]  894 	inc	dptr
      00254C E0               [24]  895 	movx	a,@dptr
      00254D A3               [24]  896 	inc	dptr
      00254E E0               [24]  897 	movx	a,@dptr
      00254F A3               [24]  898 	inc	dptr
      002550 E0               [24]  899 	movx	a,@dptr
      002551 E8               [12]  900 	mov	a,r0
      002552 20 E0 1B         [24]  901 	jb	acc.0,00102$
                           000081   902 	C$main.c$36$2_0$25 ==.
                                    903 ;	main.c:36: flag=1;
      002555 90 04 57         [24]  904 	mov	dptr,#_flag
      002558 74 01            [12]  905 	mov	a,#0x01
      00255A F0               [24]  906 	movx	@dptr,a
                           000087   907 	C$main.c$37$2_0$25 ==.
                                    908 ;	main.c:37: count=0;
      00255B 90 04 4F         [24]  909 	mov	dptr,#_count
      00255E E4               [12]  910 	clr	a
      00255F F0               [24]  911 	movx	@dptr,a
      002560 A3               [24]  912 	inc	dptr
      002561 F0               [24]  913 	movx	@dptr,a
      002562 A3               [24]  914 	inc	dptr
      002563 F0               [24]  915 	movx	@dptr,a
      002564 A3               [24]  916 	inc	dptr
      002565 F0               [24]  917 	movx	@dptr,a
      002566 A3               [24]  918 	inc	dptr
      002567 F0               [24]  919 	movx	@dptr,a
      002568 A3               [24]  920 	inc	dptr
      002569 F0               [24]  921 	movx	@dptr,a
      00256A A3               [24]  922 	inc	dptr
      00256B F0               [24]  923 	movx	@dptr,a
      00256C A3               [24]  924 	inc	dptr
      00256D F0               [24]  925 	movx	@dptr,a
      00256E 80 05            [24]  926 	sjmp	00104$
      002570                        927 00102$:
                           00009C   928 	C$main.c$41$2_0$26 ==.
                                    929 ;	main.c:41: flag=0;
      002570 90 04 57         [24]  930 	mov	dptr,#_flag
      002573 E4               [12]  931 	clr	a
      002574 F0               [24]  932 	movx	@dptr,a
      002575                        933 00104$:
                           0000A1   934 	C$main.c$43$1_0$24 ==.
                                    935 ;	main.c:43: }
      002575 D0 D0            [24]  936 	pop	psw
      002577 D0 00            [24]  937 	pop	ar0
      002579 D0 01            [24]  938 	pop	ar1
      00257B D0 02            [24]  939 	pop	ar2
      00257D D0 03            [24]  940 	pop	ar3
      00257F D0 04            [24]  941 	pop	ar4
      002581 D0 05            [24]  942 	pop	ar5
      002583 D0 06            [24]  943 	pop	ar6
      002585 D0 07            [24]  944 	pop	ar7
      002587 D0 83            [24]  945 	pop	dph
      002589 D0 82            [24]  946 	pop	dpl
      00258B D0 E0            [24]  947 	pop	acc
                           0000B9   948 	C$main.c$43$1_0$24 ==.
                           0000B9   949 	XG$timer0_ISR$0$0 ==.
      00258D 32               [24]  950 	reti
                                    951 ;	eliminated unneeded push/pop b
                                    952 ;------------------------------------------------------------
                                    953 ;Allocation info for local variables in function 'inttostr'
                                    954 ;------------------------------------------------------------
                                    955 ;a                         Allocated with name '_inttostr_a_65536_27'
                                    956 ;b                         Allocated with name '_inttostr_b_65536_28'
                                    957 ;i                         Allocated with name '_inttostr_i_65536_28'
                                    958 ;j                         Allocated with name '_inttostr_j_65536_28'
                                    959 ;------------------------------------------------------------
                           0000BA   960 	G$inttostr$0$0 ==.
                           0000BA   961 	C$main.c$44$1_0$28 ==.
                                    962 ;	main.c:44: void inttostr(uint8_t a)
                                    963 ;	-----------------------------------------
                                    964 ;	 function inttostr
                                    965 ;	-----------------------------------------
      00258E                        966 _inttostr:
      00258E E5 82            [12]  967 	mov	a,dpl
      002590 90 04 13         [24]  968 	mov	dptr,#_inttostr_a_65536_27
      002593 F0               [24]  969 	movx	@dptr,a
                           0000C0   970 	C$main.c$46$2_0$29 ==.
                                    971 ;	main.c:46: while(a!=0)
      002594 7F 02            [12]  972 	mov	r7,#0x02
      002596                        973 00101$:
      002596 90 04 13         [24]  974 	mov	dptr,#_inttostr_a_65536_27
      002599 E0               [24]  975 	movx	a,@dptr
      00259A FE               [12]  976 	mov	r6,a
      00259B E0               [24]  977 	movx	a,@dptr
      00259C 60 54            [24]  978 	jz	00103$
                           0000CA   979 	C$main.c$47$2_0$29 ==.
                                    980 ;	main.c:47: {   i--;
      00259E 1F               [12]  981 	dec	r7
                           0000CB   982 	C$main.c$48$2_0$29 ==.
                                    983 ;	main.c:48: b[i]=(a%10)+'0';
      00259F EF               [12]  984 	mov	a,r7
      0025A0 24 14            [12]  985 	add	a,#_inttostr_b_65536_28
      0025A2 FC               [12]  986 	mov	r4,a
      0025A3 E4               [12]  987 	clr	a
      0025A4 34 04            [12]  988 	addc	a,#(_inttostr_b_65536_28 >> 8)
      0025A6 FD               [12]  989 	mov	r5,a
      0025A7 7B 00            [12]  990 	mov	r3,#0x00
      0025A9 90 04 37         [24]  991 	mov	dptr,#__modsint_PARM_2
      0025AC 74 0A            [12]  992 	mov	a,#0x0a
      0025AE F0               [24]  993 	movx	@dptr,a
      0025AF E4               [12]  994 	clr	a
      0025B0 A3               [24]  995 	inc	dptr
      0025B1 F0               [24]  996 	movx	@dptr,a
      0025B2 8E 82            [24]  997 	mov	dpl,r6
      0025B4 8B 83            [24]  998 	mov	dph,r3
      0025B6 C0 07            [24]  999 	push	ar7
      0025B8 C0 06            [24] 1000 	push	ar6
      0025BA C0 05            [24] 1001 	push	ar5
      0025BC C0 04            [24] 1002 	push	ar4
      0025BE C0 03            [24] 1003 	push	ar3
      0025C0 12 29 3D         [24] 1004 	lcall	__modsint
      0025C3 A9 82            [24] 1005 	mov	r1,dpl
      0025C5 D0 03            [24] 1006 	pop	ar3
      0025C7 D0 04            [24] 1007 	pop	ar4
      0025C9 D0 05            [24] 1008 	pop	ar5
      0025CB D0 06            [24] 1009 	pop	ar6
      0025CD 74 30            [12] 1010 	mov	a,#0x30
      0025CF 29               [12] 1011 	add	a,r1
      0025D0 8C 82            [24] 1012 	mov	dpl,r4
      0025D2 8D 83            [24] 1013 	mov	dph,r5
      0025D4 F0               [24] 1014 	movx	@dptr,a
                           000101  1015 	C$main.c$49$1_0$28 ==.
                                   1016 ;	main.c:49: a=a/10;
      0025D5 90 04 40         [24] 1017 	mov	dptr,#__divsint_PARM_2
      0025D8 74 0A            [12] 1018 	mov	a,#0x0a
      0025DA F0               [24] 1019 	movx	@dptr,a
      0025DB E4               [12] 1020 	clr	a
      0025DC A3               [24] 1021 	inc	dptr
      0025DD F0               [24] 1022 	movx	@dptr,a
      0025DE 8E 82            [24] 1023 	mov	dpl,r6
      0025E0 8B 83            [24] 1024 	mov	dph,r3
      0025E2 12 2A 51         [24] 1025 	lcall	__divsint
      0025E5 AD 82            [24] 1026 	mov	r5,dpl
      0025E7 AE 83            [24] 1027 	mov	r6,dph
      0025E9 D0 07            [24] 1028 	pop	ar7
      0025EB 90 04 13         [24] 1029 	mov	dptr,#_inttostr_a_65536_27
      0025EE ED               [12] 1030 	mov	a,r5
      0025EF F0               [24] 1031 	movx	@dptr,a
      0025F0 80 A4            [24] 1032 	sjmp	00101$
      0025F2                       1033 00103$:
                           00011E  1034 	C$main.c$51$1_0$28 ==.
                                   1035 ;	main.c:51: printf_tiny("\n\r");
      0025F2 C0 07            [24] 1036 	push	ar7
      0025F4 74 70            [12] 1037 	mov	a,#___str_0
      0025F6 C0 E0            [24] 1038 	push	acc
      0025F8 74 2B            [12] 1039 	mov	a,#(___str_0 >> 8)
      0025FA C0 E0            [24] 1040 	push	acc
      0025FC 12 28 34         [24] 1041 	lcall	_printf_tiny
      0025FF 15 81            [12] 1042 	dec	sp
      002601 15 81            [12] 1043 	dec	sp
      002603 D0 07            [24] 1044 	pop	ar7
                           000131  1045 	C$main.c$52$3_0$31 ==.
                                   1046 ;	main.c:52: for(j=0;j<i;j++)
      002605 7E 00            [12] 1047 	mov	r6,#0x00
      002607                       1048 00106$:
      002607 C3               [12] 1049 	clr	c
      002608 EE               [12] 1050 	mov	a,r6
      002609 9F               [12] 1051 	subb	a,r7
      00260A 50 10            [24] 1052 	jnc	00104$
                           000138  1053 	C$main.c$53$3_0$31 ==.
                                   1054 ;	main.c:53: {   b[j]='0';
      00260C EE               [12] 1055 	mov	a,r6
      00260D 24 14            [12] 1056 	add	a,#_inttostr_b_65536_28
      00260F F5 82            [12] 1057 	mov	dpl,a
      002611 E4               [12] 1058 	clr	a
      002612 34 04            [12] 1059 	addc	a,#(_inttostr_b_65536_28 >> 8)
      002614 F5 83            [12] 1060 	mov	dph,a
      002616 74 30            [12] 1061 	mov	a,#0x30
      002618 F0               [24] 1062 	movx	@dptr,a
                           000145  1063 	C$main.c$52$2_0$30 ==.
                                   1064 ;	main.c:52: for(j=0;j<i;j++)
      002619 0E               [12] 1065 	inc	r6
      00261A 80 EB            [24] 1066 	sjmp	00106$
      00261C                       1067 00104$:
                           000148  1068 	C$main.c$55$1_0$28 ==.
                                   1069 ;	main.c:55: lcdbusywait();
      00261C 12 22 6D         [24] 1070 	lcall	_lcdbusywait
                           00014B  1071 	C$main.c$56$1_0$28 ==.
                                   1072 ;	main.c:56: LCD_putstr(b);
      00261F 90 04 14         [24] 1073 	mov	dptr,#_inttostr_b_65536_28
      002622 12 23 AD         [24] 1074 	lcall	_LCD_putstr
                           000151  1075 	C$main.c$57$1_0$28 ==.
                                   1076 ;	main.c:57: lcdbusywait();
      002625 12 22 6D         [24] 1077 	lcall	_lcdbusywait
                           000154  1078 	C$main.c$58$1_0$28 ==.
                                   1079 ;	main.c:58: DR_WRITE=':';
      002628 90 F1 00         [24] 1080 	mov	dptr,#_DR_WRITE
      00262B 74 3A            [12] 1081 	mov	a,#0x3a
      00262D F0               [24] 1082 	movx	@dptr,a
                           00015A  1083 	C$main.c$59$1_0$28 ==.
                                   1084 ;	main.c:59: }
                           00015A  1085 	C$main.c$59$1_0$28 ==.
                           00015A  1086 	XG$inttostr$0$0 ==.
      00262E 22               [24] 1087 	ret
                                   1088 ;------------------------------------------------------------
                                   1089 ;Allocation info for local variables in function 'time_show'
                                   1090 ;------------------------------------------------------------
                           00015B  1091 	G$time_show$0$0 ==.
                           00015B  1092 	C$main.c$60$1_0$32 ==.
                                   1093 ;	main.c:60: void time_show()
                                   1094 ;	-----------------------------------------
                                   1095 ;	 function time_show
                                   1096 ;	-----------------------------------------
      00262F                       1097 _time_show:
                           00015B  1098 	C$main.c$62$1_0$32 ==.
                                   1099 ;	main.c:62: if(flag==1)
      00262F 90 04 57         [24] 1100 	mov	dptr,#_flag
      002632 E0               [24] 1101 	movx	a,@dptr
      002633 FF               [12] 1102 	mov	r7,a
      002634 BF 01 02         [24] 1103 	cjne	r7,#0x01,00121$
      002637 80 03            [24] 1104 	sjmp	00122$
      002639                       1105 00121$:
      002639 02 26 B8         [24] 1106 	ljmp	00107$
      00263C                       1107 00122$:
                           000168  1108 	C$main.c$64$2_0$33 ==.
                                   1109 ;	main.c:64: flag=0;
      00263C 90 04 57         [24] 1110 	mov	dptr,#_flag
      00263F E4               [12] 1111 	clr	a
      002640 F0               [24] 1112 	movx	@dptr,a
                           00016D  1113 	C$main.c$65$2_0$33 ==.
                                   1114 ;	main.c:65: milli++;
      002641 90 04 58         [24] 1115 	mov	dptr,#_milli
      002644 E0               [24] 1116 	movx	a,@dptr
      002645 04               [12] 1117 	inc	a
      002646 F0               [24] 1118 	movx	@dptr,a
                           000173  1119 	C$main.c$66$2_0$33 ==.
                                   1120 ;	main.c:66: if(milli==10)
      002647 E0               [24] 1121 	movx	a,@dptr
      002648 FF               [12] 1122 	mov	r7,a
      002649 BF 0A 0B         [24] 1123 	cjne	r7,#0x0a,00102$
                           000178  1124 	C$main.c$68$3_0$34 ==.
                                   1125 ;	main.c:68: seconds++;
      00264C 90 04 59         [24] 1126 	mov	dptr,#_seconds
      00264F E0               [24] 1127 	movx	a,@dptr
      002650 04               [12] 1128 	inc	a
      002651 F0               [24] 1129 	movx	@dptr,a
                           00017E  1130 	C$main.c$69$3_0$34 ==.
                                   1131 ;	main.c:69: milli=0;
      002652 90 04 58         [24] 1132 	mov	dptr,#_milli
      002655 E4               [12] 1133 	clr	a
      002656 F0               [24] 1134 	movx	@dptr,a
      002657                       1135 00102$:
                           000183  1136 	C$main.c$71$2_0$33 ==.
                                   1137 ;	main.c:71: if(seconds==60)
      002657 90 04 59         [24] 1138 	mov	dptr,#_seconds
      00265A E0               [24] 1139 	movx	a,@dptr
      00265B FF               [12] 1140 	mov	r7,a
      00265C BF 3C 0B         [24] 1141 	cjne	r7,#0x3c,00104$
                           00018B  1142 	C$main.c$73$3_0$35 ==.
                                   1143 ;	main.c:73: minutes++;
      00265F 90 04 5A         [24] 1144 	mov	dptr,#_minutes
      002662 E0               [24] 1145 	movx	a,@dptr
      002663 04               [12] 1146 	inc	a
      002664 F0               [24] 1147 	movx	@dptr,a
                           000191  1148 	C$main.c$74$3_0$35 ==.
                                   1149 ;	main.c:74: seconds=0;
      002665 90 04 59         [24] 1150 	mov	dptr,#_seconds
      002668 E4               [12] 1151 	clr	a
      002669 F0               [24] 1152 	movx	@dptr,a
      00266A                       1153 00104$:
                           000196  1154 	C$main.c$76$2_0$33 ==.
                                   1155 ;	main.c:76: hours=minutes/60;
      00266A 90 04 5A         [24] 1156 	mov	dptr,#_minutes
      00266D E0               [24] 1157 	movx	a,@dptr
      00266E FF               [12] 1158 	mov	r7,a
      00266F 7E 00            [12] 1159 	mov	r6,#0x00
      002671 90 04 40         [24] 1160 	mov	dptr,#__divsint_PARM_2
      002674 74 3C            [12] 1161 	mov	a,#0x3c
      002676 F0               [24] 1162 	movx	@dptr,a
      002677 E4               [12] 1163 	clr	a
      002678 A3               [24] 1164 	inc	dptr
      002679 F0               [24] 1165 	movx	@dptr,a
      00267A 8F 82            [24] 1166 	mov	dpl,r7
      00267C 8E 83            [24] 1167 	mov	dph,r6
      00267E 12 2A 51         [24] 1168 	lcall	__divsint
      002681 AE 82            [24] 1169 	mov	r6,dpl
      002683 90 04 12         [24] 1170 	mov	dptr,#_hours
      002686 EE               [12] 1171 	mov	a,r6
      002687 F0               [24] 1172 	movx	@dptr,a
                           0001B4  1173 	C$main.c$77$2_0$33 ==.
                                   1174 ;	main.c:77: lcd_gotoxy(4,6);
      002688 90 04 10         [24] 1175 	mov	dptr,#_lcd_gotoxy_PARM_2
      00268B 74 06            [12] 1176 	mov	a,#0x06
      00268D F0               [24] 1177 	movx	@dptr,a
      00268E 75 82 04         [24] 1178 	mov	dpl,#0x04
      002691 12 24 7A         [24] 1179 	lcall	_lcd_gotoxy
                           0001C0  1180 	C$main.c$78$2_0$33 ==.
                                   1181 ;	main.c:78: inttostr(hours);
      002694 90 04 12         [24] 1182 	mov	dptr,#_hours
      002697 E0               [24] 1183 	movx	a,@dptr
      002698 F5 82            [12] 1184 	mov	dpl,a
      00269A 12 25 8E         [24] 1185 	lcall	_inttostr
                           0001C9  1186 	C$main.c$79$2_0$33 ==.
                                   1187 ;	main.c:79: inttostr(minutes);
      00269D 90 04 5A         [24] 1188 	mov	dptr,#_minutes
      0026A0 E0               [24] 1189 	movx	a,@dptr
      0026A1 F5 82            [12] 1190 	mov	dpl,a
      0026A3 12 25 8E         [24] 1191 	lcall	_inttostr
                           0001D2  1192 	C$main.c$80$2_0$33 ==.
                                   1193 ;	main.c:80: inttostr(seconds);
      0026A6 90 04 59         [24] 1194 	mov	dptr,#_seconds
      0026A9 E0               [24] 1195 	movx	a,@dptr
      0026AA F5 82            [12] 1196 	mov	dpl,a
      0026AC 12 25 8E         [24] 1197 	lcall	_inttostr
                           0001DB  1198 	C$main.c$81$2_0$33 ==.
                                   1199 ;	main.c:81: inttostr(milli);
      0026AF 90 04 58         [24] 1200 	mov	dptr,#_milli
      0026B2 E0               [24] 1201 	movx	a,@dptr
      0026B3 F5 82            [12] 1202 	mov	dpl,a
      0026B5 12 25 8E         [24] 1203 	lcall	_inttostr
      0026B8                       1204 00107$:
                           0001E4  1205 	C$main.c$83$1_0$32 ==.
                                   1206 ;	main.c:83: }
                           0001E4  1207 	C$main.c$83$1_0$32 ==.
                           0001E4  1208 	XG$time_show$0$0 ==.
      0026B8 22               [24] 1209 	ret
                                   1210 ;------------------------------------------------------------
                                   1211 ;Allocation info for local variables in function 'main'
                                   1212 ;------------------------------------------------------------
                                   1213 ;a                         Allocated with name '_main_a_65536_37'
                                   1214 ;b                         Allocated with name '_main_b_65536_37'
                                   1215 ;------------------------------------------------------------
                           0001E5  1216 	G$main$0$0 ==.
                           0001E5  1217 	C$main.c$84$1_0$37 ==.
                                   1218 ;	main.c:84: void main(void)
                                   1219 ;	-----------------------------------------
                                   1220 ;	 function main
                                   1221 ;	-----------------------------------------
      0026B9                       1222 _main:
                           0001E5  1223 	C$main.c$85$2_0$37 ==.
                                   1224 ;	main.c:85: {   char a[]={"Ye Bik Gayi Hai gormint"};
      0026B9 90 04 17         [24] 1225 	mov	dptr,#_main_a_65536_37
      0026BC 74 59            [12] 1226 	mov	a,#0x59
      0026BE F0               [24] 1227 	movx	@dptr,a
      0026BF 90 04 18         [24] 1228 	mov	dptr,#(_main_a_65536_37 + 0x0001)
      0026C2 74 65            [12] 1229 	mov	a,#0x65
      0026C4 F0               [24] 1230 	movx	@dptr,a
      0026C5 90 04 19         [24] 1231 	mov	dptr,#(_main_a_65536_37 + 0x0002)
      0026C8 74 20            [12] 1232 	mov	a,#0x20
      0026CA F0               [24] 1233 	movx	@dptr,a
      0026CB 90 04 1A         [24] 1234 	mov	dptr,#(_main_a_65536_37 + 0x0003)
      0026CE 74 42            [12] 1235 	mov	a,#0x42
      0026D0 F0               [24] 1236 	movx	@dptr,a
      0026D1 90 04 1B         [24] 1237 	mov	dptr,#(_main_a_65536_37 + 0x0004)
      0026D4 74 69            [12] 1238 	mov	a,#0x69
      0026D6 F0               [24] 1239 	movx	@dptr,a
      0026D7 90 04 1C         [24] 1240 	mov	dptr,#(_main_a_65536_37 + 0x0005)
      0026DA 74 6B            [12] 1241 	mov	a,#0x6b
      0026DC F0               [24] 1242 	movx	@dptr,a
      0026DD 90 04 1D         [24] 1243 	mov	dptr,#(_main_a_65536_37 + 0x0006)
      0026E0 74 20            [12] 1244 	mov	a,#0x20
      0026E2 F0               [24] 1245 	movx	@dptr,a
      0026E3 90 04 1E         [24] 1246 	mov	dptr,#(_main_a_65536_37 + 0x0007)
      0026E6 74 47            [12] 1247 	mov	a,#0x47
      0026E8 F0               [24] 1248 	movx	@dptr,a
      0026E9 90 04 1F         [24] 1249 	mov	dptr,#(_main_a_65536_37 + 0x0008)
      0026EC 74 61            [12] 1250 	mov	a,#0x61
      0026EE F0               [24] 1251 	movx	@dptr,a
      0026EF 90 04 20         [24] 1252 	mov	dptr,#(_main_a_65536_37 + 0x0009)
      0026F2 74 79            [12] 1253 	mov	a,#0x79
      0026F4 F0               [24] 1254 	movx	@dptr,a
      0026F5 90 04 21         [24] 1255 	mov	dptr,#(_main_a_65536_37 + 0x000a)
      0026F8 74 69            [12] 1256 	mov	a,#0x69
      0026FA F0               [24] 1257 	movx	@dptr,a
      0026FB 90 04 22         [24] 1258 	mov	dptr,#(_main_a_65536_37 + 0x000b)
      0026FE 74 20            [12] 1259 	mov	a,#0x20
      002700 F0               [24] 1260 	movx	@dptr,a
      002701 90 04 23         [24] 1261 	mov	dptr,#(_main_a_65536_37 + 0x000c)
      002704 74 48            [12] 1262 	mov	a,#0x48
      002706 F0               [24] 1263 	movx	@dptr,a
      002707 90 04 24         [24] 1264 	mov	dptr,#(_main_a_65536_37 + 0x000d)
      00270A 74 61            [12] 1265 	mov	a,#0x61
      00270C F0               [24] 1266 	movx	@dptr,a
      00270D 90 04 25         [24] 1267 	mov	dptr,#(_main_a_65536_37 + 0x000e)
      002710 74 69            [12] 1268 	mov	a,#0x69
      002712 F0               [24] 1269 	movx	@dptr,a
      002713 90 04 26         [24] 1270 	mov	dptr,#(_main_a_65536_37 + 0x000f)
      002716 74 20            [12] 1271 	mov	a,#0x20
      002718 F0               [24] 1272 	movx	@dptr,a
      002719 90 04 27         [24] 1273 	mov	dptr,#(_main_a_65536_37 + 0x0010)
      00271C 74 67            [12] 1274 	mov	a,#0x67
      00271E F0               [24] 1275 	movx	@dptr,a
      00271F 90 04 28         [24] 1276 	mov	dptr,#(_main_a_65536_37 + 0x0011)
      002722 74 6F            [12] 1277 	mov	a,#0x6f
      002724 F0               [24] 1278 	movx	@dptr,a
      002725 90 04 29         [24] 1279 	mov	dptr,#(_main_a_65536_37 + 0x0012)
      002728 74 72            [12] 1280 	mov	a,#0x72
      00272A F0               [24] 1281 	movx	@dptr,a
      00272B 90 04 2A         [24] 1282 	mov	dptr,#(_main_a_65536_37 + 0x0013)
      00272E 74 6D            [12] 1283 	mov	a,#0x6d
      002730 F0               [24] 1284 	movx	@dptr,a
      002731 90 04 2B         [24] 1285 	mov	dptr,#(_main_a_65536_37 + 0x0014)
      002734 74 69            [12] 1286 	mov	a,#0x69
      002736 F0               [24] 1287 	movx	@dptr,a
      002737 90 04 2C         [24] 1288 	mov	dptr,#(_main_a_65536_37 + 0x0015)
      00273A 74 6E            [12] 1289 	mov	a,#0x6e
      00273C F0               [24] 1290 	movx	@dptr,a
      00273D 90 04 2D         [24] 1291 	mov	dptr,#(_main_a_65536_37 + 0x0016)
      002740 74 74            [12] 1292 	mov	a,#0x74
      002742 F0               [24] 1293 	movx	@dptr,a
      002743 90 04 2E         [24] 1294 	mov	dptr,#(_main_a_65536_37 + 0x0017)
      002746 E4               [12] 1295 	clr	a
      002747 F0               [24] 1296 	movx	@dptr,a
                           000274  1297 	C$main.c$86$2_0$37 ==.
                                   1298 ;	main.c:86: char b[]={"Nitik"};
      002748 90 04 2F         [24] 1299 	mov	dptr,#_main_b_65536_37
      00274B 74 4E            [12] 1300 	mov	a,#0x4e
      00274D F0               [24] 1301 	movx	@dptr,a
      00274E 90 04 30         [24] 1302 	mov	dptr,#(_main_b_65536_37 + 0x0001)
      002751 74 69            [12] 1303 	mov	a,#0x69
      002753 F0               [24] 1304 	movx	@dptr,a
      002754 90 04 31         [24] 1305 	mov	dptr,#(_main_b_65536_37 + 0x0002)
      002757 74 74            [12] 1306 	mov	a,#0x74
      002759 F0               [24] 1307 	movx	@dptr,a
      00275A 90 04 32         [24] 1308 	mov	dptr,#(_main_b_65536_37 + 0x0003)
      00275D 74 69            [12] 1309 	mov	a,#0x69
      00275F F0               [24] 1310 	movx	@dptr,a
      002760 90 04 33         [24] 1311 	mov	dptr,#(_main_b_65536_37 + 0x0004)
      002763 74 6B            [12] 1312 	mov	a,#0x6b
      002765 F0               [24] 1313 	movx	@dptr,a
      002766 90 04 34         [24] 1314 	mov	dptr,#(_main_b_65536_37 + 0x0005)
      002769 E4               [12] 1315 	clr	a
      00276A F0               [24] 1316 	movx	@dptr,a
                           000297  1317 	C$main.c$87$1_0$37 ==.
                                   1318 ;	main.c:87: milli=0,seconds=0,minutes=0;
      00276B 90 04 58         [24] 1319 	mov	dptr,#_milli
      00276E F0               [24] 1320 	movx	@dptr,a
      00276F 90 04 59         [24] 1321 	mov	dptr,#_seconds
      002772 F0               [24] 1322 	movx	@dptr,a
      002773 90 04 5A         [24] 1323 	mov	dptr,#_minutes
      002776 F0               [24] 1324 	movx	@dptr,a
                           0002A3  1325 	C$main.c$88$1_0$37 ==.
                                   1326 ;	main.c:88: timer_init();
      002777 12 27 DF         [24] 1327 	lcall	_timer_init
                           0002A6  1328 	C$main.c$89$1_0$37 ==.
                                   1329 ;	main.c:89: printf_tiny("\n\rNitik");
      00277A 74 73            [12] 1330 	mov	a,#___str_3
      00277C C0 E0            [24] 1331 	push	acc
      00277E 74 2B            [12] 1332 	mov	a,#(___str_3 >> 8)
      002780 C0 E0            [24] 1333 	push	acc
      002782 12 28 34         [24] 1334 	lcall	_printf_tiny
      002785 15 81            [12] 1335 	dec	sp
      002787 15 81            [12] 1336 	dec	sp
                           0002B5  1337 	C$main.c$90$1_0$37 ==.
                                   1338 ;	main.c:90: delay(100);
      002789 90 00 64         [24] 1339 	mov	dptr,#(0x64&0x00ff)
      00278C E4               [12] 1340 	clr	a
      00278D F5 F0            [12] 1341 	mov	b,a
      00278F 12 22 75         [24] 1342 	lcall	_delay
                           0002BE  1343 	C$main.c$92$1_0$37 ==.
                                   1344 ;	main.c:92: LCD_Init();
      002792 12 23 40         [24] 1345 	lcall	_LCD_Init
                           0002C1  1346 	C$main.c$93$1_0$37 ==.
                                   1347 ;	main.c:93: printf_tiny("\n\r Hello World");
      002795 74 7B            [12] 1348 	mov	a,#___str_4
      002797 C0 E0            [24] 1349 	push	acc
      002799 74 2B            [12] 1350 	mov	a,#(___str_4 >> 8)
      00279B C0 E0            [24] 1351 	push	acc
      00279D 12 28 34         [24] 1352 	lcall	_printf_tiny
      0027A0 15 81            [12] 1353 	dec	sp
      0027A2 15 81            [12] 1354 	dec	sp
                           0002D0  1355 	C$main.c$94$1_0$37 ==.
                                   1356 ;	main.c:94: delay(100);
      0027A4 90 00 64         [24] 1357 	mov	dptr,#(0x64&0x00ff)
      0027A7 E4               [12] 1358 	clr	a
      0027A8 F5 F0            [12] 1359 	mov	b,a
      0027AA 12 22 75         [24] 1360 	lcall	_delay
                           0002D9  1361 	C$main.c$97$1_0$37 ==.
                                   1362 ;	main.c:97: DR_WRITE='A';
      0027AD 90 F1 00         [24] 1363 	mov	dptr,#_DR_WRITE
      0027B0 74 41            [12] 1364 	mov	a,#0x41
      0027B2 F0               [24] 1365 	movx	@dptr,a
                           0002DF  1366 	C$main.c$98$1_0$37 ==.
                                   1367 ;	main.c:98: lcd_clear();
      0027B3 12 24 5C         [24] 1368 	lcall	_lcd_clear
                           0002E2  1369 	C$main.c$99$1_0$37 ==.
                                   1370 ;	main.c:99: lcd_gotoxy(1,0);
      0027B6 90 04 10         [24] 1371 	mov	dptr,#_lcd_gotoxy_PARM_2
      0027B9 E4               [12] 1372 	clr	a
      0027BA F0               [24] 1373 	movx	@dptr,a
      0027BB 75 82 01         [24] 1374 	mov	dpl,#0x01
      0027BE 12 24 7A         [24] 1375 	lcall	_lcd_gotoxy
                           0002ED  1376 	C$main.c$100$1_0$37 ==.
                                   1377 ;	main.c:100: LCD_putstr(a);
      0027C1 90 04 17         [24] 1378 	mov	dptr,#_main_a_65536_37
      0027C4 12 23 AD         [24] 1379 	lcall	_LCD_putstr
                           0002F3  1380 	C$main.c$101$1_0$37 ==.
                                   1381 ;	main.c:101: lcd_gotoxy(4,6);
      0027C7 90 04 10         [24] 1382 	mov	dptr,#_lcd_gotoxy_PARM_2
      0027CA 74 06            [12] 1383 	mov	a,#0x06
      0027CC F0               [24] 1384 	movx	@dptr,a
      0027CD 75 82 04         [24] 1385 	mov	dpl,#0x04
      0027D0 12 24 7A         [24] 1386 	lcall	_lcd_gotoxy
                           0002FF  1387 	C$main.c$102$1_0$37 ==.
                                   1388 ;	main.c:102: LCD_putstr(b);
      0027D3 90 04 2F         [24] 1389 	mov	dptr,#_main_b_65536_37
      0027D6 12 23 AD         [24] 1390 	lcall	_LCD_putstr
                           000305  1391 	C$main.c$103$1_0$37 ==.
                                   1392 ;	main.c:103: while(1)
      0027D9                       1393 00102$:
                           000305  1394 	C$main.c$105$2_0$38 ==.
                                   1395 ;	main.c:105: time_show();
      0027D9 12 26 2F         [24] 1396 	lcall	_time_show
      0027DC 80 FB            [24] 1397 	sjmp	00102$
                           00030A  1398 	C$main.c$107$1_0$37 ==.
                                   1399 ;	main.c:107: }
                           00030A  1400 	C$main.c$107$1_0$37 ==.
                           00030A  1401 	XG$main$0$0 ==.
      0027DE 22               [24] 1402 	ret
                                   1403 	.area CSEG    (CODE)
                                   1404 	.area CONST   (CODE)
                           000000  1405 Fmain$__str_0$0_0$0 == .
                                   1406 	.area CONST   (CODE)
      002B70                       1407 ___str_0:
      002B70 0A                    1408 	.db 0x0a
      002B71 0D                    1409 	.db 0x0d
      002B72 00                    1410 	.db 0x00
                                   1411 	.area CSEG    (CODE)
                           00030B  1412 Fmain$__str_3$0_0$0 == .
                                   1413 	.area CONST   (CODE)
      002B73                       1414 ___str_3:
      002B73 0A                    1415 	.db 0x0a
      002B74 0D                    1416 	.db 0x0d
      002B75 4E 69 74 69 6B        1417 	.ascii "Nitik"
      002B7A 00                    1418 	.db 0x00
                                   1419 	.area CSEG    (CODE)
                           00030B  1420 Fmain$__str_4$0_0$0 == .
                                   1421 	.area CONST   (CODE)
      002B7B                       1422 ___str_4:
      002B7B 0A                    1423 	.db 0x0a
      002B7C 0D                    1424 	.db 0x0d
      002B7D 20 48 65 6C 6C 6F 20  1425 	.ascii " Hello World"
             57 6F 72 6C 64
      002B89 00                    1426 	.db 0x00
                                   1427 	.area CSEG    (CODE)
                                   1428 	.area XINIT   (CODE)
                           000000  1429 Fmain$__xinit_count$0_0$0 == .
      002B8E                       1430 __xinit__count:
      002B8E 00 00 00 00 00 00 00  1431 	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
             00
                           000008  1432 Fmain$__xinit_flag$0_0$0 == .
      002B96                       1433 __xinit__flag:
      002B96 00                    1434 	.db #0x00	; 0
                           000009  1435 Fmain$__xinit_milli$0_0$0 == .
      002B97                       1436 __xinit__milli:
      002B97 00                    1437 	.db #0x00	; 0
                           00000A  1438 Fmain$__xinit_seconds$0_0$0 == .
      002B98                       1439 __xinit__seconds:
      002B98 00                    1440 	.db #0x00	; 0
                           00000B  1441 Fmain$__xinit_minutes$0_0$0 == .
      002B99                       1442 __xinit__minutes:
      002B99 00                    1443 	.db #0x00	; 0
                                   1444 	.area CABS    (ABS,CODE)
