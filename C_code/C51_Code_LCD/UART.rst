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
                                     11 	.globl _time_show
                                     12 	.globl _P5_7
                                     13 	.globl _P5_6
                                     14 	.globl _P5_5
                                     15 	.globl _P5_4
                                     16 	.globl _P5_3
                                     17 	.globl _P5_2
                                     18 	.globl _P5_1
                                     19 	.globl _P5_0
                                     20 	.globl _P4_7
                                     21 	.globl _P4_6
                                     22 	.globl _P4_5
                                     23 	.globl _P4_4
                                     24 	.globl _P4_3
                                     25 	.globl _P4_2
                                     26 	.globl _P4_1
                                     27 	.globl _P4_0
                                     28 	.globl _PX0L
                                     29 	.globl _PT0L
                                     30 	.globl _PX1L
                                     31 	.globl _PT1L
                                     32 	.globl _PSL
                                     33 	.globl _PT2L
                                     34 	.globl _PPCL
                                     35 	.globl _EC
                                     36 	.globl _CCF0
                                     37 	.globl _CCF1
                                     38 	.globl _CCF2
                                     39 	.globl _CCF3
                                     40 	.globl _CCF4
                                     41 	.globl _CR
                                     42 	.globl _CF
                                     43 	.globl _TF2
                                     44 	.globl _EXF2
                                     45 	.globl _RCLK
                                     46 	.globl _TCLK
                                     47 	.globl _EXEN2
                                     48 	.globl _TR2
                                     49 	.globl _C_T2
                                     50 	.globl _CP_RL2
                                     51 	.globl _T2CON_7
                                     52 	.globl _T2CON_6
                                     53 	.globl _T2CON_5
                                     54 	.globl _T2CON_4
                                     55 	.globl _T2CON_3
                                     56 	.globl _T2CON_2
                                     57 	.globl _T2CON_1
                                     58 	.globl _T2CON_0
                                     59 	.globl _PT2
                                     60 	.globl _ET2
                                     61 	.globl _CY
                                     62 	.globl _AC
                                     63 	.globl _F0
                                     64 	.globl _RS1
                                     65 	.globl _RS0
                                     66 	.globl _OV
                                     67 	.globl _F1
                                     68 	.globl _P
                                     69 	.globl _PS
                                     70 	.globl _PT1
                                     71 	.globl _PX1
                                     72 	.globl _PT0
                                     73 	.globl _PX0
                                     74 	.globl _RD
                                     75 	.globl _WR
                                     76 	.globl _T1
                                     77 	.globl _T0
                                     78 	.globl _INT1
                                     79 	.globl _INT0
                                     80 	.globl _TXD
                                     81 	.globl _RXD
                                     82 	.globl _P3_7
                                     83 	.globl _P3_6
                                     84 	.globl _P3_5
                                     85 	.globl _P3_4
                                     86 	.globl _P3_3
                                     87 	.globl _P3_2
                                     88 	.globl _P3_1
                                     89 	.globl _P3_0
                                     90 	.globl _EA
                                     91 	.globl _ES
                                     92 	.globl _ET1
                                     93 	.globl _EX1
                                     94 	.globl _ET0
                                     95 	.globl _EX0
                                     96 	.globl _P2_7
                                     97 	.globl _P2_6
                                     98 	.globl _P2_5
                                     99 	.globl _P2_4
                                    100 	.globl _P2_3
                                    101 	.globl _P2_2
                                    102 	.globl _P2_1
                                    103 	.globl _P2_0
                                    104 	.globl _SM0
                                    105 	.globl _SM1
                                    106 	.globl _SM2
                                    107 	.globl _REN
                                    108 	.globl _TB8
                                    109 	.globl _RB8
                                    110 	.globl _TI
                                    111 	.globl _RI
                                    112 	.globl _P1_7
                                    113 	.globl _P1_6
                                    114 	.globl _P1_5
                                    115 	.globl _P1_4
                                    116 	.globl _P1_3
                                    117 	.globl _P1_2
                                    118 	.globl _P1_1
                                    119 	.globl _P1_0
                                    120 	.globl _TF1
                                    121 	.globl _TR1
                                    122 	.globl _TF0
                                    123 	.globl _TR0
                                    124 	.globl _IE1
                                    125 	.globl _IT1
                                    126 	.globl _IE0
                                    127 	.globl _IT0
                                    128 	.globl _P0_7
                                    129 	.globl _P0_6
                                    130 	.globl _P0_5
                                    131 	.globl _P0_4
                                    132 	.globl _P0_3
                                    133 	.globl _P0_2
                                    134 	.globl _P0_1
                                    135 	.globl _P0_0
                                    136 	.globl _EECON
                                    137 	.globl _KBF
                                    138 	.globl _KBE
                                    139 	.globl _KBLS
                                    140 	.globl _BRL
                                    141 	.globl _BDRCON
                                    142 	.globl _T2MOD
                                    143 	.globl _SPDAT
                                    144 	.globl _SPSTA
                                    145 	.globl _SPCON
                                    146 	.globl _SADEN
                                    147 	.globl _SADDR
                                    148 	.globl _WDTPRG
                                    149 	.globl _WDTRST
                                    150 	.globl _P5
                                    151 	.globl _P4
                                    152 	.globl _IPH1
                                    153 	.globl _IPL1
                                    154 	.globl _IPH0
                                    155 	.globl _IPL0
                                    156 	.globl _IEN1
                                    157 	.globl _IEN0
                                    158 	.globl _CMOD
                                    159 	.globl _CL
                                    160 	.globl _CH
                                    161 	.globl _CCON
                                    162 	.globl _CCAPM4
                                    163 	.globl _CCAPM3
                                    164 	.globl _CCAPM2
                                    165 	.globl _CCAPM1
                                    166 	.globl _CCAPM0
                                    167 	.globl _CCAP4L
                                    168 	.globl _CCAP3L
                                    169 	.globl _CCAP2L
                                    170 	.globl _CCAP1L
                                    171 	.globl _CCAP0L
                                    172 	.globl _CCAP4H
                                    173 	.globl _CCAP3H
                                    174 	.globl _CCAP2H
                                    175 	.globl _CCAP1H
                                    176 	.globl _CCAP0H
                                    177 	.globl _CKCON1
                                    178 	.globl _CKCON0
                                    179 	.globl _CKRL
                                    180 	.globl _AUXR1
                                    181 	.globl _AUXR
                                    182 	.globl _TH2
                                    183 	.globl _TL2
                                    184 	.globl _RCAP2H
                                    185 	.globl _RCAP2L
                                    186 	.globl _T2CON
                                    187 	.globl _B
                                    188 	.globl _ACC
                                    189 	.globl _PSW
                                    190 	.globl _IP
                                    191 	.globl _P3
                                    192 	.globl _IE
                                    193 	.globl _P2
                                    194 	.globl _SBUF
                                    195 	.globl _SCON
                                    196 	.globl _P1
                                    197 	.globl _TH1
                                    198 	.globl _TH0
                                    199 	.globl _TL1
                                    200 	.globl _TL0
                                    201 	.globl _TMOD
                                    202 	.globl _TCON
                                    203 	.globl _PCON
                                    204 	.globl _DPH
                                    205 	.globl _DPL
                                    206 	.globl _SP
                                    207 	.globl _P0
                                    208 	.globl _putchar
                                    209 	.globl _getchar
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
                           000000   645 LUART.putchar$c$1_0$16==.
      00044E                        646 _putchar_c_65536_16:
      00044E                        647 	.ds 2
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
                                    683 ;Allocation info for local variables in function 'putchar'
                                    684 ;------------------------------------------------------------
                                    685 ;c                         Allocated with name '_putchar_c_65536_16'
                                    686 ;------------------------------------------------------------
                           000000   687 	G$putchar$0$0 ==.
                           000000   688 	C$UART.c$14$0_0$17 ==.
                                    689 ;	UART.c:14: int putchar(int c)
                                    690 ;	-----------------------------------------
                                    691 ;	 function putchar
                                    692 ;	-----------------------------------------
      002C6F                        693 _putchar:
                           000007   694 	ar7 = 0x07
                           000006   695 	ar6 = 0x06
                           000005   696 	ar5 = 0x05
                           000004   697 	ar4 = 0x04
                           000003   698 	ar3 = 0x03
                           000002   699 	ar2 = 0x02
                           000001   700 	ar1 = 0x01
                           000000   701 	ar0 = 0x00
      002C6F AF 83            [24]  702 	mov	r7,dph
      002C71 E5 82            [12]  703 	mov	a,dpl
      002C73 90 04 4E         [24]  704 	mov	dptr,#_putchar_c_65536_16
      002C76 F0               [24]  705 	movx	@dptr,a
      002C77 EF               [12]  706 	mov	a,r7
      002C78 A3               [24]  707 	inc	dptr
      002C79 F0               [24]  708 	movx	@dptr,a
                           00000B   709 	C$UART.c$16$1_0$17 ==.
                                    710 ;	UART.c:16: while(!TI);                         // checking the TI interrupt bit, when it sets, the data is sent
      002C7A                        711 00101$:
                           00000B   712 	C$UART.c$17$1_0$17 ==.
                                    713 ;	UART.c:17: TI=0;
                                    714 ;	assignBit
      002C7A 10 99 02         [24]  715 	jbc	_TI,00114$
      002C7D 80 FB            [24]  716 	sjmp	00101$
      002C7F                        717 00114$:
                           000010   718 	C$UART.c$18$1_0$17 ==.
                                    719 ;	UART.c:18: SBUF = c;
      002C7F 90 04 4E         [24]  720 	mov	dptr,#_putchar_c_65536_16
      002C82 E0               [24]  721 	movx	a,@dptr
      002C83 FE               [12]  722 	mov	r6,a
      002C84 A3               [24]  723 	inc	dptr
      002C85 E0               [24]  724 	movx	a,@dptr
      002C86 8E 99            [24]  725 	mov	_SBUF,r6
                           000019   726 	C$UART.c$19$1_0$17 ==.
                                    727 ;	UART.c:19: return 1;
      002C88 90 00 01         [24]  728 	mov	dptr,#0x0001
                           00001C   729 	C$UART.c$20$1_0$17 ==.
                                    730 ;	UART.c:20: }
                           00001C   731 	C$UART.c$20$1_0$17 ==.
                           00001C   732 	XG$putchar$0$0 ==.
      002C8B 22               [24]  733 	ret
                                    734 ;------------------------------------------------------------
                                    735 ;Allocation info for local variables in function 'getchar'
                                    736 ;------------------------------------------------------------
                           00001D   737 	G$getchar$0$0 ==.
                           00001D   738 	C$UART.c$26$1_0$18 ==.
                                    739 ;	UART.c:26: int getchar()
                                    740 ;	-----------------------------------------
                                    741 ;	 function getchar
                                    742 ;	-----------------------------------------
      002C8C                        743 _getchar:
                           00001D   744 	C$UART.c$28$1_0$18 ==.
                                    745 ;	UART.c:28: while(!RI)
      002C8C                        746 00101$:
      002C8C 20 98 05         [24]  747 	jb	_RI,00103$
                           000020   748 	C$UART.c$30$2_0$19 ==.
                                    749 ;	UART.c:30: time_show();
      002C8F 12 25 FC         [24]  750 	lcall	_time_show
      002C92 80 F8            [24]  751 	sjmp	00101$
      002C94                        752 00103$:
                           000025   753 	C$UART.c$32$1_0$18 ==.
                                    754 ;	UART.c:32: RI=0;
                                    755 ;	assignBit
      002C94 C2 98            [12]  756 	clr	_RI
                           000027   757 	C$UART.c$33$1_0$18 ==.
                                    758 ;	UART.c:33: return SBUF;
      002C96 AE 99            [24]  759 	mov	r6,_SBUF
      002C98 7F 00            [12]  760 	mov	r7,#0x00
      002C9A 8E 82            [24]  761 	mov	dpl,r6
      002C9C 8F 83            [24]  762 	mov	dph,r7
                           00002F   763 	C$UART.c$34$1_0$18 ==.
                                    764 ;	UART.c:34: }
                           00002F   765 	C$UART.c$34$1_0$18 ==.
                           00002F   766 	XG$getchar$0$0 ==.
      002C9E 22               [24]  767 	ret
                                    768 	.area CSEG    (CODE)
                                    769 	.area CONST   (CODE)
                                    770 	.area XINIT   (CODE)
                                    771 	.area CABS    (ABS,CODE)
