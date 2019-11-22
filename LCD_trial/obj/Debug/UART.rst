                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.9.0 #11195 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module UART
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _uartinit
                                     12 	.globl _time_show
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
                                    209 	.globl _putchar
                                    210 	.globl _getchar
                                    211 ;--------------------------------------------------------
                                    212 ; special function registers
                                    213 ;--------------------------------------------------------
                                    214 	.area RSEG    (ABS,DATA)
      000000                        215 	.org 0x0000
                           000080   216 G$P0$0_0$0 == 0x0080
                           000080   217 _P0	=	0x0080
                           000081   218 G$SP$0_0$0 == 0x0081
                           000081   219 _SP	=	0x0081
                           000082   220 G$DPL$0_0$0 == 0x0082
                           000082   221 _DPL	=	0x0082
                           000083   222 G$DPH$0_0$0 == 0x0083
                           000083   223 _DPH	=	0x0083
                           000087   224 G$PCON$0_0$0 == 0x0087
                           000087   225 _PCON	=	0x0087
                           000088   226 G$TCON$0_0$0 == 0x0088
                           000088   227 _TCON	=	0x0088
                           000089   228 G$TMOD$0_0$0 == 0x0089
                           000089   229 _TMOD	=	0x0089
                           00008A   230 G$TL0$0_0$0 == 0x008a
                           00008A   231 _TL0	=	0x008a
                           00008B   232 G$TL1$0_0$0 == 0x008b
                           00008B   233 _TL1	=	0x008b
                           00008C   234 G$TH0$0_0$0 == 0x008c
                           00008C   235 _TH0	=	0x008c
                           00008D   236 G$TH1$0_0$0 == 0x008d
                           00008D   237 _TH1	=	0x008d
                           000090   238 G$P1$0_0$0 == 0x0090
                           000090   239 _P1	=	0x0090
                           000098   240 G$SCON$0_0$0 == 0x0098
                           000098   241 _SCON	=	0x0098
                           000099   242 G$SBUF$0_0$0 == 0x0099
                           000099   243 _SBUF	=	0x0099
                           0000A0   244 G$P2$0_0$0 == 0x00a0
                           0000A0   245 _P2	=	0x00a0
                           0000A8   246 G$IE$0_0$0 == 0x00a8
                           0000A8   247 _IE	=	0x00a8
                           0000B0   248 G$P3$0_0$0 == 0x00b0
                           0000B0   249 _P3	=	0x00b0
                           0000B8   250 G$IP$0_0$0 == 0x00b8
                           0000B8   251 _IP	=	0x00b8
                           0000D0   252 G$PSW$0_0$0 == 0x00d0
                           0000D0   253 _PSW	=	0x00d0
                           0000E0   254 G$ACC$0_0$0 == 0x00e0
                           0000E0   255 _ACC	=	0x00e0
                           0000F0   256 G$B$0_0$0 == 0x00f0
                           0000F0   257 _B	=	0x00f0
                           0000C8   258 G$T2CON$0_0$0 == 0x00c8
                           0000C8   259 _T2CON	=	0x00c8
                           0000CA   260 G$RCAP2L$0_0$0 == 0x00ca
                           0000CA   261 _RCAP2L	=	0x00ca
                           0000CB   262 G$RCAP2H$0_0$0 == 0x00cb
                           0000CB   263 _RCAP2H	=	0x00cb
                           0000CC   264 G$TL2$0_0$0 == 0x00cc
                           0000CC   265 _TL2	=	0x00cc
                           0000CD   266 G$TH2$0_0$0 == 0x00cd
                           0000CD   267 _TH2	=	0x00cd
                           00008E   268 G$AUXR$0_0$0 == 0x008e
                           00008E   269 _AUXR	=	0x008e
                           0000A2   270 G$AUXR1$0_0$0 == 0x00a2
                           0000A2   271 _AUXR1	=	0x00a2
                           000097   272 G$CKRL$0_0$0 == 0x0097
                           000097   273 _CKRL	=	0x0097
                           00008F   274 G$CKCON0$0_0$0 == 0x008f
                           00008F   275 _CKCON0	=	0x008f
                           0000AF   276 G$CKCON1$0_0$0 == 0x00af
                           0000AF   277 _CKCON1	=	0x00af
                           0000FA   278 G$CCAP0H$0_0$0 == 0x00fa
                           0000FA   279 _CCAP0H	=	0x00fa
                           0000FB   280 G$CCAP1H$0_0$0 == 0x00fb
                           0000FB   281 _CCAP1H	=	0x00fb
                           0000FC   282 G$CCAP2H$0_0$0 == 0x00fc
                           0000FC   283 _CCAP2H	=	0x00fc
                           0000FD   284 G$CCAP3H$0_0$0 == 0x00fd
                           0000FD   285 _CCAP3H	=	0x00fd
                           0000FE   286 G$CCAP4H$0_0$0 == 0x00fe
                           0000FE   287 _CCAP4H	=	0x00fe
                           0000EA   288 G$CCAP0L$0_0$0 == 0x00ea
                           0000EA   289 _CCAP0L	=	0x00ea
                           0000EB   290 G$CCAP1L$0_0$0 == 0x00eb
                           0000EB   291 _CCAP1L	=	0x00eb
                           0000EC   292 G$CCAP2L$0_0$0 == 0x00ec
                           0000EC   293 _CCAP2L	=	0x00ec
                           0000ED   294 G$CCAP3L$0_0$0 == 0x00ed
                           0000ED   295 _CCAP3L	=	0x00ed
                           0000EE   296 G$CCAP4L$0_0$0 == 0x00ee
                           0000EE   297 _CCAP4L	=	0x00ee
                           0000DA   298 G$CCAPM0$0_0$0 == 0x00da
                           0000DA   299 _CCAPM0	=	0x00da
                           0000DB   300 G$CCAPM1$0_0$0 == 0x00db
                           0000DB   301 _CCAPM1	=	0x00db
                           0000DC   302 G$CCAPM2$0_0$0 == 0x00dc
                           0000DC   303 _CCAPM2	=	0x00dc
                           0000DD   304 G$CCAPM3$0_0$0 == 0x00dd
                           0000DD   305 _CCAPM3	=	0x00dd
                           0000DE   306 G$CCAPM4$0_0$0 == 0x00de
                           0000DE   307 _CCAPM4	=	0x00de
                           0000D8   308 G$CCON$0_0$0 == 0x00d8
                           0000D8   309 _CCON	=	0x00d8
                           0000F9   310 G$CH$0_0$0 == 0x00f9
                           0000F9   311 _CH	=	0x00f9
                           0000E9   312 G$CL$0_0$0 == 0x00e9
                           0000E9   313 _CL	=	0x00e9
                           0000D9   314 G$CMOD$0_0$0 == 0x00d9
                           0000D9   315 _CMOD	=	0x00d9
                           0000A8   316 G$IEN0$0_0$0 == 0x00a8
                           0000A8   317 _IEN0	=	0x00a8
                           0000B1   318 G$IEN1$0_0$0 == 0x00b1
                           0000B1   319 _IEN1	=	0x00b1
                           0000B8   320 G$IPL0$0_0$0 == 0x00b8
                           0000B8   321 _IPL0	=	0x00b8
                           0000B7   322 G$IPH0$0_0$0 == 0x00b7
                           0000B7   323 _IPH0	=	0x00b7
                           0000B2   324 G$IPL1$0_0$0 == 0x00b2
                           0000B2   325 _IPL1	=	0x00b2
                           0000B3   326 G$IPH1$0_0$0 == 0x00b3
                           0000B3   327 _IPH1	=	0x00b3
                           0000C0   328 G$P4$0_0$0 == 0x00c0
                           0000C0   329 _P4	=	0x00c0
                           0000E8   330 G$P5$0_0$0 == 0x00e8
                           0000E8   331 _P5	=	0x00e8
                           0000A6   332 G$WDTRST$0_0$0 == 0x00a6
                           0000A6   333 _WDTRST	=	0x00a6
                           0000A7   334 G$WDTPRG$0_0$0 == 0x00a7
                           0000A7   335 _WDTPRG	=	0x00a7
                           0000A9   336 G$SADDR$0_0$0 == 0x00a9
                           0000A9   337 _SADDR	=	0x00a9
                           0000B9   338 G$SADEN$0_0$0 == 0x00b9
                           0000B9   339 _SADEN	=	0x00b9
                           0000C3   340 G$SPCON$0_0$0 == 0x00c3
                           0000C3   341 _SPCON	=	0x00c3
                           0000C4   342 G$SPSTA$0_0$0 == 0x00c4
                           0000C4   343 _SPSTA	=	0x00c4
                           0000C5   344 G$SPDAT$0_0$0 == 0x00c5
                           0000C5   345 _SPDAT	=	0x00c5
                           0000C9   346 G$T2MOD$0_0$0 == 0x00c9
                           0000C9   347 _T2MOD	=	0x00c9
                           00009B   348 G$BDRCON$0_0$0 == 0x009b
                           00009B   349 _BDRCON	=	0x009b
                           00009A   350 G$BRL$0_0$0 == 0x009a
                           00009A   351 _BRL	=	0x009a
                           00009C   352 G$KBLS$0_0$0 == 0x009c
                           00009C   353 _KBLS	=	0x009c
                           00009D   354 G$KBE$0_0$0 == 0x009d
                           00009D   355 _KBE	=	0x009d
                           00009E   356 G$KBF$0_0$0 == 0x009e
                           00009E   357 _KBF	=	0x009e
                           0000D2   358 G$EECON$0_0$0 == 0x00d2
                           0000D2   359 _EECON	=	0x00d2
                                    360 ;--------------------------------------------------------
                                    361 ; special function bits
                                    362 ;--------------------------------------------------------
                                    363 	.area RSEG    (ABS,DATA)
      000000                        364 	.org 0x0000
                           000080   365 G$P0_0$0_0$0 == 0x0080
                           000080   366 _P0_0	=	0x0080
                           000081   367 G$P0_1$0_0$0 == 0x0081
                           000081   368 _P0_1	=	0x0081
                           000082   369 G$P0_2$0_0$0 == 0x0082
                           000082   370 _P0_2	=	0x0082
                           000083   371 G$P0_3$0_0$0 == 0x0083
                           000083   372 _P0_3	=	0x0083
                           000084   373 G$P0_4$0_0$0 == 0x0084
                           000084   374 _P0_4	=	0x0084
                           000085   375 G$P0_5$0_0$0 == 0x0085
                           000085   376 _P0_5	=	0x0085
                           000086   377 G$P0_6$0_0$0 == 0x0086
                           000086   378 _P0_6	=	0x0086
                           000087   379 G$P0_7$0_0$0 == 0x0087
                           000087   380 _P0_7	=	0x0087
                           000088   381 G$IT0$0_0$0 == 0x0088
                           000088   382 _IT0	=	0x0088
                           000089   383 G$IE0$0_0$0 == 0x0089
                           000089   384 _IE0	=	0x0089
                           00008A   385 G$IT1$0_0$0 == 0x008a
                           00008A   386 _IT1	=	0x008a
                           00008B   387 G$IE1$0_0$0 == 0x008b
                           00008B   388 _IE1	=	0x008b
                           00008C   389 G$TR0$0_0$0 == 0x008c
                           00008C   390 _TR0	=	0x008c
                           00008D   391 G$TF0$0_0$0 == 0x008d
                           00008D   392 _TF0	=	0x008d
                           00008E   393 G$TR1$0_0$0 == 0x008e
                           00008E   394 _TR1	=	0x008e
                           00008F   395 G$TF1$0_0$0 == 0x008f
                           00008F   396 _TF1	=	0x008f
                           000090   397 G$P1_0$0_0$0 == 0x0090
                           000090   398 _P1_0	=	0x0090
                           000091   399 G$P1_1$0_0$0 == 0x0091
                           000091   400 _P1_1	=	0x0091
                           000092   401 G$P1_2$0_0$0 == 0x0092
                           000092   402 _P1_2	=	0x0092
                           000093   403 G$P1_3$0_0$0 == 0x0093
                           000093   404 _P1_3	=	0x0093
                           000094   405 G$P1_4$0_0$0 == 0x0094
                           000094   406 _P1_4	=	0x0094
                           000095   407 G$P1_5$0_0$0 == 0x0095
                           000095   408 _P1_5	=	0x0095
                           000096   409 G$P1_6$0_0$0 == 0x0096
                           000096   410 _P1_6	=	0x0096
                           000097   411 G$P1_7$0_0$0 == 0x0097
                           000097   412 _P1_7	=	0x0097
                           000098   413 G$RI$0_0$0 == 0x0098
                           000098   414 _RI	=	0x0098
                           000099   415 G$TI$0_0$0 == 0x0099
                           000099   416 _TI	=	0x0099
                           00009A   417 G$RB8$0_0$0 == 0x009a
                           00009A   418 _RB8	=	0x009a
                           00009B   419 G$TB8$0_0$0 == 0x009b
                           00009B   420 _TB8	=	0x009b
                           00009C   421 G$REN$0_0$0 == 0x009c
                           00009C   422 _REN	=	0x009c
                           00009D   423 G$SM2$0_0$0 == 0x009d
                           00009D   424 _SM2	=	0x009d
                           00009E   425 G$SM1$0_0$0 == 0x009e
                           00009E   426 _SM1	=	0x009e
                           00009F   427 G$SM0$0_0$0 == 0x009f
                           00009F   428 _SM0	=	0x009f
                           0000A0   429 G$P2_0$0_0$0 == 0x00a0
                           0000A0   430 _P2_0	=	0x00a0
                           0000A1   431 G$P2_1$0_0$0 == 0x00a1
                           0000A1   432 _P2_1	=	0x00a1
                           0000A2   433 G$P2_2$0_0$0 == 0x00a2
                           0000A2   434 _P2_2	=	0x00a2
                           0000A3   435 G$P2_3$0_0$0 == 0x00a3
                           0000A3   436 _P2_3	=	0x00a3
                           0000A4   437 G$P2_4$0_0$0 == 0x00a4
                           0000A4   438 _P2_4	=	0x00a4
                           0000A5   439 G$P2_5$0_0$0 == 0x00a5
                           0000A5   440 _P2_5	=	0x00a5
                           0000A6   441 G$P2_6$0_0$0 == 0x00a6
                           0000A6   442 _P2_6	=	0x00a6
                           0000A7   443 G$P2_7$0_0$0 == 0x00a7
                           0000A7   444 _P2_7	=	0x00a7
                           0000A8   445 G$EX0$0_0$0 == 0x00a8
                           0000A8   446 _EX0	=	0x00a8
                           0000A9   447 G$ET0$0_0$0 == 0x00a9
                           0000A9   448 _ET0	=	0x00a9
                           0000AA   449 G$EX1$0_0$0 == 0x00aa
                           0000AA   450 _EX1	=	0x00aa
                           0000AB   451 G$ET1$0_0$0 == 0x00ab
                           0000AB   452 _ET1	=	0x00ab
                           0000AC   453 G$ES$0_0$0 == 0x00ac
                           0000AC   454 _ES	=	0x00ac
                           0000AF   455 G$EA$0_0$0 == 0x00af
                           0000AF   456 _EA	=	0x00af
                           0000B0   457 G$P3_0$0_0$0 == 0x00b0
                           0000B0   458 _P3_0	=	0x00b0
                           0000B1   459 G$P3_1$0_0$0 == 0x00b1
                           0000B1   460 _P3_1	=	0x00b1
                           0000B2   461 G$P3_2$0_0$0 == 0x00b2
                           0000B2   462 _P3_2	=	0x00b2
                           0000B3   463 G$P3_3$0_0$0 == 0x00b3
                           0000B3   464 _P3_3	=	0x00b3
                           0000B4   465 G$P3_4$0_0$0 == 0x00b4
                           0000B4   466 _P3_4	=	0x00b4
                           0000B5   467 G$P3_5$0_0$0 == 0x00b5
                           0000B5   468 _P3_5	=	0x00b5
                           0000B6   469 G$P3_6$0_0$0 == 0x00b6
                           0000B6   470 _P3_6	=	0x00b6
                           0000B7   471 G$P3_7$0_0$0 == 0x00b7
                           0000B7   472 _P3_7	=	0x00b7
                           0000B0   473 G$RXD$0_0$0 == 0x00b0
                           0000B0   474 _RXD	=	0x00b0
                           0000B1   475 G$TXD$0_0$0 == 0x00b1
                           0000B1   476 _TXD	=	0x00b1
                           0000B2   477 G$INT0$0_0$0 == 0x00b2
                           0000B2   478 _INT0	=	0x00b2
                           0000B3   479 G$INT1$0_0$0 == 0x00b3
                           0000B3   480 _INT1	=	0x00b3
                           0000B4   481 G$T0$0_0$0 == 0x00b4
                           0000B4   482 _T0	=	0x00b4
                           0000B5   483 G$T1$0_0$0 == 0x00b5
                           0000B5   484 _T1	=	0x00b5
                           0000B6   485 G$WR$0_0$0 == 0x00b6
                           0000B6   486 _WR	=	0x00b6
                           0000B7   487 G$RD$0_0$0 == 0x00b7
                           0000B7   488 _RD	=	0x00b7
                           0000B8   489 G$PX0$0_0$0 == 0x00b8
                           0000B8   490 _PX0	=	0x00b8
                           0000B9   491 G$PT0$0_0$0 == 0x00b9
                           0000B9   492 _PT0	=	0x00b9
                           0000BA   493 G$PX1$0_0$0 == 0x00ba
                           0000BA   494 _PX1	=	0x00ba
                           0000BB   495 G$PT1$0_0$0 == 0x00bb
                           0000BB   496 _PT1	=	0x00bb
                           0000BC   497 G$PS$0_0$0 == 0x00bc
                           0000BC   498 _PS	=	0x00bc
                           0000D0   499 G$P$0_0$0 == 0x00d0
                           0000D0   500 _P	=	0x00d0
                           0000D1   501 G$F1$0_0$0 == 0x00d1
                           0000D1   502 _F1	=	0x00d1
                           0000D2   503 G$OV$0_0$0 == 0x00d2
                           0000D2   504 _OV	=	0x00d2
                           0000D3   505 G$RS0$0_0$0 == 0x00d3
                           0000D3   506 _RS0	=	0x00d3
                           0000D4   507 G$RS1$0_0$0 == 0x00d4
                           0000D4   508 _RS1	=	0x00d4
                           0000D5   509 G$F0$0_0$0 == 0x00d5
                           0000D5   510 _F0	=	0x00d5
                           0000D6   511 G$AC$0_0$0 == 0x00d6
                           0000D6   512 _AC	=	0x00d6
                           0000D7   513 G$CY$0_0$0 == 0x00d7
                           0000D7   514 _CY	=	0x00d7
                           0000AD   515 G$ET2$0_0$0 == 0x00ad
                           0000AD   516 _ET2	=	0x00ad
                           0000BD   517 G$PT2$0_0$0 == 0x00bd
                           0000BD   518 _PT2	=	0x00bd
                           0000C8   519 G$T2CON_0$0_0$0 == 0x00c8
                           0000C8   520 _T2CON_0	=	0x00c8
                           0000C9   521 G$T2CON_1$0_0$0 == 0x00c9
                           0000C9   522 _T2CON_1	=	0x00c9
                           0000CA   523 G$T2CON_2$0_0$0 == 0x00ca
                           0000CA   524 _T2CON_2	=	0x00ca
                           0000CB   525 G$T2CON_3$0_0$0 == 0x00cb
                           0000CB   526 _T2CON_3	=	0x00cb
                           0000CC   527 G$T2CON_4$0_0$0 == 0x00cc
                           0000CC   528 _T2CON_4	=	0x00cc
                           0000CD   529 G$T2CON_5$0_0$0 == 0x00cd
                           0000CD   530 _T2CON_5	=	0x00cd
                           0000CE   531 G$T2CON_6$0_0$0 == 0x00ce
                           0000CE   532 _T2CON_6	=	0x00ce
                           0000CF   533 G$T2CON_7$0_0$0 == 0x00cf
                           0000CF   534 _T2CON_7	=	0x00cf
                           0000C8   535 G$CP_RL2$0_0$0 == 0x00c8
                           0000C8   536 _CP_RL2	=	0x00c8
                           0000C9   537 G$C_T2$0_0$0 == 0x00c9
                           0000C9   538 _C_T2	=	0x00c9
                           0000CA   539 G$TR2$0_0$0 == 0x00ca
                           0000CA   540 _TR2	=	0x00ca
                           0000CB   541 G$EXEN2$0_0$0 == 0x00cb
                           0000CB   542 _EXEN2	=	0x00cb
                           0000CC   543 G$TCLK$0_0$0 == 0x00cc
                           0000CC   544 _TCLK	=	0x00cc
                           0000CD   545 G$RCLK$0_0$0 == 0x00cd
                           0000CD   546 _RCLK	=	0x00cd
                           0000CE   547 G$EXF2$0_0$0 == 0x00ce
                           0000CE   548 _EXF2	=	0x00ce
                           0000CF   549 G$TF2$0_0$0 == 0x00cf
                           0000CF   550 _TF2	=	0x00cf
                           0000DF   551 G$CF$0_0$0 == 0x00df
                           0000DF   552 _CF	=	0x00df
                           0000DE   553 G$CR$0_0$0 == 0x00de
                           0000DE   554 _CR	=	0x00de
                           0000DC   555 G$CCF4$0_0$0 == 0x00dc
                           0000DC   556 _CCF4	=	0x00dc
                           0000DB   557 G$CCF3$0_0$0 == 0x00db
                           0000DB   558 _CCF3	=	0x00db
                           0000DA   559 G$CCF2$0_0$0 == 0x00da
                           0000DA   560 _CCF2	=	0x00da
                           0000D9   561 G$CCF1$0_0$0 == 0x00d9
                           0000D9   562 _CCF1	=	0x00d9
                           0000D8   563 G$CCF0$0_0$0 == 0x00d8
                           0000D8   564 _CCF0	=	0x00d8
                           0000AE   565 G$EC$0_0$0 == 0x00ae
                           0000AE   566 _EC	=	0x00ae
                           0000BE   567 G$PPCL$0_0$0 == 0x00be
                           0000BE   568 _PPCL	=	0x00be
                           0000BD   569 G$PT2L$0_0$0 == 0x00bd
                           0000BD   570 _PT2L	=	0x00bd
                           0000BC   571 G$PSL$0_0$0 == 0x00bc
                           0000BC   572 _PSL	=	0x00bc
                           0000BB   573 G$PT1L$0_0$0 == 0x00bb
                           0000BB   574 _PT1L	=	0x00bb
                           0000BA   575 G$PX1L$0_0$0 == 0x00ba
                           0000BA   576 _PX1L	=	0x00ba
                           0000B9   577 G$PT0L$0_0$0 == 0x00b9
                           0000B9   578 _PT0L	=	0x00b9
                           0000B8   579 G$PX0L$0_0$0 == 0x00b8
                           0000B8   580 _PX0L	=	0x00b8
                           0000C0   581 G$P4_0$0_0$0 == 0x00c0
                           0000C0   582 _P4_0	=	0x00c0
                           0000C1   583 G$P4_1$0_0$0 == 0x00c1
                           0000C1   584 _P4_1	=	0x00c1
                           0000C2   585 G$P4_2$0_0$0 == 0x00c2
                           0000C2   586 _P4_2	=	0x00c2
                           0000C3   587 G$P4_3$0_0$0 == 0x00c3
                           0000C3   588 _P4_3	=	0x00c3
                           0000C4   589 G$P4_4$0_0$0 == 0x00c4
                           0000C4   590 _P4_4	=	0x00c4
                           0000C5   591 G$P4_5$0_0$0 == 0x00c5
                           0000C5   592 _P4_5	=	0x00c5
                           0000C6   593 G$P4_6$0_0$0 == 0x00c6
                           0000C6   594 _P4_6	=	0x00c6
                           0000C7   595 G$P4_7$0_0$0 == 0x00c7
                           0000C7   596 _P4_7	=	0x00c7
                           0000E8   597 G$P5_0$0_0$0 == 0x00e8
                           0000E8   598 _P5_0	=	0x00e8
                           0000E9   599 G$P5_1$0_0$0 == 0x00e9
                           0000E9   600 _P5_1	=	0x00e9
                           0000EA   601 G$P5_2$0_0$0 == 0x00ea
                           0000EA   602 _P5_2	=	0x00ea
                           0000EB   603 G$P5_3$0_0$0 == 0x00eb
                           0000EB   604 _P5_3	=	0x00eb
                           0000EC   605 G$P5_4$0_0$0 == 0x00ec
                           0000EC   606 _P5_4	=	0x00ec
                           0000ED   607 G$P5_5$0_0$0 == 0x00ed
                           0000ED   608 _P5_5	=	0x00ed
                           0000EE   609 G$P5_6$0_0$0 == 0x00ee
                           0000EE   610 _P5_6	=	0x00ee
                           0000EF   611 G$P5_7$0_0$0 == 0x00ef
                           0000EF   612 _P5_7	=	0x00ef
                                    613 ;--------------------------------------------------------
                                    614 ; overlayable register banks
                                    615 ;--------------------------------------------------------
                                    616 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        617 	.ds 8
                                    618 ;--------------------------------------------------------
                                    619 ; internal ram data
                                    620 ;--------------------------------------------------------
                                    621 	.area DSEG    (DATA)
                                    622 ;--------------------------------------------------------
                                    623 ; overlayable items in internal ram 
                                    624 ;--------------------------------------------------------
                                    625 ;--------------------------------------------------------
                                    626 ; indirectly addressable internal ram data
                                    627 ;--------------------------------------------------------
                                    628 	.area ISEG    (DATA)
                                    629 ;--------------------------------------------------------
                                    630 ; absolute internal ram data
                                    631 ;--------------------------------------------------------
                                    632 	.area IABS    (ABS,DATA)
                                    633 	.area IABS    (ABS,DATA)
                                    634 ;--------------------------------------------------------
                                    635 ; bit data
                                    636 ;--------------------------------------------------------
                                    637 	.area BSEG    (BIT)
                                    638 ;--------------------------------------------------------
                                    639 ; paged external ram data
                                    640 ;--------------------------------------------------------
                                    641 	.area PSEG    (PAG,XDATA)
                                    642 ;--------------------------------------------------------
                                    643 ; external ram data
                                    644 ;--------------------------------------------------------
                                    645 	.area XSEG    (XDATA)
                           000000   646 LUART.putchar$c$1_0$17==.
      00044B                        647 _putchar_c_65536_17:
      00044B                        648 	.ds 2
                                    649 ;--------------------------------------------------------
                                    650 ; absolute external ram data
                                    651 ;--------------------------------------------------------
                                    652 	.area XABS    (ABS,XDATA)
                                    653 ;--------------------------------------------------------
                                    654 ; external initialized ram data
                                    655 ;--------------------------------------------------------
                                    656 	.area XISEG   (XDATA)
                                    657 	.area HOME    (CODE)
                                    658 	.area GSINIT0 (CODE)
                                    659 	.area GSINIT1 (CODE)
                                    660 	.area GSINIT2 (CODE)
                                    661 	.area GSINIT3 (CODE)
                                    662 	.area GSINIT4 (CODE)
                                    663 	.area GSINIT5 (CODE)
                                    664 	.area GSINIT  (CODE)
                                    665 	.area GSFINAL (CODE)
                                    666 	.area CSEG    (CODE)
                                    667 ;--------------------------------------------------------
                                    668 ; global & static initialisations
                                    669 ;--------------------------------------------------------
                                    670 	.area HOME    (CODE)
                                    671 	.area GSINIT  (CODE)
                                    672 	.area GSFINAL (CODE)
                                    673 	.area GSINIT  (CODE)
                                    674 ;--------------------------------------------------------
                                    675 ; Home
                                    676 ;--------------------------------------------------------
                                    677 	.area HOME    (CODE)
                                    678 	.area HOME    (CODE)
                                    679 ;--------------------------------------------------------
                                    680 ; code
                                    681 ;--------------------------------------------------------
                                    682 	.area CSEG    (CODE)
                                    683 ;------------------------------------------------------------
                                    684 ;Allocation info for local variables in function 'uartinit'
                                    685 ;------------------------------------------------------------
                           000000   686 	G$uartinit$0$0 ==.
                           000000   687 	C$UART.c$5$0_0$16 ==.
                                    688 ;	UART.c:5: void uartinit()
                                    689 ;	-----------------------------------------
                                    690 ;	 function uartinit
                                    691 ;	-----------------------------------------
      002B59                        692 _uartinit:
                           000007   693 	ar7 = 0x07
                           000006   694 	ar6 = 0x06
                           000005   695 	ar5 = 0x05
                           000004   696 	ar4 = 0x04
                           000003   697 	ar3 = 0x03
                           000002   698 	ar2 = 0x02
                           000001   699 	ar1 = 0x01
                           000000   700 	ar0 = 0x00
                           000000   701 	C$UART.c$7$1_0$16 ==.
                                    702 ;	UART.c:7: TMOD = 0x20;
      002B59 75 89 20         [24]  703 	mov	_TMOD,#0x20
                           000003   704 	C$UART.c$8$1_0$16 ==.
                                    705 ;	UART.c:8: SCON = 0x50;
      002B5C 75 98 50         [24]  706 	mov	_SCON,#0x50
                           000006   707 	C$UART.c$9$1_0$16 ==.
                                    708 ;	UART.c:9: TH1 = 0xFD;
      002B5F 75 8D FD         [24]  709 	mov	_TH1,#0xfd
                           000009   710 	C$UART.c$10$1_0$16 ==.
                                    711 ;	UART.c:10: TR1 =1;
                                    712 ;	assignBit
      002B62 D2 8E            [12]  713 	setb	_TR1
                           00000B   714 	C$UART.c$11$1_0$16 ==.
                                    715 ;	UART.c:11: }
                           00000B   716 	C$UART.c$11$1_0$16 ==.
                           00000B   717 	XG$uartinit$0$0 ==.
      002B64 22               [24]  718 	ret
                                    719 ;------------------------------------------------------------
                                    720 ;Allocation info for local variables in function 'putchar'
                                    721 ;------------------------------------------------------------
                                    722 ;c                         Allocated with name '_putchar_c_65536_17'
                                    723 ;------------------------------------------------------------
                           00000C   724 	G$putchar$0$0 ==.
                           00000C   725 	C$UART.c$12$1_0$18 ==.
                                    726 ;	UART.c:12: int putchar(int c)
                                    727 ;	-----------------------------------------
                                    728 ;	 function putchar
                                    729 ;	-----------------------------------------
      002B65                        730 _putchar:
      002B65 AF 83            [24]  731 	mov	r7,dph
      002B67 E5 82            [12]  732 	mov	a,dpl
      002B69 90 04 4B         [24]  733 	mov	dptr,#_putchar_c_65536_17
      002B6C F0               [24]  734 	movx	@dptr,a
      002B6D EF               [12]  735 	mov	a,r7
      002B6E A3               [24]  736 	inc	dptr
      002B6F F0               [24]  737 	movx	@dptr,a
                           000017   738 	C$UART.c$14$1_0$18 ==.
                                    739 ;	UART.c:14: while(!TI);                         // checking the TI interrupt bit, when it sets, the data is sent
      002B70                        740 00101$:
                           000017   741 	C$UART.c$15$1_0$18 ==.
                                    742 ;	UART.c:15: TI=0;
                                    743 ;	assignBit
      002B70 10 99 02         [24]  744 	jbc	_TI,00114$
      002B73 80 FB            [24]  745 	sjmp	00101$
      002B75                        746 00114$:
                           00001C   747 	C$UART.c$16$1_0$18 ==.
                                    748 ;	UART.c:16: SBUF = c;
      002B75 90 04 4B         [24]  749 	mov	dptr,#_putchar_c_65536_17
      002B78 E0               [24]  750 	movx	a,@dptr
      002B79 FE               [12]  751 	mov	r6,a
      002B7A A3               [24]  752 	inc	dptr
      002B7B E0               [24]  753 	movx	a,@dptr
      002B7C 8E 99            [24]  754 	mov	_SBUF,r6
                           000025   755 	C$UART.c$17$1_0$18 ==.
                                    756 ;	UART.c:17: return 1;
      002B7E 90 00 01         [24]  757 	mov	dptr,#0x0001
                           000028   758 	C$UART.c$18$1_0$18 ==.
                                    759 ;	UART.c:18: }
                           000028   760 	C$UART.c$18$1_0$18 ==.
                           000028   761 	XG$putchar$0$0 ==.
      002B81 22               [24]  762 	ret
                                    763 ;------------------------------------------------------------
                                    764 ;Allocation info for local variables in function 'getchar'
                                    765 ;------------------------------------------------------------
                           000029   766 	G$getchar$0$0 ==.
                           000029   767 	C$UART.c$19$1_0$19 ==.
                                    768 ;	UART.c:19: int getchar()
                                    769 ;	-----------------------------------------
                                    770 ;	 function getchar
                                    771 ;	-----------------------------------------
      002B82                        772 _getchar:
                           000029   773 	C$UART.c$21$1_0$19 ==.
                                    774 ;	UART.c:21: while(!RI)
      002B82                        775 00101$:
      002B82 20 98 05         [24]  776 	jb	_RI,00103$
                           00002C   777 	C$UART.c$23$2_0$20 ==.
                                    778 ;	UART.c:23: time_show();
      002B85 12 25 8E         [24]  779 	lcall	_time_show
      002B88 80 F8            [24]  780 	sjmp	00101$
      002B8A                        781 00103$:
                           000031   782 	C$UART.c$25$1_0$19 ==.
                                    783 ;	UART.c:25: RI=0;
                                    784 ;	assignBit
      002B8A C2 98            [12]  785 	clr	_RI
                           000033   786 	C$UART.c$26$1_0$19 ==.
                                    787 ;	UART.c:26: return SBUF;
      002B8C AE 99            [24]  788 	mov	r6,_SBUF
      002B8E 7F 00            [12]  789 	mov	r7,#0x00
      002B90 8E 82            [24]  790 	mov	dpl,r6
      002B92 8F 83            [24]  791 	mov	dph,r7
                           00003B   792 	C$UART.c$27$1_0$19 ==.
                                    793 ;	UART.c:27: }
                           00003B   794 	C$UART.c$27$1_0$19 ==.
                           00003B   795 	XG$getchar$0$0 ==.
      002B94 22               [24]  796 	ret
                                    797 	.area CSEG    (CODE)
                                    798 	.area CONST   (CODE)
                                    799 	.area XINIT   (CODE)
                                    800 	.area CABS    (ABS,CODE)
