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
                                     11 	.globl _getchar
                                     12 	.globl _putchar
                                     13 	.globl _uartinit
                                     14 	.globl _P5_7
                                     15 	.globl _P5_6
                                     16 	.globl _P5_5
                                     17 	.globl _P5_4
                                     18 	.globl _P5_3
                                     19 	.globl _P5_2
                                     20 	.globl _P5_1
                                     21 	.globl _P5_0
                                     22 	.globl _P4_7
                                     23 	.globl _P4_6
                                     24 	.globl _P4_5
                                     25 	.globl _P4_4
                                     26 	.globl _P4_3
                                     27 	.globl _P4_2
                                     28 	.globl _P4_1
                                     29 	.globl _P4_0
                                     30 	.globl _PX0L
                                     31 	.globl _PT0L
                                     32 	.globl _PX1L
                                     33 	.globl _PT1L
                                     34 	.globl _PSL
                                     35 	.globl _PT2L
                                     36 	.globl _PPCL
                                     37 	.globl _EC
                                     38 	.globl _CCF0
                                     39 	.globl _CCF1
                                     40 	.globl _CCF2
                                     41 	.globl _CCF3
                                     42 	.globl _CCF4
                                     43 	.globl _CR
                                     44 	.globl _CF
                                     45 	.globl _TF2
                                     46 	.globl _EXF2
                                     47 	.globl _RCLK
                                     48 	.globl _TCLK
                                     49 	.globl _EXEN2
                                     50 	.globl _TR2
                                     51 	.globl _C_T2
                                     52 	.globl _CP_RL2
                                     53 	.globl _T2CON_7
                                     54 	.globl _T2CON_6
                                     55 	.globl _T2CON_5
                                     56 	.globl _T2CON_4
                                     57 	.globl _T2CON_3
                                     58 	.globl _T2CON_2
                                     59 	.globl _T2CON_1
                                     60 	.globl _T2CON_0
                                     61 	.globl _PT2
                                     62 	.globl _ET2
                                     63 	.globl _CY
                                     64 	.globl _AC
                                     65 	.globl _F0
                                     66 	.globl _RS1
                                     67 	.globl _RS0
                                     68 	.globl _OV
                                     69 	.globl _F1
                                     70 	.globl _P
                                     71 	.globl _PS
                                     72 	.globl _PT1
                                     73 	.globl _PX1
                                     74 	.globl _PT0
                                     75 	.globl _PX0
                                     76 	.globl _RD
                                     77 	.globl _WR
                                     78 	.globl _T1
                                     79 	.globl _T0
                                     80 	.globl _INT1
                                     81 	.globl _INT0
                                     82 	.globl _TXD
                                     83 	.globl _RXD
                                     84 	.globl _P3_7
                                     85 	.globl _P3_6
                                     86 	.globl _P3_5
                                     87 	.globl _P3_4
                                     88 	.globl _P3_3
                                     89 	.globl _P3_2
                                     90 	.globl _P3_1
                                     91 	.globl _P3_0
                                     92 	.globl _EA
                                     93 	.globl _ES
                                     94 	.globl _ET1
                                     95 	.globl _EX1
                                     96 	.globl _ET0
                                     97 	.globl _EX0
                                     98 	.globl _P2_7
                                     99 	.globl _P2_6
                                    100 	.globl _P2_5
                                    101 	.globl _P2_4
                                    102 	.globl _P2_3
                                    103 	.globl _P2_2
                                    104 	.globl _P2_1
                                    105 	.globl _P2_0
                                    106 	.globl _SM0
                                    107 	.globl _SM1
                                    108 	.globl _SM2
                                    109 	.globl _REN
                                    110 	.globl _TB8
                                    111 	.globl _RB8
                                    112 	.globl _TI
                                    113 	.globl _RI
                                    114 	.globl _P1_7
                                    115 	.globl _P1_6
                                    116 	.globl _P1_5
                                    117 	.globl _P1_4
                                    118 	.globl _P1_3
                                    119 	.globl _P1_2
                                    120 	.globl _P1_1
                                    121 	.globl _P1_0
                                    122 	.globl _TF1
                                    123 	.globl _TR1
                                    124 	.globl _TF0
                                    125 	.globl _TR0
                                    126 	.globl _IE1
                                    127 	.globl _IT1
                                    128 	.globl _IE0
                                    129 	.globl _IT0
                                    130 	.globl _P0_7
                                    131 	.globl _P0_6
                                    132 	.globl _P0_5
                                    133 	.globl _P0_4
                                    134 	.globl _P0_3
                                    135 	.globl _P0_2
                                    136 	.globl _P0_1
                                    137 	.globl _P0_0
                                    138 	.globl _EECON
                                    139 	.globl _KBF
                                    140 	.globl _KBE
                                    141 	.globl _KBLS
                                    142 	.globl _BRL
                                    143 	.globl _BDRCON
                                    144 	.globl _T2MOD
                                    145 	.globl _SPDAT
                                    146 	.globl _SPSTA
                                    147 	.globl _SPCON
                                    148 	.globl _SADEN
                                    149 	.globl _SADDR
                                    150 	.globl _WDTPRG
                                    151 	.globl _WDTRST
                                    152 	.globl _P5
                                    153 	.globl _P4
                                    154 	.globl _IPH1
                                    155 	.globl _IPL1
                                    156 	.globl _IPH0
                                    157 	.globl _IPL0
                                    158 	.globl _IEN1
                                    159 	.globl _IEN0
                                    160 	.globl _CMOD
                                    161 	.globl _CL
                                    162 	.globl _CH
                                    163 	.globl _CCON
                                    164 	.globl _CCAPM4
                                    165 	.globl _CCAPM3
                                    166 	.globl _CCAPM2
                                    167 	.globl _CCAPM1
                                    168 	.globl _CCAPM0
                                    169 	.globl _CCAP4L
                                    170 	.globl _CCAP3L
                                    171 	.globl _CCAP2L
                                    172 	.globl _CCAP1L
                                    173 	.globl _CCAP0L
                                    174 	.globl _CCAP4H
                                    175 	.globl _CCAP3H
                                    176 	.globl _CCAP2H
                                    177 	.globl _CCAP1H
                                    178 	.globl _CCAP0H
                                    179 	.globl _CKCON1
                                    180 	.globl _CKCON0
                                    181 	.globl _CKRL
                                    182 	.globl _AUXR1
                                    183 	.globl _AUXR
                                    184 	.globl _TH2
                                    185 	.globl _TL2
                                    186 	.globl _RCAP2H
                                    187 	.globl _RCAP2L
                                    188 	.globl _T2CON
                                    189 	.globl _B
                                    190 	.globl _ACC
                                    191 	.globl _PSW
                                    192 	.globl _IP
                                    193 	.globl _P3
                                    194 	.globl _IE
                                    195 	.globl _P2
                                    196 	.globl _SBUF
                                    197 	.globl _SCON
                                    198 	.globl _P1
                                    199 	.globl _TH1
                                    200 	.globl _TH0
                                    201 	.globl _TL1
                                    202 	.globl _TL0
                                    203 	.globl _TMOD
                                    204 	.globl _TCON
                                    205 	.globl _PCON
                                    206 	.globl _DPH
                                    207 	.globl _DPL
                                    208 	.globl _SP
                                    209 	.globl _P0
                                    210 ;--------------------------------------------------------
                                    211 ; special function registers
                                    212 ;--------------------------------------------------------
                                    213 	.area RSEG    (ABS,DATA)
      000000                        214 	.org 0x0000
                           000080   215 G$P0$0_0$0 == 0x0080
                           000080   216 _P0	=	0x0080
                           000081   217 G$SP$0_0$0 == 0x0081
                           000081   218 _SP	=	0x0081
                           000082   219 G$DPL$0_0$0 == 0x0082
                           000082   220 _DPL	=	0x0082
                           000083   221 G$DPH$0_0$0 == 0x0083
                           000083   222 _DPH	=	0x0083
                           000087   223 G$PCON$0_0$0 == 0x0087
                           000087   224 _PCON	=	0x0087
                           000088   225 G$TCON$0_0$0 == 0x0088
                           000088   226 _TCON	=	0x0088
                           000089   227 G$TMOD$0_0$0 == 0x0089
                           000089   228 _TMOD	=	0x0089
                           00008A   229 G$TL0$0_0$0 == 0x008a
                           00008A   230 _TL0	=	0x008a
                           00008B   231 G$TL1$0_0$0 == 0x008b
                           00008B   232 _TL1	=	0x008b
                           00008C   233 G$TH0$0_0$0 == 0x008c
                           00008C   234 _TH0	=	0x008c
                           00008D   235 G$TH1$0_0$0 == 0x008d
                           00008D   236 _TH1	=	0x008d
                           000090   237 G$P1$0_0$0 == 0x0090
                           000090   238 _P1	=	0x0090
                           000098   239 G$SCON$0_0$0 == 0x0098
                           000098   240 _SCON	=	0x0098
                           000099   241 G$SBUF$0_0$0 == 0x0099
                           000099   242 _SBUF	=	0x0099
                           0000A0   243 G$P2$0_0$0 == 0x00a0
                           0000A0   244 _P2	=	0x00a0
                           0000A8   245 G$IE$0_0$0 == 0x00a8
                           0000A8   246 _IE	=	0x00a8
                           0000B0   247 G$P3$0_0$0 == 0x00b0
                           0000B0   248 _P3	=	0x00b0
                           0000B8   249 G$IP$0_0$0 == 0x00b8
                           0000B8   250 _IP	=	0x00b8
                           0000D0   251 G$PSW$0_0$0 == 0x00d0
                           0000D0   252 _PSW	=	0x00d0
                           0000E0   253 G$ACC$0_0$0 == 0x00e0
                           0000E0   254 _ACC	=	0x00e0
                           0000F0   255 G$B$0_0$0 == 0x00f0
                           0000F0   256 _B	=	0x00f0
                           0000C8   257 G$T2CON$0_0$0 == 0x00c8
                           0000C8   258 _T2CON	=	0x00c8
                           0000CA   259 G$RCAP2L$0_0$0 == 0x00ca
                           0000CA   260 _RCAP2L	=	0x00ca
                           0000CB   261 G$RCAP2H$0_0$0 == 0x00cb
                           0000CB   262 _RCAP2H	=	0x00cb
                           0000CC   263 G$TL2$0_0$0 == 0x00cc
                           0000CC   264 _TL2	=	0x00cc
                           0000CD   265 G$TH2$0_0$0 == 0x00cd
                           0000CD   266 _TH2	=	0x00cd
                           00008E   267 G$AUXR$0_0$0 == 0x008e
                           00008E   268 _AUXR	=	0x008e
                           0000A2   269 G$AUXR1$0_0$0 == 0x00a2
                           0000A2   270 _AUXR1	=	0x00a2
                           000097   271 G$CKRL$0_0$0 == 0x0097
                           000097   272 _CKRL	=	0x0097
                           00008F   273 G$CKCON0$0_0$0 == 0x008f
                           00008F   274 _CKCON0	=	0x008f
                           0000AF   275 G$CKCON1$0_0$0 == 0x00af
                           0000AF   276 _CKCON1	=	0x00af
                           0000FA   277 G$CCAP0H$0_0$0 == 0x00fa
                           0000FA   278 _CCAP0H	=	0x00fa
                           0000FB   279 G$CCAP1H$0_0$0 == 0x00fb
                           0000FB   280 _CCAP1H	=	0x00fb
                           0000FC   281 G$CCAP2H$0_0$0 == 0x00fc
                           0000FC   282 _CCAP2H	=	0x00fc
                           0000FD   283 G$CCAP3H$0_0$0 == 0x00fd
                           0000FD   284 _CCAP3H	=	0x00fd
                           0000FE   285 G$CCAP4H$0_0$0 == 0x00fe
                           0000FE   286 _CCAP4H	=	0x00fe
                           0000EA   287 G$CCAP0L$0_0$0 == 0x00ea
                           0000EA   288 _CCAP0L	=	0x00ea
                           0000EB   289 G$CCAP1L$0_0$0 == 0x00eb
                           0000EB   290 _CCAP1L	=	0x00eb
                           0000EC   291 G$CCAP2L$0_0$0 == 0x00ec
                           0000EC   292 _CCAP2L	=	0x00ec
                           0000ED   293 G$CCAP3L$0_0$0 == 0x00ed
                           0000ED   294 _CCAP3L	=	0x00ed
                           0000EE   295 G$CCAP4L$0_0$0 == 0x00ee
                           0000EE   296 _CCAP4L	=	0x00ee
                           0000DA   297 G$CCAPM0$0_0$0 == 0x00da
                           0000DA   298 _CCAPM0	=	0x00da
                           0000DB   299 G$CCAPM1$0_0$0 == 0x00db
                           0000DB   300 _CCAPM1	=	0x00db
                           0000DC   301 G$CCAPM2$0_0$0 == 0x00dc
                           0000DC   302 _CCAPM2	=	0x00dc
                           0000DD   303 G$CCAPM3$0_0$0 == 0x00dd
                           0000DD   304 _CCAPM3	=	0x00dd
                           0000DE   305 G$CCAPM4$0_0$0 == 0x00de
                           0000DE   306 _CCAPM4	=	0x00de
                           0000D8   307 G$CCON$0_0$0 == 0x00d8
                           0000D8   308 _CCON	=	0x00d8
                           0000F9   309 G$CH$0_0$0 == 0x00f9
                           0000F9   310 _CH	=	0x00f9
                           0000E9   311 G$CL$0_0$0 == 0x00e9
                           0000E9   312 _CL	=	0x00e9
                           0000D9   313 G$CMOD$0_0$0 == 0x00d9
                           0000D9   314 _CMOD	=	0x00d9
                           0000A8   315 G$IEN0$0_0$0 == 0x00a8
                           0000A8   316 _IEN0	=	0x00a8
                           0000B1   317 G$IEN1$0_0$0 == 0x00b1
                           0000B1   318 _IEN1	=	0x00b1
                           0000B8   319 G$IPL0$0_0$0 == 0x00b8
                           0000B8   320 _IPL0	=	0x00b8
                           0000B7   321 G$IPH0$0_0$0 == 0x00b7
                           0000B7   322 _IPH0	=	0x00b7
                           0000B2   323 G$IPL1$0_0$0 == 0x00b2
                           0000B2   324 _IPL1	=	0x00b2
                           0000B3   325 G$IPH1$0_0$0 == 0x00b3
                           0000B3   326 _IPH1	=	0x00b3
                           0000C0   327 G$P4$0_0$0 == 0x00c0
                           0000C0   328 _P4	=	0x00c0
                           0000E8   329 G$P5$0_0$0 == 0x00e8
                           0000E8   330 _P5	=	0x00e8
                           0000A6   331 G$WDTRST$0_0$0 == 0x00a6
                           0000A6   332 _WDTRST	=	0x00a6
                           0000A7   333 G$WDTPRG$0_0$0 == 0x00a7
                           0000A7   334 _WDTPRG	=	0x00a7
                           0000A9   335 G$SADDR$0_0$0 == 0x00a9
                           0000A9   336 _SADDR	=	0x00a9
                           0000B9   337 G$SADEN$0_0$0 == 0x00b9
                           0000B9   338 _SADEN	=	0x00b9
                           0000C3   339 G$SPCON$0_0$0 == 0x00c3
                           0000C3   340 _SPCON	=	0x00c3
                           0000C4   341 G$SPSTA$0_0$0 == 0x00c4
                           0000C4   342 _SPSTA	=	0x00c4
                           0000C5   343 G$SPDAT$0_0$0 == 0x00c5
                           0000C5   344 _SPDAT	=	0x00c5
                           0000C9   345 G$T2MOD$0_0$0 == 0x00c9
                           0000C9   346 _T2MOD	=	0x00c9
                           00009B   347 G$BDRCON$0_0$0 == 0x009b
                           00009B   348 _BDRCON	=	0x009b
                           00009A   349 G$BRL$0_0$0 == 0x009a
                           00009A   350 _BRL	=	0x009a
                           00009C   351 G$KBLS$0_0$0 == 0x009c
                           00009C   352 _KBLS	=	0x009c
                           00009D   353 G$KBE$0_0$0 == 0x009d
                           00009D   354 _KBE	=	0x009d
                           00009E   355 G$KBF$0_0$0 == 0x009e
                           00009E   356 _KBF	=	0x009e
                           0000D2   357 G$EECON$0_0$0 == 0x00d2
                           0000D2   358 _EECON	=	0x00d2
                                    359 ;--------------------------------------------------------
                                    360 ; special function bits
                                    361 ;--------------------------------------------------------
                                    362 	.area RSEG    (ABS,DATA)
      000000                        363 	.org 0x0000
                           000080   364 G$P0_0$0_0$0 == 0x0080
                           000080   365 _P0_0	=	0x0080
                           000081   366 G$P0_1$0_0$0 == 0x0081
                           000081   367 _P0_1	=	0x0081
                           000082   368 G$P0_2$0_0$0 == 0x0082
                           000082   369 _P0_2	=	0x0082
                           000083   370 G$P0_3$0_0$0 == 0x0083
                           000083   371 _P0_3	=	0x0083
                           000084   372 G$P0_4$0_0$0 == 0x0084
                           000084   373 _P0_4	=	0x0084
                           000085   374 G$P0_5$0_0$0 == 0x0085
                           000085   375 _P0_5	=	0x0085
                           000086   376 G$P0_6$0_0$0 == 0x0086
                           000086   377 _P0_6	=	0x0086
                           000087   378 G$P0_7$0_0$0 == 0x0087
                           000087   379 _P0_7	=	0x0087
                           000088   380 G$IT0$0_0$0 == 0x0088
                           000088   381 _IT0	=	0x0088
                           000089   382 G$IE0$0_0$0 == 0x0089
                           000089   383 _IE0	=	0x0089
                           00008A   384 G$IT1$0_0$0 == 0x008a
                           00008A   385 _IT1	=	0x008a
                           00008B   386 G$IE1$0_0$0 == 0x008b
                           00008B   387 _IE1	=	0x008b
                           00008C   388 G$TR0$0_0$0 == 0x008c
                           00008C   389 _TR0	=	0x008c
                           00008D   390 G$TF0$0_0$0 == 0x008d
                           00008D   391 _TF0	=	0x008d
                           00008E   392 G$TR1$0_0$0 == 0x008e
                           00008E   393 _TR1	=	0x008e
                           00008F   394 G$TF1$0_0$0 == 0x008f
                           00008F   395 _TF1	=	0x008f
                           000090   396 G$P1_0$0_0$0 == 0x0090
                           000090   397 _P1_0	=	0x0090
                           000091   398 G$P1_1$0_0$0 == 0x0091
                           000091   399 _P1_1	=	0x0091
                           000092   400 G$P1_2$0_0$0 == 0x0092
                           000092   401 _P1_2	=	0x0092
                           000093   402 G$P1_3$0_0$0 == 0x0093
                           000093   403 _P1_3	=	0x0093
                           000094   404 G$P1_4$0_0$0 == 0x0094
                           000094   405 _P1_4	=	0x0094
                           000095   406 G$P1_5$0_0$0 == 0x0095
                           000095   407 _P1_5	=	0x0095
                           000096   408 G$P1_6$0_0$0 == 0x0096
                           000096   409 _P1_6	=	0x0096
                           000097   410 G$P1_7$0_0$0 == 0x0097
                           000097   411 _P1_7	=	0x0097
                           000098   412 G$RI$0_0$0 == 0x0098
                           000098   413 _RI	=	0x0098
                           000099   414 G$TI$0_0$0 == 0x0099
                           000099   415 _TI	=	0x0099
                           00009A   416 G$RB8$0_0$0 == 0x009a
                           00009A   417 _RB8	=	0x009a
                           00009B   418 G$TB8$0_0$0 == 0x009b
                           00009B   419 _TB8	=	0x009b
                           00009C   420 G$REN$0_0$0 == 0x009c
                           00009C   421 _REN	=	0x009c
                           00009D   422 G$SM2$0_0$0 == 0x009d
                           00009D   423 _SM2	=	0x009d
                           00009E   424 G$SM1$0_0$0 == 0x009e
                           00009E   425 _SM1	=	0x009e
                           00009F   426 G$SM0$0_0$0 == 0x009f
                           00009F   427 _SM0	=	0x009f
                           0000A0   428 G$P2_0$0_0$0 == 0x00a0
                           0000A0   429 _P2_0	=	0x00a0
                           0000A1   430 G$P2_1$0_0$0 == 0x00a1
                           0000A1   431 _P2_1	=	0x00a1
                           0000A2   432 G$P2_2$0_0$0 == 0x00a2
                           0000A2   433 _P2_2	=	0x00a2
                           0000A3   434 G$P2_3$0_0$0 == 0x00a3
                           0000A3   435 _P2_3	=	0x00a3
                           0000A4   436 G$P2_4$0_0$0 == 0x00a4
                           0000A4   437 _P2_4	=	0x00a4
                           0000A5   438 G$P2_5$0_0$0 == 0x00a5
                           0000A5   439 _P2_5	=	0x00a5
                           0000A6   440 G$P2_6$0_0$0 == 0x00a6
                           0000A6   441 _P2_6	=	0x00a6
                           0000A7   442 G$P2_7$0_0$0 == 0x00a7
                           0000A7   443 _P2_7	=	0x00a7
                           0000A8   444 G$EX0$0_0$0 == 0x00a8
                           0000A8   445 _EX0	=	0x00a8
                           0000A9   446 G$ET0$0_0$0 == 0x00a9
                           0000A9   447 _ET0	=	0x00a9
                           0000AA   448 G$EX1$0_0$0 == 0x00aa
                           0000AA   449 _EX1	=	0x00aa
                           0000AB   450 G$ET1$0_0$0 == 0x00ab
                           0000AB   451 _ET1	=	0x00ab
                           0000AC   452 G$ES$0_0$0 == 0x00ac
                           0000AC   453 _ES	=	0x00ac
                           0000AF   454 G$EA$0_0$0 == 0x00af
                           0000AF   455 _EA	=	0x00af
                           0000B0   456 G$P3_0$0_0$0 == 0x00b0
                           0000B0   457 _P3_0	=	0x00b0
                           0000B1   458 G$P3_1$0_0$0 == 0x00b1
                           0000B1   459 _P3_1	=	0x00b1
                           0000B2   460 G$P3_2$0_0$0 == 0x00b2
                           0000B2   461 _P3_2	=	0x00b2
                           0000B3   462 G$P3_3$0_0$0 == 0x00b3
                           0000B3   463 _P3_3	=	0x00b3
                           0000B4   464 G$P3_4$0_0$0 == 0x00b4
                           0000B4   465 _P3_4	=	0x00b4
                           0000B5   466 G$P3_5$0_0$0 == 0x00b5
                           0000B5   467 _P3_5	=	0x00b5
                           0000B6   468 G$P3_6$0_0$0 == 0x00b6
                           0000B6   469 _P3_6	=	0x00b6
                           0000B7   470 G$P3_7$0_0$0 == 0x00b7
                           0000B7   471 _P3_7	=	0x00b7
                           0000B0   472 G$RXD$0_0$0 == 0x00b0
                           0000B0   473 _RXD	=	0x00b0
                           0000B1   474 G$TXD$0_0$0 == 0x00b1
                           0000B1   475 _TXD	=	0x00b1
                           0000B2   476 G$INT0$0_0$0 == 0x00b2
                           0000B2   477 _INT0	=	0x00b2
                           0000B3   478 G$INT1$0_0$0 == 0x00b3
                           0000B3   479 _INT1	=	0x00b3
                           0000B4   480 G$T0$0_0$0 == 0x00b4
                           0000B4   481 _T0	=	0x00b4
                           0000B5   482 G$T1$0_0$0 == 0x00b5
                           0000B5   483 _T1	=	0x00b5
                           0000B6   484 G$WR$0_0$0 == 0x00b6
                           0000B6   485 _WR	=	0x00b6
                           0000B7   486 G$RD$0_0$0 == 0x00b7
                           0000B7   487 _RD	=	0x00b7
                           0000B8   488 G$PX0$0_0$0 == 0x00b8
                           0000B8   489 _PX0	=	0x00b8
                           0000B9   490 G$PT0$0_0$0 == 0x00b9
                           0000B9   491 _PT0	=	0x00b9
                           0000BA   492 G$PX1$0_0$0 == 0x00ba
                           0000BA   493 _PX1	=	0x00ba
                           0000BB   494 G$PT1$0_0$0 == 0x00bb
                           0000BB   495 _PT1	=	0x00bb
                           0000BC   496 G$PS$0_0$0 == 0x00bc
                           0000BC   497 _PS	=	0x00bc
                           0000D0   498 G$P$0_0$0 == 0x00d0
                           0000D0   499 _P	=	0x00d0
                           0000D1   500 G$F1$0_0$0 == 0x00d1
                           0000D1   501 _F1	=	0x00d1
                           0000D2   502 G$OV$0_0$0 == 0x00d2
                           0000D2   503 _OV	=	0x00d2
                           0000D3   504 G$RS0$0_0$0 == 0x00d3
                           0000D3   505 _RS0	=	0x00d3
                           0000D4   506 G$RS1$0_0$0 == 0x00d4
                           0000D4   507 _RS1	=	0x00d4
                           0000D5   508 G$F0$0_0$0 == 0x00d5
                           0000D5   509 _F0	=	0x00d5
                           0000D6   510 G$AC$0_0$0 == 0x00d6
                           0000D6   511 _AC	=	0x00d6
                           0000D7   512 G$CY$0_0$0 == 0x00d7
                           0000D7   513 _CY	=	0x00d7
                           0000AD   514 G$ET2$0_0$0 == 0x00ad
                           0000AD   515 _ET2	=	0x00ad
                           0000BD   516 G$PT2$0_0$0 == 0x00bd
                           0000BD   517 _PT2	=	0x00bd
                           0000C8   518 G$T2CON_0$0_0$0 == 0x00c8
                           0000C8   519 _T2CON_0	=	0x00c8
                           0000C9   520 G$T2CON_1$0_0$0 == 0x00c9
                           0000C9   521 _T2CON_1	=	0x00c9
                           0000CA   522 G$T2CON_2$0_0$0 == 0x00ca
                           0000CA   523 _T2CON_2	=	0x00ca
                           0000CB   524 G$T2CON_3$0_0$0 == 0x00cb
                           0000CB   525 _T2CON_3	=	0x00cb
                           0000CC   526 G$T2CON_4$0_0$0 == 0x00cc
                           0000CC   527 _T2CON_4	=	0x00cc
                           0000CD   528 G$T2CON_5$0_0$0 == 0x00cd
                           0000CD   529 _T2CON_5	=	0x00cd
                           0000CE   530 G$T2CON_6$0_0$0 == 0x00ce
                           0000CE   531 _T2CON_6	=	0x00ce
                           0000CF   532 G$T2CON_7$0_0$0 == 0x00cf
                           0000CF   533 _T2CON_7	=	0x00cf
                           0000C8   534 G$CP_RL2$0_0$0 == 0x00c8
                           0000C8   535 _CP_RL2	=	0x00c8
                           0000C9   536 G$C_T2$0_0$0 == 0x00c9
                           0000C9   537 _C_T2	=	0x00c9
                           0000CA   538 G$TR2$0_0$0 == 0x00ca
                           0000CA   539 _TR2	=	0x00ca
                           0000CB   540 G$EXEN2$0_0$0 == 0x00cb
                           0000CB   541 _EXEN2	=	0x00cb
                           0000CC   542 G$TCLK$0_0$0 == 0x00cc
                           0000CC   543 _TCLK	=	0x00cc
                           0000CD   544 G$RCLK$0_0$0 == 0x00cd
                           0000CD   545 _RCLK	=	0x00cd
                           0000CE   546 G$EXF2$0_0$0 == 0x00ce
                           0000CE   547 _EXF2	=	0x00ce
                           0000CF   548 G$TF2$0_0$0 == 0x00cf
                           0000CF   549 _TF2	=	0x00cf
                           0000DF   550 G$CF$0_0$0 == 0x00df
                           0000DF   551 _CF	=	0x00df
                           0000DE   552 G$CR$0_0$0 == 0x00de
                           0000DE   553 _CR	=	0x00de
                           0000DC   554 G$CCF4$0_0$0 == 0x00dc
                           0000DC   555 _CCF4	=	0x00dc
                           0000DB   556 G$CCF3$0_0$0 == 0x00db
                           0000DB   557 _CCF3	=	0x00db
                           0000DA   558 G$CCF2$0_0$0 == 0x00da
                           0000DA   559 _CCF2	=	0x00da
                           0000D9   560 G$CCF1$0_0$0 == 0x00d9
                           0000D9   561 _CCF1	=	0x00d9
                           0000D8   562 G$CCF0$0_0$0 == 0x00d8
                           0000D8   563 _CCF0	=	0x00d8
                           0000AE   564 G$EC$0_0$0 == 0x00ae
                           0000AE   565 _EC	=	0x00ae
                           0000BE   566 G$PPCL$0_0$0 == 0x00be
                           0000BE   567 _PPCL	=	0x00be
                           0000BD   568 G$PT2L$0_0$0 == 0x00bd
                           0000BD   569 _PT2L	=	0x00bd
                           0000BC   570 G$PSL$0_0$0 == 0x00bc
                           0000BC   571 _PSL	=	0x00bc
                           0000BB   572 G$PT1L$0_0$0 == 0x00bb
                           0000BB   573 _PT1L	=	0x00bb
                           0000BA   574 G$PX1L$0_0$0 == 0x00ba
                           0000BA   575 _PX1L	=	0x00ba
                           0000B9   576 G$PT0L$0_0$0 == 0x00b9
                           0000B9   577 _PT0L	=	0x00b9
                           0000B8   578 G$PX0L$0_0$0 == 0x00b8
                           0000B8   579 _PX0L	=	0x00b8
                           0000C0   580 G$P4_0$0_0$0 == 0x00c0
                           0000C0   581 _P4_0	=	0x00c0
                           0000C1   582 G$P4_1$0_0$0 == 0x00c1
                           0000C1   583 _P4_1	=	0x00c1
                           0000C2   584 G$P4_2$0_0$0 == 0x00c2
                           0000C2   585 _P4_2	=	0x00c2
                           0000C3   586 G$P4_3$0_0$0 == 0x00c3
                           0000C3   587 _P4_3	=	0x00c3
                           0000C4   588 G$P4_4$0_0$0 == 0x00c4
                           0000C4   589 _P4_4	=	0x00c4
                           0000C5   590 G$P4_5$0_0$0 == 0x00c5
                           0000C5   591 _P4_5	=	0x00c5
                           0000C6   592 G$P4_6$0_0$0 == 0x00c6
                           0000C6   593 _P4_6	=	0x00c6
                           0000C7   594 G$P4_7$0_0$0 == 0x00c7
                           0000C7   595 _P4_7	=	0x00c7
                           0000E8   596 G$P5_0$0_0$0 == 0x00e8
                           0000E8   597 _P5_0	=	0x00e8
                           0000E9   598 G$P5_1$0_0$0 == 0x00e9
                           0000E9   599 _P5_1	=	0x00e9
                           0000EA   600 G$P5_2$0_0$0 == 0x00ea
                           0000EA   601 _P5_2	=	0x00ea
                           0000EB   602 G$P5_3$0_0$0 == 0x00eb
                           0000EB   603 _P5_3	=	0x00eb
                           0000EC   604 G$P5_4$0_0$0 == 0x00ec
                           0000EC   605 _P5_4	=	0x00ec
                           0000ED   606 G$P5_5$0_0$0 == 0x00ed
                           0000ED   607 _P5_5	=	0x00ed
                           0000EE   608 G$P5_6$0_0$0 == 0x00ee
                           0000EE   609 _P5_6	=	0x00ee
                           0000EF   610 G$P5_7$0_0$0 == 0x00ef
                           0000EF   611 _P5_7	=	0x00ef
                                    612 ;--------------------------------------------------------
                                    613 ; overlayable register banks
                                    614 ;--------------------------------------------------------
                                    615 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        616 	.ds 8
                                    617 ;--------------------------------------------------------
                                    618 ; internal ram data
                                    619 ;--------------------------------------------------------
                                    620 	.area DSEG    (DATA)
                                    621 ;--------------------------------------------------------
                                    622 ; overlayable items in internal ram 
                                    623 ;--------------------------------------------------------
                                    624 ;--------------------------------------------------------
                                    625 ; indirectly addressable internal ram data
                                    626 ;--------------------------------------------------------
                                    627 	.area ISEG    (DATA)
                                    628 ;--------------------------------------------------------
                                    629 ; absolute internal ram data
                                    630 ;--------------------------------------------------------
                                    631 	.area IABS    (ABS,DATA)
                                    632 	.area IABS    (ABS,DATA)
                                    633 ;--------------------------------------------------------
                                    634 ; bit data
                                    635 ;--------------------------------------------------------
                                    636 	.area BSEG    (BIT)
                                    637 ;--------------------------------------------------------
                                    638 ; paged external ram data
                                    639 ;--------------------------------------------------------
                                    640 	.area PSEG    (PAG,XDATA)
                                    641 ;--------------------------------------------------------
                                    642 ; external ram data
                                    643 ;--------------------------------------------------------
                                    644 	.area XSEG    (XDATA)
                           000000   645 LUART.putchar$c$1_0$2==.
      000435                        646 _putchar_c_65536_2:
      000435                        647 	.ds 2
                                    648 ;--------------------------------------------------------
                                    649 ; absolute external ram data
                                    650 ;--------------------------------------------------------
                                    651 	.area XABS    (ABS,XDATA)
                                    652 ;--------------------------------------------------------
                                    653 ; external initialized ram data
                                    654 ;--------------------------------------------------------
                                    655 	.area XISEG   (XDATA)
                                    656 	.area HOME    (CODE)
                                    657 	.area GSINIT0 (CODE)
                                    658 	.area GSINIT1 (CODE)
                                    659 	.area GSINIT2 (CODE)
                                    660 	.area GSINIT3 (CODE)
                                    661 	.area GSINIT4 (CODE)
                                    662 	.area GSINIT5 (CODE)
                                    663 	.area GSINIT  (CODE)
                                    664 	.area GSFINAL (CODE)
                                    665 	.area CSEG    (CODE)
                                    666 ;--------------------------------------------------------
                                    667 ; global & static initialisations
                                    668 ;--------------------------------------------------------
                                    669 	.area HOME    (CODE)
                                    670 	.area GSINIT  (CODE)
                                    671 	.area GSFINAL (CODE)
                                    672 	.area GSINIT  (CODE)
                                    673 ;--------------------------------------------------------
                                    674 ; Home
                                    675 ;--------------------------------------------------------
                                    676 	.area HOME    (CODE)
                                    677 	.area HOME    (CODE)
                                    678 ;--------------------------------------------------------
                                    679 ; code
                                    680 ;--------------------------------------------------------
                                    681 	.area CSEG    (CODE)
                                    682 ;------------------------------------------------------------
                                    683 ;Allocation info for local variables in function 'uartinit'
                                    684 ;------------------------------------------------------------
                           000000   685 	G$uartinit$0$0 ==.
                           000000   686 	C$UART.c$3$0_0$1 ==.
                                    687 ;	UART.c:3: void uartinit()
                                    688 ;	-----------------------------------------
                                    689 ;	 function uartinit
                                    690 ;	-----------------------------------------
      0027FD                        691 _uartinit:
                           000007   692 	ar7 = 0x07
                           000006   693 	ar6 = 0x06
                           000005   694 	ar5 = 0x05
                           000004   695 	ar4 = 0x04
                           000003   696 	ar3 = 0x03
                           000002   697 	ar2 = 0x02
                           000001   698 	ar1 = 0x01
                           000000   699 	ar0 = 0x00
                           000000   700 	C$UART.c$5$1_0$1 ==.
                                    701 ;	UART.c:5: TMOD = 0x20;
      0027FD 75 89 20         [24]  702 	mov	_TMOD,#0x20
                           000003   703 	C$UART.c$6$1_0$1 ==.
                                    704 ;	UART.c:6: SCON = 0x50;
      002800 75 98 50         [24]  705 	mov	_SCON,#0x50
                           000006   706 	C$UART.c$7$1_0$1 ==.
                                    707 ;	UART.c:7: TH1 = 0xFD;
      002803 75 8D FD         [24]  708 	mov	_TH1,#0xfd
                           000009   709 	C$UART.c$8$1_0$1 ==.
                                    710 ;	UART.c:8: TR1 =1;
                                    711 ;	assignBit
      002806 D2 8E            [12]  712 	setb	_TR1
                           00000B   713 	C$UART.c$9$1_0$1 ==.
                                    714 ;	UART.c:9: }
                           00000B   715 	C$UART.c$9$1_0$1 ==.
                           00000B   716 	XG$uartinit$0$0 ==.
      002808 22               [24]  717 	ret
                                    718 ;------------------------------------------------------------
                                    719 ;Allocation info for local variables in function 'putchar'
                                    720 ;------------------------------------------------------------
                                    721 ;c                         Allocated with name '_putchar_c_65536_2'
                                    722 ;------------------------------------------------------------
                           00000C   723 	G$putchar$0$0 ==.
                           00000C   724 	C$UART.c$10$1_0$3 ==.
                                    725 ;	UART.c:10: int putchar(int c)
                                    726 ;	-----------------------------------------
                                    727 ;	 function putchar
                                    728 ;	-----------------------------------------
      002809                        729 _putchar:
      002809 AF 83            [24]  730 	mov	r7,dph
      00280B E5 82            [12]  731 	mov	a,dpl
      00280D 90 04 35         [24]  732 	mov	dptr,#_putchar_c_65536_2
      002810 F0               [24]  733 	movx	@dptr,a
      002811 EF               [12]  734 	mov	a,r7
      002812 A3               [24]  735 	inc	dptr
      002813 F0               [24]  736 	movx	@dptr,a
                           000017   737 	C$UART.c$12$1_0$3 ==.
                                    738 ;	UART.c:12: while(!TI);                         // checking the TI interrupt bit, when it sets, the data is sent
      002814                        739 00101$:
                           000017   740 	C$UART.c$13$1_0$3 ==.
                                    741 ;	UART.c:13: TI=0;
                                    742 ;	assignBit
      002814 10 99 02         [24]  743 	jbc	_TI,00114$
      002817 80 FB            [24]  744 	sjmp	00101$
      002819                        745 00114$:
                           00001C   746 	C$UART.c$14$1_0$3 ==.
                                    747 ;	UART.c:14: SBUF = c;
      002819 90 04 35         [24]  748 	mov	dptr,#_putchar_c_65536_2
      00281C E0               [24]  749 	movx	a,@dptr
      00281D FE               [12]  750 	mov	r6,a
      00281E A3               [24]  751 	inc	dptr
      00281F E0               [24]  752 	movx	a,@dptr
      002820 8E 99            [24]  753 	mov	_SBUF,r6
                           000025   754 	C$UART.c$15$1_0$3 ==.
                                    755 ;	UART.c:15: return 1;
      002822 90 00 01         [24]  756 	mov	dptr,#0x0001
                           000028   757 	C$UART.c$16$1_0$3 ==.
                                    758 ;	UART.c:16: }
                           000028   759 	C$UART.c$16$1_0$3 ==.
                           000028   760 	XG$putchar$0$0 ==.
      002825 22               [24]  761 	ret
                                    762 ;------------------------------------------------------------
                                    763 ;Allocation info for local variables in function 'getchar'
                                    764 ;------------------------------------------------------------
                           000029   765 	G$getchar$0$0 ==.
                           000029   766 	C$UART.c$17$1_0$4 ==.
                                    767 ;	UART.c:17: int getchar()
                                    768 ;	-----------------------------------------
                                    769 ;	 function getchar
                                    770 ;	-----------------------------------------
      002826                        771 _getchar:
                           000029   772 	C$UART.c$19$1_0$4 ==.
                                    773 ;	UART.c:19: while(!RI);
      002826                        774 00101$:
                           000029   775 	C$UART.c$21$1_0$4 ==.
                                    776 ;	UART.c:21: RI=0;
                                    777 ;	assignBit
      002826 10 98 02         [24]  778 	jbc	_RI,00114$
      002829 80 FB            [24]  779 	sjmp	00101$
      00282B                        780 00114$:
                           00002E   781 	C$UART.c$22$1_0$4 ==.
                                    782 ;	UART.c:22: return SBUF;
      00282B AE 99            [24]  783 	mov	r6,_SBUF
      00282D 7F 00            [12]  784 	mov	r7,#0x00
      00282F 8E 82            [24]  785 	mov	dpl,r6
      002831 8F 83            [24]  786 	mov	dph,r7
                           000036   787 	C$UART.c$23$1_0$4 ==.
                                    788 ;	UART.c:23: }
                           000036   789 	C$UART.c$23$1_0$4 ==.
                           000036   790 	XG$getchar$0$0 ==.
      002833 22               [24]  791 	ret
                                    792 	.area CSEG    (CODE)
                                    793 	.area CONST   (CODE)
                                    794 	.area XINIT   (CODE)
                                    795 	.area CABS    (ABS,CODE)
