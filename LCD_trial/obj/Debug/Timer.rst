                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.9.0 #11195 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module Timer
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _LCD_putstr
                                     12 	.globl _lcdbusywait
                                     13 	.globl _P5_7
                                     14 	.globl _P5_6
                                     15 	.globl _P5_5
                                     16 	.globl _P5_4
                                     17 	.globl _P5_3
                                     18 	.globl _P5_2
                                     19 	.globl _P5_1
                                     20 	.globl _P5_0
                                     21 	.globl _P4_7
                                     22 	.globl _P4_6
                                     23 	.globl _P4_5
                                     24 	.globl _P4_4
                                     25 	.globl _P4_3
                                     26 	.globl _P4_2
                                     27 	.globl _P4_1
                                     28 	.globl _P4_0
                                     29 	.globl _PX0L
                                     30 	.globl _PT0L
                                     31 	.globl _PX1L
                                     32 	.globl _PT1L
                                     33 	.globl _PSL
                                     34 	.globl _PT2L
                                     35 	.globl _PPCL
                                     36 	.globl _EC
                                     37 	.globl _CCF0
                                     38 	.globl _CCF1
                                     39 	.globl _CCF2
                                     40 	.globl _CCF3
                                     41 	.globl _CCF4
                                     42 	.globl _CR
                                     43 	.globl _CF
                                     44 	.globl _TF2
                                     45 	.globl _EXF2
                                     46 	.globl _RCLK
                                     47 	.globl _TCLK
                                     48 	.globl _EXEN2
                                     49 	.globl _TR2
                                     50 	.globl _C_T2
                                     51 	.globl _CP_RL2
                                     52 	.globl _T2CON_7
                                     53 	.globl _T2CON_6
                                     54 	.globl _T2CON_5
                                     55 	.globl _T2CON_4
                                     56 	.globl _T2CON_3
                                     57 	.globl _T2CON_2
                                     58 	.globl _T2CON_1
                                     59 	.globl _T2CON_0
                                     60 	.globl _PT2
                                     61 	.globl _ET2
                                     62 	.globl _CY
                                     63 	.globl _AC
                                     64 	.globl _F0
                                     65 	.globl _RS1
                                     66 	.globl _RS0
                                     67 	.globl _OV
                                     68 	.globl _F1
                                     69 	.globl _P
                                     70 	.globl _PS
                                     71 	.globl _PT1
                                     72 	.globl _PX1
                                     73 	.globl _PT0
                                     74 	.globl _PX0
                                     75 	.globl _RD
                                     76 	.globl _WR
                                     77 	.globl _T1
                                     78 	.globl _T0
                                     79 	.globl _INT1
                                     80 	.globl _INT0
                                     81 	.globl _TXD
                                     82 	.globl _RXD
                                     83 	.globl _P3_7
                                     84 	.globl _P3_6
                                     85 	.globl _P3_5
                                     86 	.globl _P3_4
                                     87 	.globl _P3_3
                                     88 	.globl _P3_2
                                     89 	.globl _P3_1
                                     90 	.globl _P3_0
                                     91 	.globl _EA
                                     92 	.globl _ES
                                     93 	.globl _ET1
                                     94 	.globl _EX1
                                     95 	.globl _ET0
                                     96 	.globl _EX0
                                     97 	.globl _P2_7
                                     98 	.globl _P2_6
                                     99 	.globl _P2_5
                                    100 	.globl _P2_4
                                    101 	.globl _P2_3
                                    102 	.globl _P2_2
                                    103 	.globl _P2_1
                                    104 	.globl _P2_0
                                    105 	.globl _SM0
                                    106 	.globl _SM1
                                    107 	.globl _SM2
                                    108 	.globl _REN
                                    109 	.globl _TB8
                                    110 	.globl _RB8
                                    111 	.globl _TI
                                    112 	.globl _RI
                                    113 	.globl _P1_7
                                    114 	.globl _P1_6
                                    115 	.globl _P1_5
                                    116 	.globl _P1_4
                                    117 	.globl _P1_3
                                    118 	.globl _P1_2
                                    119 	.globl _P1_1
                                    120 	.globl _P1_0
                                    121 	.globl _TF1
                                    122 	.globl _TR1
                                    123 	.globl _TF0
                                    124 	.globl _TR0
                                    125 	.globl _IE1
                                    126 	.globl _IT1
                                    127 	.globl _IE0
                                    128 	.globl _IT0
                                    129 	.globl _P0_7
                                    130 	.globl _P0_6
                                    131 	.globl _P0_5
                                    132 	.globl _P0_4
                                    133 	.globl _P0_3
                                    134 	.globl _P0_2
                                    135 	.globl _P0_1
                                    136 	.globl _P0_0
                                    137 	.globl _EECON
                                    138 	.globl _KBF
                                    139 	.globl _KBE
                                    140 	.globl _KBLS
                                    141 	.globl _BRL
                                    142 	.globl _BDRCON
                                    143 	.globl _T2MOD
                                    144 	.globl _SPDAT
                                    145 	.globl _SPSTA
                                    146 	.globl _SPCON
                                    147 	.globl _SADEN
                                    148 	.globl _SADDR
                                    149 	.globl _WDTPRG
                                    150 	.globl _WDTRST
                                    151 	.globl _P5
                                    152 	.globl _P4
                                    153 	.globl _IPH1
                                    154 	.globl _IPL1
                                    155 	.globl _IPH0
                                    156 	.globl _IPL0
                                    157 	.globl _IEN1
                                    158 	.globl _IEN0
                                    159 	.globl _CMOD
                                    160 	.globl _CL
                                    161 	.globl _CH
                                    162 	.globl _CCON
                                    163 	.globl _CCAPM4
                                    164 	.globl _CCAPM3
                                    165 	.globl _CCAPM2
                                    166 	.globl _CCAPM1
                                    167 	.globl _CCAPM0
                                    168 	.globl _CCAP4L
                                    169 	.globl _CCAP3L
                                    170 	.globl _CCAP2L
                                    171 	.globl _CCAP1L
                                    172 	.globl _CCAP0L
                                    173 	.globl _CCAP4H
                                    174 	.globl _CCAP3H
                                    175 	.globl _CCAP2H
                                    176 	.globl _CCAP1H
                                    177 	.globl _CCAP0H
                                    178 	.globl _CKCON1
                                    179 	.globl _CKCON0
                                    180 	.globl _CKRL
                                    181 	.globl _AUXR1
                                    182 	.globl _AUXR
                                    183 	.globl _TH2
                                    184 	.globl _TL2
                                    185 	.globl _RCAP2H
                                    186 	.globl _RCAP2L
                                    187 	.globl _T2CON
                                    188 	.globl _B
                                    189 	.globl _ACC
                                    190 	.globl _PSW
                                    191 	.globl _IP
                                    192 	.globl _P3
                                    193 	.globl _IE
                                    194 	.globl _P2
                                    195 	.globl _SBUF
                                    196 	.globl _SCON
                                    197 	.globl _P1
                                    198 	.globl _TH1
                                    199 	.globl _TH0
                                    200 	.globl _TL1
                                    201 	.globl _TL0
                                    202 	.globl _TMOD
                                    203 	.globl _TCON
                                    204 	.globl _PCON
                                    205 	.globl _DPH
                                    206 	.globl _DPL
                                    207 	.globl _SP
                                    208 	.globl _P0
                                    209 	.globl _DR_READ
                                    210 	.globl _DR_WRITE
                                    211 	.globl _BF_Read
                                    212 	.globl _IR_Write
                                    213 	.globl _timer_init
                                    214 	.globl _inttostr
                                    215 ;--------------------------------------------------------
                                    216 ; special function registers
                                    217 ;--------------------------------------------------------
                                    218 	.area RSEG    (ABS,DATA)
      000000                        219 	.org 0x0000
                           000080   220 G$P0$0_0$0 == 0x0080
                           000080   221 _P0	=	0x0080
                           000081   222 G$SP$0_0$0 == 0x0081
                           000081   223 _SP	=	0x0081
                           000082   224 G$DPL$0_0$0 == 0x0082
                           000082   225 _DPL	=	0x0082
                           000083   226 G$DPH$0_0$0 == 0x0083
                           000083   227 _DPH	=	0x0083
                           000087   228 G$PCON$0_0$0 == 0x0087
                           000087   229 _PCON	=	0x0087
                           000088   230 G$TCON$0_0$0 == 0x0088
                           000088   231 _TCON	=	0x0088
                           000089   232 G$TMOD$0_0$0 == 0x0089
                           000089   233 _TMOD	=	0x0089
                           00008A   234 G$TL0$0_0$0 == 0x008a
                           00008A   235 _TL0	=	0x008a
                           00008B   236 G$TL1$0_0$0 == 0x008b
                           00008B   237 _TL1	=	0x008b
                           00008C   238 G$TH0$0_0$0 == 0x008c
                           00008C   239 _TH0	=	0x008c
                           00008D   240 G$TH1$0_0$0 == 0x008d
                           00008D   241 _TH1	=	0x008d
                           000090   242 G$P1$0_0$0 == 0x0090
                           000090   243 _P1	=	0x0090
                           000098   244 G$SCON$0_0$0 == 0x0098
                           000098   245 _SCON	=	0x0098
                           000099   246 G$SBUF$0_0$0 == 0x0099
                           000099   247 _SBUF	=	0x0099
                           0000A0   248 G$P2$0_0$0 == 0x00a0
                           0000A0   249 _P2	=	0x00a0
                           0000A8   250 G$IE$0_0$0 == 0x00a8
                           0000A8   251 _IE	=	0x00a8
                           0000B0   252 G$P3$0_0$0 == 0x00b0
                           0000B0   253 _P3	=	0x00b0
                           0000B8   254 G$IP$0_0$0 == 0x00b8
                           0000B8   255 _IP	=	0x00b8
                           0000D0   256 G$PSW$0_0$0 == 0x00d0
                           0000D0   257 _PSW	=	0x00d0
                           0000E0   258 G$ACC$0_0$0 == 0x00e0
                           0000E0   259 _ACC	=	0x00e0
                           0000F0   260 G$B$0_0$0 == 0x00f0
                           0000F0   261 _B	=	0x00f0
                           0000C8   262 G$T2CON$0_0$0 == 0x00c8
                           0000C8   263 _T2CON	=	0x00c8
                           0000CA   264 G$RCAP2L$0_0$0 == 0x00ca
                           0000CA   265 _RCAP2L	=	0x00ca
                           0000CB   266 G$RCAP2H$0_0$0 == 0x00cb
                           0000CB   267 _RCAP2H	=	0x00cb
                           0000CC   268 G$TL2$0_0$0 == 0x00cc
                           0000CC   269 _TL2	=	0x00cc
                           0000CD   270 G$TH2$0_0$0 == 0x00cd
                           0000CD   271 _TH2	=	0x00cd
                           00008E   272 G$AUXR$0_0$0 == 0x008e
                           00008E   273 _AUXR	=	0x008e
                           0000A2   274 G$AUXR1$0_0$0 == 0x00a2
                           0000A2   275 _AUXR1	=	0x00a2
                           000097   276 G$CKRL$0_0$0 == 0x0097
                           000097   277 _CKRL	=	0x0097
                           00008F   278 G$CKCON0$0_0$0 == 0x008f
                           00008F   279 _CKCON0	=	0x008f
                           0000AF   280 G$CKCON1$0_0$0 == 0x00af
                           0000AF   281 _CKCON1	=	0x00af
                           0000FA   282 G$CCAP0H$0_0$0 == 0x00fa
                           0000FA   283 _CCAP0H	=	0x00fa
                           0000FB   284 G$CCAP1H$0_0$0 == 0x00fb
                           0000FB   285 _CCAP1H	=	0x00fb
                           0000FC   286 G$CCAP2H$0_0$0 == 0x00fc
                           0000FC   287 _CCAP2H	=	0x00fc
                           0000FD   288 G$CCAP3H$0_0$0 == 0x00fd
                           0000FD   289 _CCAP3H	=	0x00fd
                           0000FE   290 G$CCAP4H$0_0$0 == 0x00fe
                           0000FE   291 _CCAP4H	=	0x00fe
                           0000EA   292 G$CCAP0L$0_0$0 == 0x00ea
                           0000EA   293 _CCAP0L	=	0x00ea
                           0000EB   294 G$CCAP1L$0_0$0 == 0x00eb
                           0000EB   295 _CCAP1L	=	0x00eb
                           0000EC   296 G$CCAP2L$0_0$0 == 0x00ec
                           0000EC   297 _CCAP2L	=	0x00ec
                           0000ED   298 G$CCAP3L$0_0$0 == 0x00ed
                           0000ED   299 _CCAP3L	=	0x00ed
                           0000EE   300 G$CCAP4L$0_0$0 == 0x00ee
                           0000EE   301 _CCAP4L	=	0x00ee
                           0000DA   302 G$CCAPM0$0_0$0 == 0x00da
                           0000DA   303 _CCAPM0	=	0x00da
                           0000DB   304 G$CCAPM1$0_0$0 == 0x00db
                           0000DB   305 _CCAPM1	=	0x00db
                           0000DC   306 G$CCAPM2$0_0$0 == 0x00dc
                           0000DC   307 _CCAPM2	=	0x00dc
                           0000DD   308 G$CCAPM3$0_0$0 == 0x00dd
                           0000DD   309 _CCAPM3	=	0x00dd
                           0000DE   310 G$CCAPM4$0_0$0 == 0x00de
                           0000DE   311 _CCAPM4	=	0x00de
                           0000D8   312 G$CCON$0_0$0 == 0x00d8
                           0000D8   313 _CCON	=	0x00d8
                           0000F9   314 G$CH$0_0$0 == 0x00f9
                           0000F9   315 _CH	=	0x00f9
                           0000E9   316 G$CL$0_0$0 == 0x00e9
                           0000E9   317 _CL	=	0x00e9
                           0000D9   318 G$CMOD$0_0$0 == 0x00d9
                           0000D9   319 _CMOD	=	0x00d9
                           0000A8   320 G$IEN0$0_0$0 == 0x00a8
                           0000A8   321 _IEN0	=	0x00a8
                           0000B1   322 G$IEN1$0_0$0 == 0x00b1
                           0000B1   323 _IEN1	=	0x00b1
                           0000B8   324 G$IPL0$0_0$0 == 0x00b8
                           0000B8   325 _IPL0	=	0x00b8
                           0000B7   326 G$IPH0$0_0$0 == 0x00b7
                           0000B7   327 _IPH0	=	0x00b7
                           0000B2   328 G$IPL1$0_0$0 == 0x00b2
                           0000B2   329 _IPL1	=	0x00b2
                           0000B3   330 G$IPH1$0_0$0 == 0x00b3
                           0000B3   331 _IPH1	=	0x00b3
                           0000C0   332 G$P4$0_0$0 == 0x00c0
                           0000C0   333 _P4	=	0x00c0
                           0000E8   334 G$P5$0_0$0 == 0x00e8
                           0000E8   335 _P5	=	0x00e8
                           0000A6   336 G$WDTRST$0_0$0 == 0x00a6
                           0000A6   337 _WDTRST	=	0x00a6
                           0000A7   338 G$WDTPRG$0_0$0 == 0x00a7
                           0000A7   339 _WDTPRG	=	0x00a7
                           0000A9   340 G$SADDR$0_0$0 == 0x00a9
                           0000A9   341 _SADDR	=	0x00a9
                           0000B9   342 G$SADEN$0_0$0 == 0x00b9
                           0000B9   343 _SADEN	=	0x00b9
                           0000C3   344 G$SPCON$0_0$0 == 0x00c3
                           0000C3   345 _SPCON	=	0x00c3
                           0000C4   346 G$SPSTA$0_0$0 == 0x00c4
                           0000C4   347 _SPSTA	=	0x00c4
                           0000C5   348 G$SPDAT$0_0$0 == 0x00c5
                           0000C5   349 _SPDAT	=	0x00c5
                           0000C9   350 G$T2MOD$0_0$0 == 0x00c9
                           0000C9   351 _T2MOD	=	0x00c9
                           00009B   352 G$BDRCON$0_0$0 == 0x009b
                           00009B   353 _BDRCON	=	0x009b
                           00009A   354 G$BRL$0_0$0 == 0x009a
                           00009A   355 _BRL	=	0x009a
                           00009C   356 G$KBLS$0_0$0 == 0x009c
                           00009C   357 _KBLS	=	0x009c
                           00009D   358 G$KBE$0_0$0 == 0x009d
                           00009D   359 _KBE	=	0x009d
                           00009E   360 G$KBF$0_0$0 == 0x009e
                           00009E   361 _KBF	=	0x009e
                           0000D2   362 G$EECON$0_0$0 == 0x00d2
                           0000D2   363 _EECON	=	0x00d2
                                    364 ;--------------------------------------------------------
                                    365 ; special function bits
                                    366 ;--------------------------------------------------------
                                    367 	.area RSEG    (ABS,DATA)
      000000                        368 	.org 0x0000
                           000080   369 G$P0_0$0_0$0 == 0x0080
                           000080   370 _P0_0	=	0x0080
                           000081   371 G$P0_1$0_0$0 == 0x0081
                           000081   372 _P0_1	=	0x0081
                           000082   373 G$P0_2$0_0$0 == 0x0082
                           000082   374 _P0_2	=	0x0082
                           000083   375 G$P0_3$0_0$0 == 0x0083
                           000083   376 _P0_3	=	0x0083
                           000084   377 G$P0_4$0_0$0 == 0x0084
                           000084   378 _P0_4	=	0x0084
                           000085   379 G$P0_5$0_0$0 == 0x0085
                           000085   380 _P0_5	=	0x0085
                           000086   381 G$P0_6$0_0$0 == 0x0086
                           000086   382 _P0_6	=	0x0086
                           000087   383 G$P0_7$0_0$0 == 0x0087
                           000087   384 _P0_7	=	0x0087
                           000088   385 G$IT0$0_0$0 == 0x0088
                           000088   386 _IT0	=	0x0088
                           000089   387 G$IE0$0_0$0 == 0x0089
                           000089   388 _IE0	=	0x0089
                           00008A   389 G$IT1$0_0$0 == 0x008a
                           00008A   390 _IT1	=	0x008a
                           00008B   391 G$IE1$0_0$0 == 0x008b
                           00008B   392 _IE1	=	0x008b
                           00008C   393 G$TR0$0_0$0 == 0x008c
                           00008C   394 _TR0	=	0x008c
                           00008D   395 G$TF0$0_0$0 == 0x008d
                           00008D   396 _TF0	=	0x008d
                           00008E   397 G$TR1$0_0$0 == 0x008e
                           00008E   398 _TR1	=	0x008e
                           00008F   399 G$TF1$0_0$0 == 0x008f
                           00008F   400 _TF1	=	0x008f
                           000090   401 G$P1_0$0_0$0 == 0x0090
                           000090   402 _P1_0	=	0x0090
                           000091   403 G$P1_1$0_0$0 == 0x0091
                           000091   404 _P1_1	=	0x0091
                           000092   405 G$P1_2$0_0$0 == 0x0092
                           000092   406 _P1_2	=	0x0092
                           000093   407 G$P1_3$0_0$0 == 0x0093
                           000093   408 _P1_3	=	0x0093
                           000094   409 G$P1_4$0_0$0 == 0x0094
                           000094   410 _P1_4	=	0x0094
                           000095   411 G$P1_5$0_0$0 == 0x0095
                           000095   412 _P1_5	=	0x0095
                           000096   413 G$P1_6$0_0$0 == 0x0096
                           000096   414 _P1_6	=	0x0096
                           000097   415 G$P1_7$0_0$0 == 0x0097
                           000097   416 _P1_7	=	0x0097
                           000098   417 G$RI$0_0$0 == 0x0098
                           000098   418 _RI	=	0x0098
                           000099   419 G$TI$0_0$0 == 0x0099
                           000099   420 _TI	=	0x0099
                           00009A   421 G$RB8$0_0$0 == 0x009a
                           00009A   422 _RB8	=	0x009a
                           00009B   423 G$TB8$0_0$0 == 0x009b
                           00009B   424 _TB8	=	0x009b
                           00009C   425 G$REN$0_0$0 == 0x009c
                           00009C   426 _REN	=	0x009c
                           00009D   427 G$SM2$0_0$0 == 0x009d
                           00009D   428 _SM2	=	0x009d
                           00009E   429 G$SM1$0_0$0 == 0x009e
                           00009E   430 _SM1	=	0x009e
                           00009F   431 G$SM0$0_0$0 == 0x009f
                           00009F   432 _SM0	=	0x009f
                           0000A0   433 G$P2_0$0_0$0 == 0x00a0
                           0000A0   434 _P2_0	=	0x00a0
                           0000A1   435 G$P2_1$0_0$0 == 0x00a1
                           0000A1   436 _P2_1	=	0x00a1
                           0000A2   437 G$P2_2$0_0$0 == 0x00a2
                           0000A2   438 _P2_2	=	0x00a2
                           0000A3   439 G$P2_3$0_0$0 == 0x00a3
                           0000A3   440 _P2_3	=	0x00a3
                           0000A4   441 G$P2_4$0_0$0 == 0x00a4
                           0000A4   442 _P2_4	=	0x00a4
                           0000A5   443 G$P2_5$0_0$0 == 0x00a5
                           0000A5   444 _P2_5	=	0x00a5
                           0000A6   445 G$P2_6$0_0$0 == 0x00a6
                           0000A6   446 _P2_6	=	0x00a6
                           0000A7   447 G$P2_7$0_0$0 == 0x00a7
                           0000A7   448 _P2_7	=	0x00a7
                           0000A8   449 G$EX0$0_0$0 == 0x00a8
                           0000A8   450 _EX0	=	0x00a8
                           0000A9   451 G$ET0$0_0$0 == 0x00a9
                           0000A9   452 _ET0	=	0x00a9
                           0000AA   453 G$EX1$0_0$0 == 0x00aa
                           0000AA   454 _EX1	=	0x00aa
                           0000AB   455 G$ET1$0_0$0 == 0x00ab
                           0000AB   456 _ET1	=	0x00ab
                           0000AC   457 G$ES$0_0$0 == 0x00ac
                           0000AC   458 _ES	=	0x00ac
                           0000AF   459 G$EA$0_0$0 == 0x00af
                           0000AF   460 _EA	=	0x00af
                           0000B0   461 G$P3_0$0_0$0 == 0x00b0
                           0000B0   462 _P3_0	=	0x00b0
                           0000B1   463 G$P3_1$0_0$0 == 0x00b1
                           0000B1   464 _P3_1	=	0x00b1
                           0000B2   465 G$P3_2$0_0$0 == 0x00b2
                           0000B2   466 _P3_2	=	0x00b2
                           0000B3   467 G$P3_3$0_0$0 == 0x00b3
                           0000B3   468 _P3_3	=	0x00b3
                           0000B4   469 G$P3_4$0_0$0 == 0x00b4
                           0000B4   470 _P3_4	=	0x00b4
                           0000B5   471 G$P3_5$0_0$0 == 0x00b5
                           0000B5   472 _P3_5	=	0x00b5
                           0000B6   473 G$P3_6$0_0$0 == 0x00b6
                           0000B6   474 _P3_6	=	0x00b6
                           0000B7   475 G$P3_7$0_0$0 == 0x00b7
                           0000B7   476 _P3_7	=	0x00b7
                           0000B0   477 G$RXD$0_0$0 == 0x00b0
                           0000B0   478 _RXD	=	0x00b0
                           0000B1   479 G$TXD$0_0$0 == 0x00b1
                           0000B1   480 _TXD	=	0x00b1
                           0000B2   481 G$INT0$0_0$0 == 0x00b2
                           0000B2   482 _INT0	=	0x00b2
                           0000B3   483 G$INT1$0_0$0 == 0x00b3
                           0000B3   484 _INT1	=	0x00b3
                           0000B4   485 G$T0$0_0$0 == 0x00b4
                           0000B4   486 _T0	=	0x00b4
                           0000B5   487 G$T1$0_0$0 == 0x00b5
                           0000B5   488 _T1	=	0x00b5
                           0000B6   489 G$WR$0_0$0 == 0x00b6
                           0000B6   490 _WR	=	0x00b6
                           0000B7   491 G$RD$0_0$0 == 0x00b7
                           0000B7   492 _RD	=	0x00b7
                           0000B8   493 G$PX0$0_0$0 == 0x00b8
                           0000B8   494 _PX0	=	0x00b8
                           0000B9   495 G$PT0$0_0$0 == 0x00b9
                           0000B9   496 _PT0	=	0x00b9
                           0000BA   497 G$PX1$0_0$0 == 0x00ba
                           0000BA   498 _PX1	=	0x00ba
                           0000BB   499 G$PT1$0_0$0 == 0x00bb
                           0000BB   500 _PT1	=	0x00bb
                           0000BC   501 G$PS$0_0$0 == 0x00bc
                           0000BC   502 _PS	=	0x00bc
                           0000D0   503 G$P$0_0$0 == 0x00d0
                           0000D0   504 _P	=	0x00d0
                           0000D1   505 G$F1$0_0$0 == 0x00d1
                           0000D1   506 _F1	=	0x00d1
                           0000D2   507 G$OV$0_0$0 == 0x00d2
                           0000D2   508 _OV	=	0x00d2
                           0000D3   509 G$RS0$0_0$0 == 0x00d3
                           0000D3   510 _RS0	=	0x00d3
                           0000D4   511 G$RS1$0_0$0 == 0x00d4
                           0000D4   512 _RS1	=	0x00d4
                           0000D5   513 G$F0$0_0$0 == 0x00d5
                           0000D5   514 _F0	=	0x00d5
                           0000D6   515 G$AC$0_0$0 == 0x00d6
                           0000D6   516 _AC	=	0x00d6
                           0000D7   517 G$CY$0_0$0 == 0x00d7
                           0000D7   518 _CY	=	0x00d7
                           0000AD   519 G$ET2$0_0$0 == 0x00ad
                           0000AD   520 _ET2	=	0x00ad
                           0000BD   521 G$PT2$0_0$0 == 0x00bd
                           0000BD   522 _PT2	=	0x00bd
                           0000C8   523 G$T2CON_0$0_0$0 == 0x00c8
                           0000C8   524 _T2CON_0	=	0x00c8
                           0000C9   525 G$T2CON_1$0_0$0 == 0x00c9
                           0000C9   526 _T2CON_1	=	0x00c9
                           0000CA   527 G$T2CON_2$0_0$0 == 0x00ca
                           0000CA   528 _T2CON_2	=	0x00ca
                           0000CB   529 G$T2CON_3$0_0$0 == 0x00cb
                           0000CB   530 _T2CON_3	=	0x00cb
                           0000CC   531 G$T2CON_4$0_0$0 == 0x00cc
                           0000CC   532 _T2CON_4	=	0x00cc
                           0000CD   533 G$T2CON_5$0_0$0 == 0x00cd
                           0000CD   534 _T2CON_5	=	0x00cd
                           0000CE   535 G$T2CON_6$0_0$0 == 0x00ce
                           0000CE   536 _T2CON_6	=	0x00ce
                           0000CF   537 G$T2CON_7$0_0$0 == 0x00cf
                           0000CF   538 _T2CON_7	=	0x00cf
                           0000C8   539 G$CP_RL2$0_0$0 == 0x00c8
                           0000C8   540 _CP_RL2	=	0x00c8
                           0000C9   541 G$C_T2$0_0$0 == 0x00c9
                           0000C9   542 _C_T2	=	0x00c9
                           0000CA   543 G$TR2$0_0$0 == 0x00ca
                           0000CA   544 _TR2	=	0x00ca
                           0000CB   545 G$EXEN2$0_0$0 == 0x00cb
                           0000CB   546 _EXEN2	=	0x00cb
                           0000CC   547 G$TCLK$0_0$0 == 0x00cc
                           0000CC   548 _TCLK	=	0x00cc
                           0000CD   549 G$RCLK$0_0$0 == 0x00cd
                           0000CD   550 _RCLK	=	0x00cd
                           0000CE   551 G$EXF2$0_0$0 == 0x00ce
                           0000CE   552 _EXF2	=	0x00ce
                           0000CF   553 G$TF2$0_0$0 == 0x00cf
                           0000CF   554 _TF2	=	0x00cf
                           0000DF   555 G$CF$0_0$0 == 0x00df
                           0000DF   556 _CF	=	0x00df
                           0000DE   557 G$CR$0_0$0 == 0x00de
                           0000DE   558 _CR	=	0x00de
                           0000DC   559 G$CCF4$0_0$0 == 0x00dc
                           0000DC   560 _CCF4	=	0x00dc
                           0000DB   561 G$CCF3$0_0$0 == 0x00db
                           0000DB   562 _CCF3	=	0x00db
                           0000DA   563 G$CCF2$0_0$0 == 0x00da
                           0000DA   564 _CCF2	=	0x00da
                           0000D9   565 G$CCF1$0_0$0 == 0x00d9
                           0000D9   566 _CCF1	=	0x00d9
                           0000D8   567 G$CCF0$0_0$0 == 0x00d8
                           0000D8   568 _CCF0	=	0x00d8
                           0000AE   569 G$EC$0_0$0 == 0x00ae
                           0000AE   570 _EC	=	0x00ae
                           0000BE   571 G$PPCL$0_0$0 == 0x00be
                           0000BE   572 _PPCL	=	0x00be
                           0000BD   573 G$PT2L$0_0$0 == 0x00bd
                           0000BD   574 _PT2L	=	0x00bd
                           0000BC   575 G$PSL$0_0$0 == 0x00bc
                           0000BC   576 _PSL	=	0x00bc
                           0000BB   577 G$PT1L$0_0$0 == 0x00bb
                           0000BB   578 _PT1L	=	0x00bb
                           0000BA   579 G$PX1L$0_0$0 == 0x00ba
                           0000BA   580 _PX1L	=	0x00ba
                           0000B9   581 G$PT0L$0_0$0 == 0x00b9
                           0000B9   582 _PT0L	=	0x00b9
                           0000B8   583 G$PX0L$0_0$0 == 0x00b8
                           0000B8   584 _PX0L	=	0x00b8
                           0000C0   585 G$P4_0$0_0$0 == 0x00c0
                           0000C0   586 _P4_0	=	0x00c0
                           0000C1   587 G$P4_1$0_0$0 == 0x00c1
                           0000C1   588 _P4_1	=	0x00c1
                           0000C2   589 G$P4_2$0_0$0 == 0x00c2
                           0000C2   590 _P4_2	=	0x00c2
                           0000C3   591 G$P4_3$0_0$0 == 0x00c3
                           0000C3   592 _P4_3	=	0x00c3
                           0000C4   593 G$P4_4$0_0$0 == 0x00c4
                           0000C4   594 _P4_4	=	0x00c4
                           0000C5   595 G$P4_5$0_0$0 == 0x00c5
                           0000C5   596 _P4_5	=	0x00c5
                           0000C6   597 G$P4_6$0_0$0 == 0x00c6
                           0000C6   598 _P4_6	=	0x00c6
                           0000C7   599 G$P4_7$0_0$0 == 0x00c7
                           0000C7   600 _P4_7	=	0x00c7
                           0000E8   601 G$P5_0$0_0$0 == 0x00e8
                           0000E8   602 _P5_0	=	0x00e8
                           0000E9   603 G$P5_1$0_0$0 == 0x00e9
                           0000E9   604 _P5_1	=	0x00e9
                           0000EA   605 G$P5_2$0_0$0 == 0x00ea
                           0000EA   606 _P5_2	=	0x00ea
                           0000EB   607 G$P5_3$0_0$0 == 0x00eb
                           0000EB   608 _P5_3	=	0x00eb
                           0000EC   609 G$P5_4$0_0$0 == 0x00ec
                           0000EC   610 _P5_4	=	0x00ec
                           0000ED   611 G$P5_5$0_0$0 == 0x00ed
                           0000ED   612 _P5_5	=	0x00ed
                           0000EE   613 G$P5_6$0_0$0 == 0x00ee
                           0000EE   614 _P5_6	=	0x00ee
                           0000EF   615 G$P5_7$0_0$0 == 0x00ef
                           0000EF   616 _P5_7	=	0x00ef
                                    617 ;--------------------------------------------------------
                                    618 ; overlayable register banks
                                    619 ;--------------------------------------------------------
                                    620 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        621 	.ds 8
                                    622 ;--------------------------------------------------------
                                    623 ; internal ram data
                                    624 ;--------------------------------------------------------
                                    625 	.area DSEG    (DATA)
                                    626 ;--------------------------------------------------------
                                    627 ; overlayable items in internal ram 
                                    628 ;--------------------------------------------------------
                                    629 ;--------------------------------------------------------
                                    630 ; indirectly addressable internal ram data
                                    631 ;--------------------------------------------------------
                                    632 	.area ISEG    (DATA)
                                    633 ;--------------------------------------------------------
                                    634 ; absolute internal ram data
                                    635 ;--------------------------------------------------------
                                    636 	.area IABS    (ABS,DATA)
                                    637 	.area IABS    (ABS,DATA)
                                    638 ;--------------------------------------------------------
                                    639 ; bit data
                                    640 ;--------------------------------------------------------
                                    641 	.area BSEG    (BIT)
                                    642 ;--------------------------------------------------------
                                    643 ; paged external ram data
                                    644 ;--------------------------------------------------------
                                    645 	.area PSEG    (PAG,XDATA)
                                    646 ;--------------------------------------------------------
                                    647 ; external ram data
                                    648 ;--------------------------------------------------------
                                    649 	.area XSEG    (XDATA)
                           00F000   650 G$IR_Write$0_0$0 == 0xf000
                           00F000   651 _IR_Write	=	0xf000
                           00F200   652 G$BF_Read$0_0$0 == 0xf200
                           00F200   653 _BF_Read	=	0xf200
                           00F100   654 G$DR_WRITE$0_0$0 == 0xf100
                           00F100   655 _DR_WRITE	=	0xf100
                           00F300   656 G$DR_READ$0_0$0 == 0xf300
                           00F300   657 _DR_READ	=	0xf300
                           000000   658 LTimer.inttostr$a$1_0$11==.
      000447                        659 _inttostr_a_65536_11:
      000447                        660 	.ds 1
                           000001   661 LTimer.inttostr$b$1_0$12==.
      000448                        662 _inttostr_b_65536_12:
      000448                        663 	.ds 3
                                    664 ;--------------------------------------------------------
                                    665 ; absolute external ram data
                                    666 ;--------------------------------------------------------
                                    667 	.area XABS    (ABS,XDATA)
                                    668 ;--------------------------------------------------------
                                    669 ; external initialized ram data
                                    670 ;--------------------------------------------------------
                                    671 	.area XISEG   (XDATA)
                                    672 	.area HOME    (CODE)
                                    673 	.area GSINIT0 (CODE)
                                    674 	.area GSINIT1 (CODE)
                                    675 	.area GSINIT2 (CODE)
                                    676 	.area GSINIT3 (CODE)
                                    677 	.area GSINIT4 (CODE)
                                    678 	.area GSINIT5 (CODE)
                                    679 	.area GSINIT  (CODE)
                                    680 	.area GSFINAL (CODE)
                                    681 	.area CSEG    (CODE)
                                    682 ;--------------------------------------------------------
                                    683 ; global & static initialisations
                                    684 ;--------------------------------------------------------
                                    685 	.area HOME    (CODE)
                                    686 	.area GSINIT  (CODE)
                                    687 	.area GSFINAL (CODE)
                                    688 	.area GSINIT  (CODE)
                                    689 ;--------------------------------------------------------
                                    690 ; Home
                                    691 ;--------------------------------------------------------
                                    692 	.area HOME    (CODE)
                                    693 	.area HOME    (CODE)
                                    694 ;--------------------------------------------------------
                                    695 ; code
                                    696 ;--------------------------------------------------------
                                    697 	.area CSEG    (CODE)
                                    698 ;------------------------------------------------------------
                                    699 ;Allocation info for local variables in function 'timer_init'
                                    700 ;------------------------------------------------------------
                           000000   701 	G$timer_init$0$0 ==.
                           000000   702 	C$Timer.c$13$0_0$10 ==.
                                    703 ;	Timer.c:13: void timer_init()
                                    704 ;	-----------------------------------------
                                    705 ;	 function timer_init
                                    706 ;	-----------------------------------------
      002AAD                        707 _timer_init:
                           000007   708 	ar7 = 0x07
                           000006   709 	ar6 = 0x06
                           000005   710 	ar5 = 0x05
                           000004   711 	ar4 = 0x04
                           000003   712 	ar3 = 0x03
                           000002   713 	ar2 = 0x02
                           000001   714 	ar1 = 0x01
                           000000   715 	ar0 = 0x00
                           000000   716 	C$Timer.c$16$1_0$10 ==.
                                    717 ;	Timer.c:16: TMOD|=0x01;
      002AAD 43 89 01         [24]  718 	orl	_TMOD,#0x01
                           000003   719 	C$Timer.c$18$1_0$10 ==.
                                    720 ;	Timer.c:18: TH0=0x4B;
      002AB0 75 8C 4B         [24]  721 	mov	_TH0,#0x4b
                           000006   722 	C$Timer.c$19$1_0$10 ==.
                                    723 ;	Timer.c:19: TL0=0xFC;
      002AB3 75 8A FC         [24]  724 	mov	_TL0,#0xfc
                           000009   725 	C$Timer.c$20$1_0$10 ==.
                                    726 ;	Timer.c:20: TR0=1;
                                    727 ;	assignBit
      002AB6 D2 8C            [12]  728 	setb	_TR0
                           00000B   729 	C$Timer.c$21$1_0$10 ==.
                                    730 ;	Timer.c:21: ET0|=1;
      002AB8 7F 01            [12]  731 	mov	r7,#0x01
      002ABA A2 A9            [12]  732 	mov	c,_ET0
                                    733 ;	assignBit
      002ABC EF               [12]  734 	mov	a,r7
      002ABD 24 FF            [12]  735 	add	a,#0xff
      002ABF 92 A9            [24]  736 	mov	_ET0,c
                           000014   737 	C$Timer.c$22$1_0$10 ==.
                                    738 ;	Timer.c:22: EA|=1;
      002AC1 7F 01            [12]  739 	mov	r7,#0x01
      002AC3 A2 AF            [12]  740 	mov	c,_EA
                                    741 ;	assignBit
      002AC5 EF               [12]  742 	mov	a,r7
      002AC6 24 FF            [12]  743 	add	a,#0xff
      002AC8 92 AF            [24]  744 	mov	_EA,c
                           00001D   745 	C$Timer.c$23$1_0$10 ==.
                                    746 ;	Timer.c:23: }
                           00001D   747 	C$Timer.c$23$1_0$10 ==.
                           00001D   748 	XG$timer_init$0$0 ==.
      002ACA 22               [24]  749 	ret
                                    750 ;------------------------------------------------------------
                                    751 ;Allocation info for local variables in function 'inttostr'
                                    752 ;------------------------------------------------------------
                                    753 ;a                         Allocated with name '_inttostr_a_65536_11'
                                    754 ;b                         Allocated with name '_inttostr_b_65536_12'
                                    755 ;i                         Allocated with name '_inttostr_i_65536_12'
                                    756 ;j                         Allocated with name '_inttostr_j_65536_12'
                                    757 ;------------------------------------------------------------
                           00001E   758 	G$inttostr$0$0 ==.
                           00001E   759 	C$Timer.c$25$1_0$12 ==.
                                    760 ;	Timer.c:25: void inttostr(uint8_t a)
                                    761 ;	-----------------------------------------
                                    762 ;	 function inttostr
                                    763 ;	-----------------------------------------
      002ACB                        764 _inttostr:
      002ACB E5 82            [12]  765 	mov	a,dpl
      002ACD 90 04 47         [24]  766 	mov	dptr,#_inttostr_a_65536_11
      002AD0 F0               [24]  767 	movx	@dptr,a
                           000024   768 	C$Timer.c$27$2_0$13 ==.
                                    769 ;	Timer.c:27: while(a!=0)
      002AD1 7F 02            [12]  770 	mov	r7,#0x02
      002AD3                        771 00101$:
      002AD3 90 04 47         [24]  772 	mov	dptr,#_inttostr_a_65536_11
      002AD6 E0               [24]  773 	movx	a,@dptr
      002AD7 FE               [12]  774 	mov	r6,a
      002AD8 E0               [24]  775 	movx	a,@dptr
      002AD9 60 54            [24]  776 	jz	00103$
                           00002E   777 	C$Timer.c$28$2_0$13 ==.
                                    778 ;	Timer.c:28: {   i--;
      002ADB 1F               [12]  779 	dec	r7
                           00002F   780 	C$Timer.c$29$2_0$13 ==.
                                    781 ;	Timer.c:29: b[i]=(a%10)+'0';
      002ADC EF               [12]  782 	mov	a,r7
      002ADD 24 48            [12]  783 	add	a,#_inttostr_b_65536_12
      002ADF FC               [12]  784 	mov	r4,a
      002AE0 E4               [12]  785 	clr	a
      002AE1 34 04            [12]  786 	addc	a,#(_inttostr_b_65536_12 >> 8)
      002AE3 FD               [12]  787 	mov	r5,a
      002AE4 7B 00            [12]  788 	mov	r3,#0x00
      002AE6 90 04 4D         [24]  789 	mov	dptr,#__modsint_PARM_2
      002AE9 74 0A            [12]  790 	mov	a,#0x0a
      002AEB F0               [24]  791 	movx	@dptr,a
      002AEC E4               [12]  792 	clr	a
      002AED A3               [24]  793 	inc	dptr
      002AEE F0               [24]  794 	movx	@dptr,a
      002AEF 8E 82            [24]  795 	mov	dpl,r6
      002AF1 8B 83            [24]  796 	mov	dph,r3
      002AF3 C0 07            [24]  797 	push	ar7
      002AF5 C0 06            [24]  798 	push	ar6
      002AF7 C0 05            [24]  799 	push	ar5
      002AF9 C0 04            [24]  800 	push	ar4
      002AFB C0 03            [24]  801 	push	ar3
      002AFD 12 2C 9E         [24]  802 	lcall	__modsint
      002B00 A9 82            [24]  803 	mov	r1,dpl
      002B02 D0 03            [24]  804 	pop	ar3
      002B04 D0 04            [24]  805 	pop	ar4
      002B06 D0 05            [24]  806 	pop	ar5
      002B08 D0 06            [24]  807 	pop	ar6
      002B0A 74 30            [12]  808 	mov	a,#0x30
      002B0C 29               [12]  809 	add	a,r1
      002B0D 8C 82            [24]  810 	mov	dpl,r4
      002B0F 8D 83            [24]  811 	mov	dph,r5
      002B11 F0               [24]  812 	movx	@dptr,a
                           000065   813 	C$Timer.c$30$1_0$12 ==.
                                    814 ;	Timer.c:30: a=a/10;
      002B12 90 04 56         [24]  815 	mov	dptr,#__divsint_PARM_2
      002B15 74 0A            [12]  816 	mov	a,#0x0a
      002B17 F0               [24]  817 	movx	@dptr,a
      002B18 E4               [12]  818 	clr	a
      002B19 A3               [24]  819 	inc	dptr
      002B1A F0               [24]  820 	movx	@dptr,a
      002B1B 8E 82            [24]  821 	mov	dpl,r6
      002B1D 8B 83            [24]  822 	mov	dph,r3
      002B1F 12 2D B2         [24]  823 	lcall	__divsint
      002B22 AD 82            [24]  824 	mov	r5,dpl
      002B24 AE 83            [24]  825 	mov	r6,dph
      002B26 D0 07            [24]  826 	pop	ar7
      002B28 90 04 47         [24]  827 	mov	dptr,#_inttostr_a_65536_11
      002B2B ED               [12]  828 	mov	a,r5
      002B2C F0               [24]  829 	movx	@dptr,a
      002B2D 80 A4            [24]  830 	sjmp	00101$
      002B2F                        831 00103$:
                           000082   832 	C$Timer.c$32$3_0$15 ==.
                                    833 ;	Timer.c:32: for(j=0;j<i;j++)
      002B2F 7E 00            [12]  834 	mov	r6,#0x00
      002B31                        835 00106$:
      002B31 C3               [12]  836 	clr	c
      002B32 EE               [12]  837 	mov	a,r6
      002B33 9F               [12]  838 	subb	a,r7
      002B34 50 10            [24]  839 	jnc	00104$
                           000089   840 	C$Timer.c$33$3_0$15 ==.
                                    841 ;	Timer.c:33: {   b[j]='0';
      002B36 EE               [12]  842 	mov	a,r6
      002B37 24 48            [12]  843 	add	a,#_inttostr_b_65536_12
      002B39 F5 82            [12]  844 	mov	dpl,a
      002B3B E4               [12]  845 	clr	a
      002B3C 34 04            [12]  846 	addc	a,#(_inttostr_b_65536_12 >> 8)
      002B3E F5 83            [12]  847 	mov	dph,a
      002B40 74 30            [12]  848 	mov	a,#0x30
      002B42 F0               [24]  849 	movx	@dptr,a
                           000096   850 	C$Timer.c$32$2_0$14 ==.
                                    851 ;	Timer.c:32: for(j=0;j<i;j++)
      002B43 0E               [12]  852 	inc	r6
      002B44 80 EB            [24]  853 	sjmp	00106$
      002B46                        854 00104$:
                           000099   855 	C$Timer.c$35$1_0$12 ==.
                                    856 ;	Timer.c:35: lcdbusywait();
      002B46 12 22 6D         [24]  857 	lcall	_lcdbusywait
                           00009C   858 	C$Timer.c$36$1_0$12 ==.
                                    859 ;	Timer.c:36: LCD_putstr(b);
      002B49 90 04 48         [24]  860 	mov	dptr,#_inttostr_b_65536_12
      002B4C 12 23 AD         [24]  861 	lcall	_LCD_putstr
                           0000A2   862 	C$Timer.c$37$1_0$12 ==.
                                    863 ;	Timer.c:37: lcdbusywait();
      002B4F 12 22 6D         [24]  864 	lcall	_lcdbusywait
                           0000A5   865 	C$Timer.c$38$1_0$12 ==.
                                    866 ;	Timer.c:38: DR_WRITE=':';
      002B52 90 F1 00         [24]  867 	mov	dptr,#_DR_WRITE
      002B55 74 3A            [12]  868 	mov	a,#0x3a
      002B57 F0               [24]  869 	movx	@dptr,a
                           0000AB   870 	C$Timer.c$39$1_0$12 ==.
                                    871 ;	Timer.c:39: }
                           0000AB   872 	C$Timer.c$39$1_0$12 ==.
                           0000AB   873 	XG$inttostr$0$0 ==.
      002B58 22               [24]  874 	ret
                                    875 	.area CSEG    (CODE)
                                    876 	.area CONST   (CODE)
                                    877 	.area XINIT   (CODE)
                                    878 	.area CABS    (ABS,CODE)
