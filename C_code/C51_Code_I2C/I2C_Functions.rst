                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.9.0 #11195 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module I2C_Functions
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _get_blocknumber
                                     12 	.globl _delay1
                                     13 	.globl _ack
                                     14 	.globl _eereset
                                     15 	.globl _start
                                     16 	.globl _printf_tiny
                                     17 	.globl _printf
                                     18 	.globl _P5_7
                                     19 	.globl _P5_6
                                     20 	.globl _P5_5
                                     21 	.globl _P5_4
                                     22 	.globl _P5_3
                                     23 	.globl _P5_2
                                     24 	.globl _P5_1
                                     25 	.globl _P5_0
                                     26 	.globl _P4_7
                                     27 	.globl _P4_6
                                     28 	.globl _P4_5
                                     29 	.globl _P4_4
                                     30 	.globl _P4_3
                                     31 	.globl _P4_2
                                     32 	.globl _P4_1
                                     33 	.globl _P4_0
                                     34 	.globl _PX0L
                                     35 	.globl _PT0L
                                     36 	.globl _PX1L
                                     37 	.globl _PT1L
                                     38 	.globl _PSL
                                     39 	.globl _PT2L
                                     40 	.globl _PPCL
                                     41 	.globl _EC
                                     42 	.globl _CCF0
                                     43 	.globl _CCF1
                                     44 	.globl _CCF2
                                     45 	.globl _CCF3
                                     46 	.globl _CCF4
                                     47 	.globl _CR
                                     48 	.globl _CF
                                     49 	.globl _TF2
                                     50 	.globl _EXF2
                                     51 	.globl _RCLK
                                     52 	.globl _TCLK
                                     53 	.globl _EXEN2
                                     54 	.globl _TR2
                                     55 	.globl _C_T2
                                     56 	.globl _CP_RL2
                                     57 	.globl _T2CON_7
                                     58 	.globl _T2CON_6
                                     59 	.globl _T2CON_5
                                     60 	.globl _T2CON_4
                                     61 	.globl _T2CON_3
                                     62 	.globl _T2CON_2
                                     63 	.globl _T2CON_1
                                     64 	.globl _T2CON_0
                                     65 	.globl _PT2
                                     66 	.globl _ET2
                                     67 	.globl _CY
                                     68 	.globl _AC
                                     69 	.globl _F0
                                     70 	.globl _RS1
                                     71 	.globl _RS0
                                     72 	.globl _OV
                                     73 	.globl _F1
                                     74 	.globl _P
                                     75 	.globl _PS
                                     76 	.globl _PT1
                                     77 	.globl _PX1
                                     78 	.globl _PT0
                                     79 	.globl _PX0
                                     80 	.globl _RD
                                     81 	.globl _WR
                                     82 	.globl _T1
                                     83 	.globl _T0
                                     84 	.globl _INT1
                                     85 	.globl _INT0
                                     86 	.globl _TXD
                                     87 	.globl _RXD
                                     88 	.globl _P3_7
                                     89 	.globl _P3_6
                                     90 	.globl _P3_5
                                     91 	.globl _P3_4
                                     92 	.globl _P3_3
                                     93 	.globl _P3_2
                                     94 	.globl _P3_1
                                     95 	.globl _P3_0
                                     96 	.globl _EA
                                     97 	.globl _ES
                                     98 	.globl _ET1
                                     99 	.globl _EX1
                                    100 	.globl _ET0
                                    101 	.globl _EX0
                                    102 	.globl _P2_7
                                    103 	.globl _P2_6
                                    104 	.globl _P2_5
                                    105 	.globl _P2_4
                                    106 	.globl _P2_3
                                    107 	.globl _P2_2
                                    108 	.globl _P2_1
                                    109 	.globl _P2_0
                                    110 	.globl _SM0
                                    111 	.globl _SM1
                                    112 	.globl _SM2
                                    113 	.globl _REN
                                    114 	.globl _TB8
                                    115 	.globl _RB8
                                    116 	.globl _TI
                                    117 	.globl _RI
                                    118 	.globl _P1_7
                                    119 	.globl _P1_6
                                    120 	.globl _P1_5
                                    121 	.globl _P1_4
                                    122 	.globl _P1_3
                                    123 	.globl _P1_2
                                    124 	.globl _P1_1
                                    125 	.globl _P1_0
                                    126 	.globl _TF1
                                    127 	.globl _TR1
                                    128 	.globl _TF0
                                    129 	.globl _TR0
                                    130 	.globl _IE1
                                    131 	.globl _IT1
                                    132 	.globl _IE0
                                    133 	.globl _IT0
                                    134 	.globl _P0_7
                                    135 	.globl _P0_6
                                    136 	.globl _P0_5
                                    137 	.globl _P0_4
                                    138 	.globl _P0_3
                                    139 	.globl _P0_2
                                    140 	.globl _P0_1
                                    141 	.globl _P0_0
                                    142 	.globl _EECON
                                    143 	.globl _KBF
                                    144 	.globl _KBE
                                    145 	.globl _KBLS
                                    146 	.globl _BRL
                                    147 	.globl _BDRCON
                                    148 	.globl _T2MOD
                                    149 	.globl _SPDAT
                                    150 	.globl _SPSTA
                                    151 	.globl _SPCON
                                    152 	.globl _SADEN
                                    153 	.globl _SADDR
                                    154 	.globl _WDTPRG
                                    155 	.globl _WDTRST
                                    156 	.globl _P5
                                    157 	.globl _P4
                                    158 	.globl _IPH1
                                    159 	.globl _IPL1
                                    160 	.globl _IPH0
                                    161 	.globl _IPL0
                                    162 	.globl _IEN1
                                    163 	.globl _IEN0
                                    164 	.globl _CMOD
                                    165 	.globl _CL
                                    166 	.globl _CH
                                    167 	.globl _CCON
                                    168 	.globl _CCAPM4
                                    169 	.globl _CCAPM3
                                    170 	.globl _CCAPM2
                                    171 	.globl _CCAPM1
                                    172 	.globl _CCAPM0
                                    173 	.globl _CCAP4L
                                    174 	.globl _CCAP3L
                                    175 	.globl _CCAP2L
                                    176 	.globl _CCAP1L
                                    177 	.globl _CCAP0L
                                    178 	.globl _CCAP4H
                                    179 	.globl _CCAP3H
                                    180 	.globl _CCAP2H
                                    181 	.globl _CCAP1H
                                    182 	.globl _CCAP0H
                                    183 	.globl _CKCON1
                                    184 	.globl _CKCON0
                                    185 	.globl _CKRL
                                    186 	.globl _AUXR1
                                    187 	.globl _AUXR
                                    188 	.globl _TH2
                                    189 	.globl _TL2
                                    190 	.globl _RCAP2H
                                    191 	.globl _RCAP2L
                                    192 	.globl _T2CON
                                    193 	.globl _B
                                    194 	.globl _ACC
                                    195 	.globl _PSW
                                    196 	.globl _IP
                                    197 	.globl _P3
                                    198 	.globl _IE
                                    199 	.globl _P2
                                    200 	.globl _SBUF
                                    201 	.globl _SCON
                                    202 	.globl _P1
                                    203 	.globl _TH1
                                    204 	.globl _TH0
                                    205 	.globl _TL1
                                    206 	.globl _TL0
                                    207 	.globl _TMOD
                                    208 	.globl _TCON
                                    209 	.globl _PCON
                                    210 	.globl _DPH
                                    211 	.globl _DPL
                                    212 	.globl _SP
                                    213 	.globl _P0
                                    214 	.globl _dummy_write_PARM_2
                                    215 	.globl _reeprom_seq_PARM_3
                                    216 	.globl _reeprom_seq_PARM_2
                                    217 	.globl _reeprom_PARM_2
                                    218 	.globl _weeprom_PARM_3
                                    219 	.globl _weeprom_PARM_2
                                    220 	.globl _weeprom
                                    221 	.globl _reeprom
                                    222 	.globl _read
                                    223 	.globl _outs
                                    224 	.globl _out
                                    225 	.globl _in
                                    226 	.globl _stop
                                    227 	.globl _reeprom_seq
                                    228 	.globl _dummy_read
                                    229 	.globl _dummy_write
                                    230 ;--------------------------------------------------------
                                    231 ; special function registers
                                    232 ;--------------------------------------------------------
                                    233 	.area RSEG    (ABS,DATA)
      000000                        234 	.org 0x0000
                           000080   235 G$P0$0_0$0 == 0x0080
                           000080   236 _P0	=	0x0080
                           000081   237 G$SP$0_0$0 == 0x0081
                           000081   238 _SP	=	0x0081
                           000082   239 G$DPL$0_0$0 == 0x0082
                           000082   240 _DPL	=	0x0082
                           000083   241 G$DPH$0_0$0 == 0x0083
                           000083   242 _DPH	=	0x0083
                           000087   243 G$PCON$0_0$0 == 0x0087
                           000087   244 _PCON	=	0x0087
                           000088   245 G$TCON$0_0$0 == 0x0088
                           000088   246 _TCON	=	0x0088
                           000089   247 G$TMOD$0_0$0 == 0x0089
                           000089   248 _TMOD	=	0x0089
                           00008A   249 G$TL0$0_0$0 == 0x008a
                           00008A   250 _TL0	=	0x008a
                           00008B   251 G$TL1$0_0$0 == 0x008b
                           00008B   252 _TL1	=	0x008b
                           00008C   253 G$TH0$0_0$0 == 0x008c
                           00008C   254 _TH0	=	0x008c
                           00008D   255 G$TH1$0_0$0 == 0x008d
                           00008D   256 _TH1	=	0x008d
                           000090   257 G$P1$0_0$0 == 0x0090
                           000090   258 _P1	=	0x0090
                           000098   259 G$SCON$0_0$0 == 0x0098
                           000098   260 _SCON	=	0x0098
                           000099   261 G$SBUF$0_0$0 == 0x0099
                           000099   262 _SBUF	=	0x0099
                           0000A0   263 G$P2$0_0$0 == 0x00a0
                           0000A0   264 _P2	=	0x00a0
                           0000A8   265 G$IE$0_0$0 == 0x00a8
                           0000A8   266 _IE	=	0x00a8
                           0000B0   267 G$P3$0_0$0 == 0x00b0
                           0000B0   268 _P3	=	0x00b0
                           0000B8   269 G$IP$0_0$0 == 0x00b8
                           0000B8   270 _IP	=	0x00b8
                           0000D0   271 G$PSW$0_0$0 == 0x00d0
                           0000D0   272 _PSW	=	0x00d0
                           0000E0   273 G$ACC$0_0$0 == 0x00e0
                           0000E0   274 _ACC	=	0x00e0
                           0000F0   275 G$B$0_0$0 == 0x00f0
                           0000F0   276 _B	=	0x00f0
                           0000C8   277 G$T2CON$0_0$0 == 0x00c8
                           0000C8   278 _T2CON	=	0x00c8
                           0000CA   279 G$RCAP2L$0_0$0 == 0x00ca
                           0000CA   280 _RCAP2L	=	0x00ca
                           0000CB   281 G$RCAP2H$0_0$0 == 0x00cb
                           0000CB   282 _RCAP2H	=	0x00cb
                           0000CC   283 G$TL2$0_0$0 == 0x00cc
                           0000CC   284 _TL2	=	0x00cc
                           0000CD   285 G$TH2$0_0$0 == 0x00cd
                           0000CD   286 _TH2	=	0x00cd
                           00008E   287 G$AUXR$0_0$0 == 0x008e
                           00008E   288 _AUXR	=	0x008e
                           0000A2   289 G$AUXR1$0_0$0 == 0x00a2
                           0000A2   290 _AUXR1	=	0x00a2
                           000097   291 G$CKRL$0_0$0 == 0x0097
                           000097   292 _CKRL	=	0x0097
                           00008F   293 G$CKCON0$0_0$0 == 0x008f
                           00008F   294 _CKCON0	=	0x008f
                           0000AF   295 G$CKCON1$0_0$0 == 0x00af
                           0000AF   296 _CKCON1	=	0x00af
                           0000FA   297 G$CCAP0H$0_0$0 == 0x00fa
                           0000FA   298 _CCAP0H	=	0x00fa
                           0000FB   299 G$CCAP1H$0_0$0 == 0x00fb
                           0000FB   300 _CCAP1H	=	0x00fb
                           0000FC   301 G$CCAP2H$0_0$0 == 0x00fc
                           0000FC   302 _CCAP2H	=	0x00fc
                           0000FD   303 G$CCAP3H$0_0$0 == 0x00fd
                           0000FD   304 _CCAP3H	=	0x00fd
                           0000FE   305 G$CCAP4H$0_0$0 == 0x00fe
                           0000FE   306 _CCAP4H	=	0x00fe
                           0000EA   307 G$CCAP0L$0_0$0 == 0x00ea
                           0000EA   308 _CCAP0L	=	0x00ea
                           0000EB   309 G$CCAP1L$0_0$0 == 0x00eb
                           0000EB   310 _CCAP1L	=	0x00eb
                           0000EC   311 G$CCAP2L$0_0$0 == 0x00ec
                           0000EC   312 _CCAP2L	=	0x00ec
                           0000ED   313 G$CCAP3L$0_0$0 == 0x00ed
                           0000ED   314 _CCAP3L	=	0x00ed
                           0000EE   315 G$CCAP4L$0_0$0 == 0x00ee
                           0000EE   316 _CCAP4L	=	0x00ee
                           0000DA   317 G$CCAPM0$0_0$0 == 0x00da
                           0000DA   318 _CCAPM0	=	0x00da
                           0000DB   319 G$CCAPM1$0_0$0 == 0x00db
                           0000DB   320 _CCAPM1	=	0x00db
                           0000DC   321 G$CCAPM2$0_0$0 == 0x00dc
                           0000DC   322 _CCAPM2	=	0x00dc
                           0000DD   323 G$CCAPM3$0_0$0 == 0x00dd
                           0000DD   324 _CCAPM3	=	0x00dd
                           0000DE   325 G$CCAPM4$0_0$0 == 0x00de
                           0000DE   326 _CCAPM4	=	0x00de
                           0000D8   327 G$CCON$0_0$0 == 0x00d8
                           0000D8   328 _CCON	=	0x00d8
                           0000F9   329 G$CH$0_0$0 == 0x00f9
                           0000F9   330 _CH	=	0x00f9
                           0000E9   331 G$CL$0_0$0 == 0x00e9
                           0000E9   332 _CL	=	0x00e9
                           0000D9   333 G$CMOD$0_0$0 == 0x00d9
                           0000D9   334 _CMOD	=	0x00d9
                           0000A8   335 G$IEN0$0_0$0 == 0x00a8
                           0000A8   336 _IEN0	=	0x00a8
                           0000B1   337 G$IEN1$0_0$0 == 0x00b1
                           0000B1   338 _IEN1	=	0x00b1
                           0000B8   339 G$IPL0$0_0$0 == 0x00b8
                           0000B8   340 _IPL0	=	0x00b8
                           0000B7   341 G$IPH0$0_0$0 == 0x00b7
                           0000B7   342 _IPH0	=	0x00b7
                           0000B2   343 G$IPL1$0_0$0 == 0x00b2
                           0000B2   344 _IPL1	=	0x00b2
                           0000B3   345 G$IPH1$0_0$0 == 0x00b3
                           0000B3   346 _IPH1	=	0x00b3
                           0000C0   347 G$P4$0_0$0 == 0x00c0
                           0000C0   348 _P4	=	0x00c0
                           0000E8   349 G$P5$0_0$0 == 0x00e8
                           0000E8   350 _P5	=	0x00e8
                           0000A6   351 G$WDTRST$0_0$0 == 0x00a6
                           0000A6   352 _WDTRST	=	0x00a6
                           0000A7   353 G$WDTPRG$0_0$0 == 0x00a7
                           0000A7   354 _WDTPRG	=	0x00a7
                           0000A9   355 G$SADDR$0_0$0 == 0x00a9
                           0000A9   356 _SADDR	=	0x00a9
                           0000B9   357 G$SADEN$0_0$0 == 0x00b9
                           0000B9   358 _SADEN	=	0x00b9
                           0000C3   359 G$SPCON$0_0$0 == 0x00c3
                           0000C3   360 _SPCON	=	0x00c3
                           0000C4   361 G$SPSTA$0_0$0 == 0x00c4
                           0000C4   362 _SPSTA	=	0x00c4
                           0000C5   363 G$SPDAT$0_0$0 == 0x00c5
                           0000C5   364 _SPDAT	=	0x00c5
                           0000C9   365 G$T2MOD$0_0$0 == 0x00c9
                           0000C9   366 _T2MOD	=	0x00c9
                           00009B   367 G$BDRCON$0_0$0 == 0x009b
                           00009B   368 _BDRCON	=	0x009b
                           00009A   369 G$BRL$0_0$0 == 0x009a
                           00009A   370 _BRL	=	0x009a
                           00009C   371 G$KBLS$0_0$0 == 0x009c
                           00009C   372 _KBLS	=	0x009c
                           00009D   373 G$KBE$0_0$0 == 0x009d
                           00009D   374 _KBE	=	0x009d
                           00009E   375 G$KBF$0_0$0 == 0x009e
                           00009E   376 _KBF	=	0x009e
                           0000D2   377 G$EECON$0_0$0 == 0x00d2
                           0000D2   378 _EECON	=	0x00d2
                                    379 ;--------------------------------------------------------
                                    380 ; special function bits
                                    381 ;--------------------------------------------------------
                                    382 	.area RSEG    (ABS,DATA)
      000000                        383 	.org 0x0000
                           000080   384 G$P0_0$0_0$0 == 0x0080
                           000080   385 _P0_0	=	0x0080
                           000081   386 G$P0_1$0_0$0 == 0x0081
                           000081   387 _P0_1	=	0x0081
                           000082   388 G$P0_2$0_0$0 == 0x0082
                           000082   389 _P0_2	=	0x0082
                           000083   390 G$P0_3$0_0$0 == 0x0083
                           000083   391 _P0_3	=	0x0083
                           000084   392 G$P0_4$0_0$0 == 0x0084
                           000084   393 _P0_4	=	0x0084
                           000085   394 G$P0_5$0_0$0 == 0x0085
                           000085   395 _P0_5	=	0x0085
                           000086   396 G$P0_6$0_0$0 == 0x0086
                           000086   397 _P0_6	=	0x0086
                           000087   398 G$P0_7$0_0$0 == 0x0087
                           000087   399 _P0_7	=	0x0087
                           000088   400 G$IT0$0_0$0 == 0x0088
                           000088   401 _IT0	=	0x0088
                           000089   402 G$IE0$0_0$0 == 0x0089
                           000089   403 _IE0	=	0x0089
                           00008A   404 G$IT1$0_0$0 == 0x008a
                           00008A   405 _IT1	=	0x008a
                           00008B   406 G$IE1$0_0$0 == 0x008b
                           00008B   407 _IE1	=	0x008b
                           00008C   408 G$TR0$0_0$0 == 0x008c
                           00008C   409 _TR0	=	0x008c
                           00008D   410 G$TF0$0_0$0 == 0x008d
                           00008D   411 _TF0	=	0x008d
                           00008E   412 G$TR1$0_0$0 == 0x008e
                           00008E   413 _TR1	=	0x008e
                           00008F   414 G$TF1$0_0$0 == 0x008f
                           00008F   415 _TF1	=	0x008f
                           000090   416 G$P1_0$0_0$0 == 0x0090
                           000090   417 _P1_0	=	0x0090
                           000091   418 G$P1_1$0_0$0 == 0x0091
                           000091   419 _P1_1	=	0x0091
                           000092   420 G$P1_2$0_0$0 == 0x0092
                           000092   421 _P1_2	=	0x0092
                           000093   422 G$P1_3$0_0$0 == 0x0093
                           000093   423 _P1_3	=	0x0093
                           000094   424 G$P1_4$0_0$0 == 0x0094
                           000094   425 _P1_4	=	0x0094
                           000095   426 G$P1_5$0_0$0 == 0x0095
                           000095   427 _P1_5	=	0x0095
                           000096   428 G$P1_6$0_0$0 == 0x0096
                           000096   429 _P1_6	=	0x0096
                           000097   430 G$P1_7$0_0$0 == 0x0097
                           000097   431 _P1_7	=	0x0097
                           000098   432 G$RI$0_0$0 == 0x0098
                           000098   433 _RI	=	0x0098
                           000099   434 G$TI$0_0$0 == 0x0099
                           000099   435 _TI	=	0x0099
                           00009A   436 G$RB8$0_0$0 == 0x009a
                           00009A   437 _RB8	=	0x009a
                           00009B   438 G$TB8$0_0$0 == 0x009b
                           00009B   439 _TB8	=	0x009b
                           00009C   440 G$REN$0_0$0 == 0x009c
                           00009C   441 _REN	=	0x009c
                           00009D   442 G$SM2$0_0$0 == 0x009d
                           00009D   443 _SM2	=	0x009d
                           00009E   444 G$SM1$0_0$0 == 0x009e
                           00009E   445 _SM1	=	0x009e
                           00009F   446 G$SM0$0_0$0 == 0x009f
                           00009F   447 _SM0	=	0x009f
                           0000A0   448 G$P2_0$0_0$0 == 0x00a0
                           0000A0   449 _P2_0	=	0x00a0
                           0000A1   450 G$P2_1$0_0$0 == 0x00a1
                           0000A1   451 _P2_1	=	0x00a1
                           0000A2   452 G$P2_2$0_0$0 == 0x00a2
                           0000A2   453 _P2_2	=	0x00a2
                           0000A3   454 G$P2_3$0_0$0 == 0x00a3
                           0000A3   455 _P2_3	=	0x00a3
                           0000A4   456 G$P2_4$0_0$0 == 0x00a4
                           0000A4   457 _P2_4	=	0x00a4
                           0000A5   458 G$P2_5$0_0$0 == 0x00a5
                           0000A5   459 _P2_5	=	0x00a5
                           0000A6   460 G$P2_6$0_0$0 == 0x00a6
                           0000A6   461 _P2_6	=	0x00a6
                           0000A7   462 G$P2_7$0_0$0 == 0x00a7
                           0000A7   463 _P2_7	=	0x00a7
                           0000A8   464 G$EX0$0_0$0 == 0x00a8
                           0000A8   465 _EX0	=	0x00a8
                           0000A9   466 G$ET0$0_0$0 == 0x00a9
                           0000A9   467 _ET0	=	0x00a9
                           0000AA   468 G$EX1$0_0$0 == 0x00aa
                           0000AA   469 _EX1	=	0x00aa
                           0000AB   470 G$ET1$0_0$0 == 0x00ab
                           0000AB   471 _ET1	=	0x00ab
                           0000AC   472 G$ES$0_0$0 == 0x00ac
                           0000AC   473 _ES	=	0x00ac
                           0000AF   474 G$EA$0_0$0 == 0x00af
                           0000AF   475 _EA	=	0x00af
                           0000B0   476 G$P3_0$0_0$0 == 0x00b0
                           0000B0   477 _P3_0	=	0x00b0
                           0000B1   478 G$P3_1$0_0$0 == 0x00b1
                           0000B1   479 _P3_1	=	0x00b1
                           0000B2   480 G$P3_2$0_0$0 == 0x00b2
                           0000B2   481 _P3_2	=	0x00b2
                           0000B3   482 G$P3_3$0_0$0 == 0x00b3
                           0000B3   483 _P3_3	=	0x00b3
                           0000B4   484 G$P3_4$0_0$0 == 0x00b4
                           0000B4   485 _P3_4	=	0x00b4
                           0000B5   486 G$P3_5$0_0$0 == 0x00b5
                           0000B5   487 _P3_5	=	0x00b5
                           0000B6   488 G$P3_6$0_0$0 == 0x00b6
                           0000B6   489 _P3_6	=	0x00b6
                           0000B7   490 G$P3_7$0_0$0 == 0x00b7
                           0000B7   491 _P3_7	=	0x00b7
                           0000B0   492 G$RXD$0_0$0 == 0x00b0
                           0000B0   493 _RXD	=	0x00b0
                           0000B1   494 G$TXD$0_0$0 == 0x00b1
                           0000B1   495 _TXD	=	0x00b1
                           0000B2   496 G$INT0$0_0$0 == 0x00b2
                           0000B2   497 _INT0	=	0x00b2
                           0000B3   498 G$INT1$0_0$0 == 0x00b3
                           0000B3   499 _INT1	=	0x00b3
                           0000B4   500 G$T0$0_0$0 == 0x00b4
                           0000B4   501 _T0	=	0x00b4
                           0000B5   502 G$T1$0_0$0 == 0x00b5
                           0000B5   503 _T1	=	0x00b5
                           0000B6   504 G$WR$0_0$0 == 0x00b6
                           0000B6   505 _WR	=	0x00b6
                           0000B7   506 G$RD$0_0$0 == 0x00b7
                           0000B7   507 _RD	=	0x00b7
                           0000B8   508 G$PX0$0_0$0 == 0x00b8
                           0000B8   509 _PX0	=	0x00b8
                           0000B9   510 G$PT0$0_0$0 == 0x00b9
                           0000B9   511 _PT0	=	0x00b9
                           0000BA   512 G$PX1$0_0$0 == 0x00ba
                           0000BA   513 _PX1	=	0x00ba
                           0000BB   514 G$PT1$0_0$0 == 0x00bb
                           0000BB   515 _PT1	=	0x00bb
                           0000BC   516 G$PS$0_0$0 == 0x00bc
                           0000BC   517 _PS	=	0x00bc
                           0000D0   518 G$P$0_0$0 == 0x00d0
                           0000D0   519 _P	=	0x00d0
                           0000D1   520 G$F1$0_0$0 == 0x00d1
                           0000D1   521 _F1	=	0x00d1
                           0000D2   522 G$OV$0_0$0 == 0x00d2
                           0000D2   523 _OV	=	0x00d2
                           0000D3   524 G$RS0$0_0$0 == 0x00d3
                           0000D3   525 _RS0	=	0x00d3
                           0000D4   526 G$RS1$0_0$0 == 0x00d4
                           0000D4   527 _RS1	=	0x00d4
                           0000D5   528 G$F0$0_0$0 == 0x00d5
                           0000D5   529 _F0	=	0x00d5
                           0000D6   530 G$AC$0_0$0 == 0x00d6
                           0000D6   531 _AC	=	0x00d6
                           0000D7   532 G$CY$0_0$0 == 0x00d7
                           0000D7   533 _CY	=	0x00d7
                           0000AD   534 G$ET2$0_0$0 == 0x00ad
                           0000AD   535 _ET2	=	0x00ad
                           0000BD   536 G$PT2$0_0$0 == 0x00bd
                           0000BD   537 _PT2	=	0x00bd
                           0000C8   538 G$T2CON_0$0_0$0 == 0x00c8
                           0000C8   539 _T2CON_0	=	0x00c8
                           0000C9   540 G$T2CON_1$0_0$0 == 0x00c9
                           0000C9   541 _T2CON_1	=	0x00c9
                           0000CA   542 G$T2CON_2$0_0$0 == 0x00ca
                           0000CA   543 _T2CON_2	=	0x00ca
                           0000CB   544 G$T2CON_3$0_0$0 == 0x00cb
                           0000CB   545 _T2CON_3	=	0x00cb
                           0000CC   546 G$T2CON_4$0_0$0 == 0x00cc
                           0000CC   547 _T2CON_4	=	0x00cc
                           0000CD   548 G$T2CON_5$0_0$0 == 0x00cd
                           0000CD   549 _T2CON_5	=	0x00cd
                           0000CE   550 G$T2CON_6$0_0$0 == 0x00ce
                           0000CE   551 _T2CON_6	=	0x00ce
                           0000CF   552 G$T2CON_7$0_0$0 == 0x00cf
                           0000CF   553 _T2CON_7	=	0x00cf
                           0000C8   554 G$CP_RL2$0_0$0 == 0x00c8
                           0000C8   555 _CP_RL2	=	0x00c8
                           0000C9   556 G$C_T2$0_0$0 == 0x00c9
                           0000C9   557 _C_T2	=	0x00c9
                           0000CA   558 G$TR2$0_0$0 == 0x00ca
                           0000CA   559 _TR2	=	0x00ca
                           0000CB   560 G$EXEN2$0_0$0 == 0x00cb
                           0000CB   561 _EXEN2	=	0x00cb
                           0000CC   562 G$TCLK$0_0$0 == 0x00cc
                           0000CC   563 _TCLK	=	0x00cc
                           0000CD   564 G$RCLK$0_0$0 == 0x00cd
                           0000CD   565 _RCLK	=	0x00cd
                           0000CE   566 G$EXF2$0_0$0 == 0x00ce
                           0000CE   567 _EXF2	=	0x00ce
                           0000CF   568 G$TF2$0_0$0 == 0x00cf
                           0000CF   569 _TF2	=	0x00cf
                           0000DF   570 G$CF$0_0$0 == 0x00df
                           0000DF   571 _CF	=	0x00df
                           0000DE   572 G$CR$0_0$0 == 0x00de
                           0000DE   573 _CR	=	0x00de
                           0000DC   574 G$CCF4$0_0$0 == 0x00dc
                           0000DC   575 _CCF4	=	0x00dc
                           0000DB   576 G$CCF3$0_0$0 == 0x00db
                           0000DB   577 _CCF3	=	0x00db
                           0000DA   578 G$CCF2$0_0$0 == 0x00da
                           0000DA   579 _CCF2	=	0x00da
                           0000D9   580 G$CCF1$0_0$0 == 0x00d9
                           0000D9   581 _CCF1	=	0x00d9
                           0000D8   582 G$CCF0$0_0$0 == 0x00d8
                           0000D8   583 _CCF0	=	0x00d8
                           0000AE   584 G$EC$0_0$0 == 0x00ae
                           0000AE   585 _EC	=	0x00ae
                           0000BE   586 G$PPCL$0_0$0 == 0x00be
                           0000BE   587 _PPCL	=	0x00be
                           0000BD   588 G$PT2L$0_0$0 == 0x00bd
                           0000BD   589 _PT2L	=	0x00bd
                           0000BC   590 G$PSL$0_0$0 == 0x00bc
                           0000BC   591 _PSL	=	0x00bc
                           0000BB   592 G$PT1L$0_0$0 == 0x00bb
                           0000BB   593 _PT1L	=	0x00bb
                           0000BA   594 G$PX1L$0_0$0 == 0x00ba
                           0000BA   595 _PX1L	=	0x00ba
                           0000B9   596 G$PT0L$0_0$0 == 0x00b9
                           0000B9   597 _PT0L	=	0x00b9
                           0000B8   598 G$PX0L$0_0$0 == 0x00b8
                           0000B8   599 _PX0L	=	0x00b8
                           0000C0   600 G$P4_0$0_0$0 == 0x00c0
                           0000C0   601 _P4_0	=	0x00c0
                           0000C1   602 G$P4_1$0_0$0 == 0x00c1
                           0000C1   603 _P4_1	=	0x00c1
                           0000C2   604 G$P4_2$0_0$0 == 0x00c2
                           0000C2   605 _P4_2	=	0x00c2
                           0000C3   606 G$P4_3$0_0$0 == 0x00c3
                           0000C3   607 _P4_3	=	0x00c3
                           0000C4   608 G$P4_4$0_0$0 == 0x00c4
                           0000C4   609 _P4_4	=	0x00c4
                           0000C5   610 G$P4_5$0_0$0 == 0x00c5
                           0000C5   611 _P4_5	=	0x00c5
                           0000C6   612 G$P4_6$0_0$0 == 0x00c6
                           0000C6   613 _P4_6	=	0x00c6
                           0000C7   614 G$P4_7$0_0$0 == 0x00c7
                           0000C7   615 _P4_7	=	0x00c7
                           0000E8   616 G$P5_0$0_0$0 == 0x00e8
                           0000E8   617 _P5_0	=	0x00e8
                           0000E9   618 G$P5_1$0_0$0 == 0x00e9
                           0000E9   619 _P5_1	=	0x00e9
                           0000EA   620 G$P5_2$0_0$0 == 0x00ea
                           0000EA   621 _P5_2	=	0x00ea
                           0000EB   622 G$P5_3$0_0$0 == 0x00eb
                           0000EB   623 _P5_3	=	0x00eb
                           0000EC   624 G$P5_4$0_0$0 == 0x00ec
                           0000EC   625 _P5_4	=	0x00ec
                           0000ED   626 G$P5_5$0_0$0 == 0x00ed
                           0000ED   627 _P5_5	=	0x00ed
                           0000EE   628 G$P5_6$0_0$0 == 0x00ee
                           0000EE   629 _P5_6	=	0x00ee
                           0000EF   630 G$P5_7$0_0$0 == 0x00ef
                           0000EF   631 _P5_7	=	0x00ef
                                    632 ;--------------------------------------------------------
                                    633 ; overlayable register banks
                                    634 ;--------------------------------------------------------
                                    635 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        636 	.ds 8
                                    637 ;--------------------------------------------------------
                                    638 ; internal ram data
                                    639 ;--------------------------------------------------------
                                    640 	.area DSEG    (DATA)
                                    641 ;--------------------------------------------------------
                                    642 ; overlayable items in internal ram 
                                    643 ;--------------------------------------------------------
                                    644 ;--------------------------------------------------------
                                    645 ; indirectly addressable internal ram data
                                    646 ;--------------------------------------------------------
                                    647 	.area ISEG    (DATA)
                                    648 ;--------------------------------------------------------
                                    649 ; absolute internal ram data
                                    650 ;--------------------------------------------------------
                                    651 	.area IABS    (ABS,DATA)
                                    652 	.area IABS    (ABS,DATA)
                                    653 ;--------------------------------------------------------
                                    654 ; bit data
                                    655 ;--------------------------------------------------------
                                    656 	.area BSEG    (BIT)
                                    657 ;--------------------------------------------------------
                                    658 ; paged external ram data
                                    659 ;--------------------------------------------------------
                                    660 	.area PSEG    (PAG,XDATA)
                                    661 ;--------------------------------------------------------
                                    662 ; external ram data
                                    663 ;--------------------------------------------------------
                                    664 	.area XSEG    (XDATA)
                           000000   665 LI2C_Functions.weeprom$address$1_0$25==.
      000422                        666 _weeprom_PARM_2:
      000422                        667 	.ds 1
                           000001   668 LI2C_Functions.weeprom$datum$1_0$25==.
      000423                        669 _weeprom_PARM_3:
      000423                        670 	.ds 1
                           000002   671 LI2C_Functions.weeprom$page$1_0$25==.
      000424                        672 _weeprom_page_65536_25:
      000424                        673 	.ds 1
                           000003   674 LI2C_Functions.reeprom$address$1_0$27==.
      000425                        675 _reeprom_PARM_2:
      000425                        676 	.ds 1
                           000004   677 LI2C_Functions.reeprom$page$1_0$27==.
      000426                        678 _reeprom_page_65536_27:
      000426                        679 	.ds 1
                           000005   680 LI2C_Functions.read$readcmd$1_0$29==.
      000427                        681 _read_readcmd_65536_29:
      000427                        682 	.ds 1
                           000006   683 LI2C_Functions.outs$datum$1_0$31==.
      000428                        684 _outs_datum_65536_31:
      000428                        685 	.ds 1
                           000007   686 LI2C_Functions.out$datum$1_0$35==.
      000429                        687 _out_datum_65536_35:
      000429                        688 	.ds 1
                           000008   689 LI2C_Functions.in$aux$1_0$40==.
      00042A                        690 _in_aux_65536_40:
      00042A                        691 	.ds 1
                           000009   692 LI2C_Functions.reeprom_seq$Start_Address$1_0$54==.
      00042B                        693 _reeprom_seq_PARM_2:
      00042B                        694 	.ds 2
                           00000B   695 LI2C_Functions.reeprom_seq$End_Address$1_0$54==.
      00042D                        696 _reeprom_seq_PARM_3:
      00042D                        697 	.ds 2
                           00000D   698 LI2C_Functions.reeprom_seq$block$1_0$54==.
      00042F                        699 _reeprom_seq_block_65536_54:
      00042F                        700 	.ds 2
                           00000F   701 LI2C_Functions.reeprom_seq$a$1_0$55==.
      000431                        702 _reeprom_seq_a_65536_55:
      000431                        703 	.ds 1
                           000010   704 LI2C_Functions.reeprom_seq$i$1_0$55==.
      000432                        705 _reeprom_seq_i_65536_55:
      000432                        706 	.ds 2
                           000012   707 LI2C_Functions.reeprom_seq$res$1_0$55==.
      000434                        708 _reeprom_seq_res_65536_55:
      000434                        709 	.ds 2
                           000014   710 LI2C_Functions.reeprom_seq$j$1_0$55==.
      000436                        711 _reeprom_seq_j_65536_55:
      000436                        712 	.ds 2
                           000016   713 LI2C_Functions.reeprom_seq$aux$1_0$55==.
      000438                        714 _reeprom_seq_aux_65536_55:
      000438                        715 	.ds 1
                           000017   716 LI2C_Functions.reeprom_seq$WRCMD$1_0$55==.
      000439                        717 _reeprom_seq_WRCMD_65536_55:
      000439                        718 	.ds 1
                           000018   719 LI2C_Functions.dummy_write$Address$1_0$68==.
      00043A                        720 _dummy_write_PARM_2:
      00043A                        721 	.ds 2
                           00001A   722 LI2C_Functions.dummy_write$block$1_0$68==.
      00043C                        723 _dummy_write_block_65536_68:
      00043C                        724 	.ds 2
                           00001C   725 LI2C_Functions.get_blocknumber$Add$1_0$70==.
      00043E                        726 _get_blocknumber_Add_65536_70:
      00043E                        727 	.ds 2
                                    728 ;--------------------------------------------------------
                                    729 ; absolute external ram data
                                    730 ;--------------------------------------------------------
                                    731 	.area XABS    (ABS,XDATA)
                                    732 ;--------------------------------------------------------
                                    733 ; external initialized ram data
                                    734 ;--------------------------------------------------------
                                    735 	.area XISEG   (XDATA)
                                    736 	.area HOME    (CODE)
                                    737 	.area GSINIT0 (CODE)
                                    738 	.area GSINIT1 (CODE)
                                    739 	.area GSINIT2 (CODE)
                                    740 	.area GSINIT3 (CODE)
                                    741 	.area GSINIT4 (CODE)
                                    742 	.area GSINIT5 (CODE)
                                    743 	.area GSINIT  (CODE)
                                    744 	.area GSFINAL (CODE)
                                    745 	.area CSEG    (CODE)
                                    746 ;--------------------------------------------------------
                                    747 ; global & static initialisations
                                    748 ;--------------------------------------------------------
                                    749 	.area HOME    (CODE)
                                    750 	.area GSINIT  (CODE)
                                    751 	.area GSFINAL (CODE)
                                    752 	.area GSINIT  (CODE)
                                    753 ;--------------------------------------------------------
                                    754 ; Home
                                    755 ;--------------------------------------------------------
                                    756 	.area HOME    (CODE)
                                    757 	.area HOME    (CODE)
                                    758 ;--------------------------------------------------------
                                    759 ; code
                                    760 ;--------------------------------------------------------
                                    761 	.area CSEG    (CODE)
                                    762 ;------------------------------------------------------------
                                    763 ;Allocation info for local variables in function 'weeprom'
                                    764 ;------------------------------------------------------------
                                    765 ;address                   Allocated with name '_weeprom_PARM_2'
                                    766 ;datum                     Allocated with name '_weeprom_PARM_3'
                                    767 ;page                      Allocated with name '_weeprom_page_65536_25'
                                    768 ;WRCMD                     Allocated with name '_weeprom_WRCMD_65536_26'
                                    769 ;------------------------------------------------------------
                           000000   770 	G$weeprom$0$0 ==.
                           000000   771 	C$I2C_Functions.c$23$0_0$26 ==.
                                    772 ;	I2C_Functions.c:23: void weeprom (char page, char address, char datum)
                                    773 ;	-----------------------------------------
                                    774 ;	 function weeprom
                                    775 ;	-----------------------------------------
      002984                        776 _weeprom:
                           000007   777 	ar7 = 0x07
                           000006   778 	ar6 = 0x06
                           000005   779 	ar5 = 0x05
                           000004   780 	ar4 = 0x04
                           000003   781 	ar3 = 0x03
                           000002   782 	ar2 = 0x02
                           000001   783 	ar1 = 0x01
                           000000   784 	ar0 = 0x00
      002984 E5 82            [12]  785 	mov	a,dpl
      002986 90 04 24         [24]  786 	mov	dptr,#_weeprom_page_65536_25
      002989 F0               [24]  787 	movx	@dptr,a
                           000006   788 	C$I2C_Functions.c$26$1_0$26 ==.
                                    789 ;	I2C_Functions.c:26: page = page << 1; // move A0, A1 & A2 to their positions
      00298A E0               [24]  790 	movx	a,@dptr
      00298B 25 E0            [12]  791 	add	a,acc
      00298D F0               [24]  792 	movx	@dptr,a
                           00000A   793 	C$I2C_Functions.c$27$1_0$26 ==.
                                    794 ;	I2C_Functions.c:27: page = page & 0xFE; // clear r/w bit
      00298E E0               [24]  795 	movx	a,@dptr
      00298F 53 E0 FE         [24]  796 	anl	acc,#0xfe
      002992 F0               [24]  797 	movx	@dptr,a
                           00000F   798 	C$I2C_Functions.c$28$1_0$26 ==.
                                    799 ;	I2C_Functions.c:28: WRCMD = page | 0xA0; // build the write command
      002993 90 04 24         [24]  800 	mov	dptr,#_weeprom_page_65536_25
      002996 E0               [24]  801 	movx	a,@dptr
      002997 44 A0            [12]  802 	orl	a,#0xa0
                           000015   803 	C$I2C_Functions.c$29$1_0$26 ==.
                                    804 ;	I2C_Functions.c:29: outs (WRCMD); // send the write command with start condition
      002999 F5 82            [12]  805 	mov	dpl,a
      00299B 12 29 F9         [24]  806 	lcall	_outs
                           00001A   807 	C$I2C_Functions.c$30$1_0$26 ==.
                                    808 ;	I2C_Functions.c:30: out (address); // send address
      00299E 90 04 22         [24]  809 	mov	dptr,#_weeprom_PARM_2
      0029A1 E0               [24]  810 	movx	a,@dptr
      0029A2 F5 82            [12]  811 	mov	dpl,a
      0029A4 12 2A 46         [24]  812 	lcall	_out
                           000023   813 	C$I2C_Functions.c$31$1_0$26 ==.
                                    814 ;	I2C_Functions.c:31: out (datum); // send data
      0029A7 90 04 23         [24]  815 	mov	dptr,#_weeprom_PARM_3
      0029AA E0               [24]  816 	movx	a,@dptr
      0029AB F5 82            [12]  817 	mov	dpl,a
      0029AD 12 2A 46         [24]  818 	lcall	_out
                           00002C   819 	C$I2C_Functions.c$32$1_0$26 ==.
                                    820 ;	I2C_Functions.c:32: stop (); // send stop condition
      0029B0 12 2A C0         [24]  821 	lcall	_stop
                           00002F   822 	C$I2C_Functions.c$33$1_0$26 ==.
                                    823 ;	I2C_Functions.c:33: }
                           00002F   824 	C$I2C_Functions.c$33$1_0$26 ==.
                           00002F   825 	XG$weeprom$0$0 ==.
      0029B3 22               [24]  826 	ret
                                    827 ;------------------------------------------------------------
                                    828 ;Allocation info for local variables in function 'reeprom'
                                    829 ;------------------------------------------------------------
                                    830 ;address                   Allocated with name '_reeprom_PARM_2'
                                    831 ;page                      Allocated with name '_reeprom_page_65536_27'
                                    832 ;aux                       Allocated with name '_reeprom_aux_65536_28'
                                    833 ;WRCMD                     Allocated with name '_reeprom_WRCMD_65536_28'
                                    834 ;------------------------------------------------------------
                           000030   835 	G$reeprom$0$0 ==.
                           000030   836 	C$I2C_Functions.c$49$1_0$28 ==.
                                    837 ;	I2C_Functions.c:49: char reeprom (char page, char address)
                                    838 ;	-----------------------------------------
                                    839 ;	 function reeprom
                                    840 ;	-----------------------------------------
      0029B4                        841 _reeprom:
      0029B4 E5 82            [12]  842 	mov	a,dpl
      0029B6 90 04 26         [24]  843 	mov	dptr,#_reeprom_page_65536_27
      0029B9 F0               [24]  844 	movx	@dptr,a
                           000036   845 	C$I2C_Functions.c$53$1_0$28 ==.
                                    846 ;	I2C_Functions.c:53: aux = page; // preparing the write command
      0029BA E0               [24]  847 	movx	a,@dptr
                           000037   848 	C$I2C_Functions.c$54$1_0$28 ==.
                                    849 ;	I2C_Functions.c:54: aux = aux << 1; // move A0, A1 & A2 to their positions
      0029BB 25 E0            [12]  850 	add	a,acc
      0029BD FF               [12]  851 	mov	r7,a
                           00003A   852 	C$I2C_Functions.c$55$1_0$28 ==.
                                    853 ;	I2C_Functions.c:55: aux = aux & 0xFE; // clear r/w bit
      0029BE 74 FE            [12]  854 	mov	a,#0xfe
      0029C0 5F               [12]  855 	anl	a,r7
                           00003D   856 	C$I2C_Functions.c$56$1_0$28 ==.
                                    857 ;	I2C_Functions.c:56: WRCMD = aux | 0xA0; // build the write command
      0029C1 44 A0            [12]  858 	orl	a,#0xa0
                           00003F   859 	C$I2C_Functions.c$57$1_0$28 ==.
                                    860 ;	I2C_Functions.c:57: outs (WRCMD); // send the write command with start condition
      0029C3 FF               [12]  861 	mov	r7,a
      0029C4 F5 82            [12]  862 	mov	dpl,a
      0029C6 C0 07            [24]  863 	push	ar7
      0029C8 12 29 F9         [24]  864 	lcall	_outs
                           000047   865 	C$I2C_Functions.c$58$1_0$28 ==.
                                    866 ;	I2C_Functions.c:58: out (address); // send address
      0029CB 90 04 25         [24]  867 	mov	dptr,#_reeprom_PARM_2
      0029CE E0               [24]  868 	movx	a,@dptr
      0029CF F5 82            [12]  869 	mov	dpl,a
      0029D1 12 2A 46         [24]  870 	lcall	_out
      0029D4 D0 07            [24]  871 	pop	ar7
                           000052   872 	C$I2C_Functions.c$59$1_0$28 ==.
                                    873 ;	I2C_Functions.c:59: aux = read (WRCMD); // send read command and receive data
      0029D6 8F 82            [24]  874 	mov	dpl,r7
      0029D8 12 29 DC         [24]  875 	lcall	_read
                           000057   876 	C$I2C_Functions.c$60$1_0$28 ==.
                                    877 ;	I2C_Functions.c:60: return (aux); // return solicited data
                           000057   878 	C$I2C_Functions.c$61$1_0$28 ==.
                                    879 ;	I2C_Functions.c:61: }
                           000057   880 	C$I2C_Functions.c$61$1_0$28 ==.
                           000057   881 	XG$reeprom$0$0 ==.
      0029DB 22               [24]  882 	ret
                                    883 ;------------------------------------------------------------
                                    884 ;Allocation info for local variables in function 'read'
                                    885 ;------------------------------------------------------------
                                    886 ;readcmd                   Allocated with name '_read_readcmd_65536_29'
                                    887 ;RDCMD                     Allocated with name '_read_RDCMD_65536_30'
                                    888 ;aux                       Allocated with name '_read_aux_65536_30'
                                    889 ;------------------------------------------------------------
                           000058   890 	G$read$0$0 ==.
                           000058   891 	C$I2C_Functions.c$78$1_0$30 ==.
                                    892 ;	I2C_Functions.c:78: char read (char readcmd)
                                    893 ;	-----------------------------------------
                                    894 ;	 function read
                                    895 ;	-----------------------------------------
      0029DC                        896 _read:
      0029DC E5 82            [12]  897 	mov	a,dpl
      0029DE 90 04 27         [24]  898 	mov	dptr,#_read_readcmd_65536_29
      0029E1 F0               [24]  899 	movx	@dptr,a
                           00005E   900 	C$I2C_Functions.c$82$1_0$30 ==.
                                    901 ;	I2C_Functions.c:82: RDCMD = readcmd | 0x01; // set r/w bit
      0029E2 E0               [24]  902 	movx	a,@dptr
      0029E3 44 01            [12]  903 	orl	a,#0x01
                           000061   904 	C$I2C_Functions.c$83$1_0$30 ==.
                                    905 ;	I2C_Functions.c:83: outs (RDCMD); // send read command with start condition
      0029E5 F5 82            [12]  906 	mov	dpl,a
      0029E7 12 29 F9         [24]  907 	lcall	_outs
                           000066   908 	C$I2C_Functions.c$84$1_0$30 ==.
                                    909 ;	I2C_Functions.c:84: aux = in(); // read current position
      0029EA 12 2A 81         [24]  910 	lcall	_in
      0029ED AF 82            [24]  911 	mov	r7,dpl
                           00006B   912 	C$I2C_Functions.c$85$1_0$30 ==.
                                    913 ;	I2C_Functions.c:85: stop (); // send stop condition
      0029EF C0 07            [24]  914 	push	ar7
      0029F1 12 2A C0         [24]  915 	lcall	_stop
      0029F4 D0 07            [24]  916 	pop	ar7
                           000072   917 	C$I2C_Functions.c$86$1_0$30 ==.
                                    918 ;	I2C_Functions.c:86: return (aux); // return current position data
      0029F6 8F 82            [24]  919 	mov	dpl,r7
                           000074   920 	C$I2C_Functions.c$87$1_0$30 ==.
                                    921 ;	I2C_Functions.c:87: }
                           000074   922 	C$I2C_Functions.c$87$1_0$30 ==.
                           000074   923 	XG$read$0$0 ==.
      0029F8 22               [24]  924 	ret
                                    925 ;------------------------------------------------------------
                                    926 ;Allocation info for local variables in function 'outs'
                                    927 ;------------------------------------------------------------
                                    928 ;datum                     Allocated with name '_outs_datum_65536_31'
                                    929 ;i                         Allocated with name '_outs_i_65536_32'
                                    930 ;aux                       Allocated with name '_outs_aux_65536_32'
                                    931 ;------------------------------------------------------------
                           000075   932 	G$outs$0$0 ==.
                           000075   933 	C$I2C_Functions.c$102$1_0$32 ==.
                                    934 ;	I2C_Functions.c:102: void outs (char datum)
                                    935 ;	-----------------------------------------
                                    936 ;	 function outs
                                    937 ;	-----------------------------------------
      0029F9                        938 _outs:
      0029F9 E5 82            [12]  939 	mov	a,dpl
      0029FB 90 04 28         [24]  940 	mov	dptr,#_outs_datum_65536_31
      0029FE F0               [24]  941 	movx	@dptr,a
                           00007B   942 	C$I2C_Functions.c$106$1_0$32 ==.
                                    943 ;	I2C_Functions.c:106: SDA = 1; // set port pin SDA to insure data is HI
                                    944 ;	assignBit
      0029FF D2 97            [12]  945 	setb	_P1_7
                           00007D   946 	C$I2C_Functions.c$107$1_0$32 ==.
                                    947 ;	I2C_Functions.c:107: SCK = 1; // set port pin SCK to insure clock is HI
                                    948 ;	assignBit
      002A01 D2 96            [12]  949 	setb	_P1_6
                           00007F   950 	C$I2C_Functions.c$114$1_0$32 ==.
                                    951 ;	I2C_Functions.c:114: __endasm;
      002A03 00               [12]  952 	nop
      002A04 00               [12]  953 	nop
      002A05 00               [12]  954 	nop
      002A06 00               [12]  955 	nop
      002A07 00               [12]  956 	nop
                           000084   957 	C$I2C_Functions.c$115$1_0$32 ==.
                                    958 ;	I2C_Functions.c:115: SDA = 0; // start condition, data = 0
                                    959 ;	assignBit
      002A08 C2 97            [12]  960 	clr	_P1_7
                           000086   961 	C$I2C_Functions.c$122$1_0$32 ==.
                                    962 ;	I2C_Functions.c:122: __endasm;
      002A0A 00               [12]  963 	nop
      002A0B 00               [12]  964 	nop
      002A0C 00               [12]  965 	nop
      002A0D 00               [12]  966 	nop
      002A0E 00               [12]  967 	nop
                           00008B   968 	C$I2C_Functions.c$124$1_0$32 ==.
                                    969 ;	I2C_Functions.c:124: SCK = 0; // clock = 0
                                    970 ;	assignBit
      002A0F C2 96            [12]  971 	clr	_P1_6
                           00008D   972 	C$I2C_Functions.c$130$1_0$32 ==.
                                    973 ;	I2C_Functions.c:130: for (i = 0; i < 8; i++) // bit shifting cycle
      002A11 7F 00            [12]  974 	mov	r7,#0x00
      002A13                        975 00105$:
                           00008F   976 	C$I2C_Functions.c$132$3_0$34 ==.
                                    977 ;	I2C_Functions.c:132: aux = datum & 0x80; // check MSB bit
      002A13 90 04 28         [24]  978 	mov	dptr,#_outs_datum_65536_31
      002A16 E0               [24]  979 	movx	a,@dptr
      002A17 20 E7 04         [24]  980 	jb	acc.7,00102$
                           000096   981 	C$I2C_Functions.c$133$3_0$34 ==.
                                    982 ;	I2C_Functions.c:133: if (aux == 0) // MSB = 0
                           000096   983 	C$I2C_Functions.c$134$3_0$34 ==.
                                    984 ;	I2C_Functions.c:134: SDA = 0; // then SDA = 0
                                    985 ;	assignBit
      002A1A C2 97            [12]  986 	clr	_P1_7
      002A1C 80 02            [24]  987 	sjmp	00103$
      002A1E                        988 00102$:
                           00009A   989 	C$I2C_Functions.c$136$3_0$34 ==.
                                    990 ;	I2C_Functions.c:136: SDA = 1; // else MSB =1, then SDA = 1
                                    991 ;	assignBit
      002A1E D2 97            [12]  992 	setb	_P1_7
      002A20                        993 00103$:
                           00009C   994 	C$I2C_Functions.c$137$3_0$34 ==.
                                    995 ;	I2C_Functions.c:137: SCK = 1; // clock = 1
                                    996 ;	assignBit
      002A20 D2 96            [12]  997 	setb	_P1_6
                           00009E   998 	C$I2C_Functions.c$148$3_0$34 ==.
                                    999 ;	I2C_Functions.c:148: __endasm;
      002A22 00               [12] 1000 	nop
      002A23 00               [12] 1001 	nop
      002A24 00               [12] 1002 	nop
      002A25 00               [12] 1003 	nop
      002A26 00               [12] 1004 	nop
                           0000A3  1005 	C$I2C_Functions.c$152$3_0$34 ==.
                                   1006 ;	I2C_Functions.c:152: SCK = 0; // clock = 0
                                   1007 ;	assignBit
      002A27 C2 96            [12] 1008 	clr	_P1_6
                           0000A5  1009 	C$I2C_Functions.c$153$3_0$34 ==.
                                   1010 ;	I2C_Functions.c:153: datum = datum << 1; // rotate for next bit
      002A29 90 04 28         [24] 1011 	mov	dptr,#_outs_datum_65536_31
      002A2C E0               [24] 1012 	movx	a,@dptr
      002A2D 25 E0            [12] 1013 	add	a,acc
      002A2F FE               [12] 1014 	mov	r6,a
      002A30 F0               [24] 1015 	movx	@dptr,a
                           0000AD  1016 	C$I2C_Functions.c$130$2_0$33 ==.
                                   1017 ;	I2C_Functions.c:130: for (i = 0; i < 8; i++) // bit shifting cycle
      002A31 0F               [12] 1018 	inc	r7
      002A32 BF 08 00         [24] 1019 	cjne	r7,#0x08,00123$
      002A35                       1020 00123$:
      002A35 40 DC            [24] 1021 	jc	00105$
                           0000B3  1022 	C$I2C_Functions.c$156$1_0$32 ==.
                                   1023 ;	I2C_Functions.c:156: SDA = 1; // set port pin for ack
                                   1024 ;	assignBit
      002A37 D2 97            [12] 1025 	setb	_P1_7
                           0000B5  1026 	C$I2C_Functions.c$162$1_0$32 ==.
                                   1027 ;	I2C_Functions.c:162: __endasm;
      002A39 00               [12] 1028 	nop
      002A3A 00               [12] 1029 	nop
      002A3B 00               [12] 1030 	nop
                           0000B8  1031 	C$I2C_Functions.c$163$1_0$32 ==.
                                   1032 ;	I2C_Functions.c:163: SCK = 1; // clock ack
                                   1033 ;	assignBit
      002A3C D2 96            [12] 1034 	setb	_P1_6
                           0000BA  1035 	C$I2C_Functions.c$170$1_0$32 ==.
                                   1036 ;	I2C_Functions.c:170: __endasm;
      002A3E 00               [12] 1037 	nop
      002A3F 00               [12] 1038 	nop
      002A40 00               [12] 1039 	nop
      002A41 00               [12] 1040 	nop
      002A42 00               [12] 1041 	nop
                           0000BF  1042 	C$I2C_Functions.c$171$1_0$32 ==.
                                   1043 ;	I2C_Functions.c:171: SCK = 0; // clock = 0
                                   1044 ;	assignBit
      002A43 C2 96            [12] 1045 	clr	_P1_6
                           0000C1  1046 	C$I2C_Functions.c$172$1_0$32 ==.
                                   1047 ;	I2C_Functions.c:172: }
                           0000C1  1048 	C$I2C_Functions.c$172$1_0$32 ==.
                           0000C1  1049 	XG$outs$0$0 ==.
      002A45 22               [24] 1050 	ret
                                   1051 ;------------------------------------------------------------
                                   1052 ;Allocation info for local variables in function 'out'
                                   1053 ;------------------------------------------------------------
                                   1054 ;datum                     Allocated with name '_out_datum_65536_35'
                                   1055 ;i                         Allocated with name '_out_i_65536_36'
                                   1056 ;aux                       Allocated with name '_out_aux_65536_36'
                                   1057 ;------------------------------------------------------------
                           0000C2  1058 	G$out$0$0 ==.
                           0000C2  1059 	C$I2C_Functions.c$188$1_0$36 ==.
                                   1060 ;	I2C_Functions.c:188: void out (char datum)
                                   1061 ;	-----------------------------------------
                                   1062 ;	 function out
                                   1063 ;	-----------------------------------------
      002A46                       1064 _out:
      002A46 E5 82            [12] 1065 	mov	a,dpl
      002A48 90 04 29         [24] 1066 	mov	dptr,#_out_datum_65536_35
      002A4B F0               [24] 1067 	movx	@dptr,a
                           0000C8  1068 	C$I2C_Functions.c$192$1_0$36 ==.
                                   1069 ;	I2C_Functions.c:192: for (i = 0; i < 8; i++) // bit shifting cycle
      002A4C 7F 00            [12] 1070 	mov	r7,#0x00
      002A4E                       1071 00105$:
                           0000CA  1072 	C$I2C_Functions.c$194$3_0$38 ==.
                                   1073 ;	I2C_Functions.c:194: aux = datum & 0x80; // check MSB bit
      002A4E 90 04 29         [24] 1074 	mov	dptr,#_out_datum_65536_35
      002A51 E0               [24] 1075 	movx	a,@dptr
      002A52 20 E7 04         [24] 1076 	jb	acc.7,00102$
                           0000D1  1077 	C$I2C_Functions.c$195$3_0$38 ==.
                                   1078 ;	I2C_Functions.c:195: if (aux == 0) // MSB = 0
                           0000D1  1079 	C$I2C_Functions.c$196$3_0$38 ==.
                                   1080 ;	I2C_Functions.c:196: SDA = 0; // then SDA = 0
                                   1081 ;	assignBit
      002A55 C2 97            [12] 1082 	clr	_P1_7
      002A57 80 02            [24] 1083 	sjmp	00103$
      002A59                       1084 00102$:
                           0000D5  1085 	C$I2C_Functions.c$198$3_0$38 ==.
                                   1086 ;	I2C_Functions.c:198: SDA = 1; // else MSB = 1, the SDA = 1
                                   1087 ;	assignBit
      002A59 D2 97            [12] 1088 	setb	_P1_7
      002A5B                       1089 00103$:
                           0000D7  1090 	C$I2C_Functions.c$199$3_0$38 ==.
                                   1091 ;	I2C_Functions.c:199: SCK = 1; // clock = 1
                                   1092 ;	assignBit
      002A5B D2 96            [12] 1093 	setb	_P1_6
                           0000D9  1094 	C$I2C_Functions.c$206$3_0$38 ==.
                                   1095 ;	I2C_Functions.c:206: __endasm;
      002A5D 00               [12] 1096 	nop
      002A5E 00               [12] 1097 	nop
      002A5F 00               [12] 1098 	nop
      002A60 00               [12] 1099 	nop
      002A61 00               [12] 1100 	nop
                           0000DE  1101 	C$I2C_Functions.c$207$3_0$38 ==.
                                   1102 ;	I2C_Functions.c:207: SCK = 0; // clock = 0
                                   1103 ;	assignBit
      002A62 C2 96            [12] 1104 	clr	_P1_6
                           0000E0  1105 	C$I2C_Functions.c$208$3_0$38 ==.
                                   1106 ;	I2C_Functions.c:208: datum = datum << 1; // rotate for next bit
      002A64 90 04 29         [24] 1107 	mov	dptr,#_out_datum_65536_35
      002A67 E0               [24] 1108 	movx	a,@dptr
      002A68 25 E0            [12] 1109 	add	a,acc
      002A6A FE               [12] 1110 	mov	r6,a
      002A6B F0               [24] 1111 	movx	@dptr,a
                           0000E8  1112 	C$I2C_Functions.c$192$2_0$37 ==.
                                   1113 ;	I2C_Functions.c:192: for (i = 0; i < 8; i++) // bit shifting cycle
      002A6C 0F               [12] 1114 	inc	r7
      002A6D BF 08 00         [24] 1115 	cjne	r7,#0x08,00123$
      002A70                       1116 00123$:
      002A70 40 DC            [24] 1117 	jc	00105$
                           0000EE  1118 	C$I2C_Functions.c$210$1_0$36 ==.
                                   1119 ;	I2C_Functions.c:210: SDA = 1; // set port pin for ack
                                   1120 ;	assignBit
      002A72 D2 97            [12] 1121 	setb	_P1_7
                           0000F0  1122 	C$I2C_Functions.c$215$1_0$36 ==.
                                   1123 ;	I2C_Functions.c:215: __endasm;
      002A74 00               [12] 1124 	nop
      002A75 00               [12] 1125 	nop
      002A76 00               [12] 1126 	nop
                           0000F3  1127 	C$I2C_Functions.c$216$1_0$36 ==.
                                   1128 ;	I2C_Functions.c:216: SCK = 1; // clock ack
                                   1129 ;	assignBit
      002A77 D2 96            [12] 1130 	setb	_P1_6
                           0000F5  1131 	C$I2C_Functions.c$223$1_0$36 ==.
                                   1132 ;	I2C_Functions.c:223: __endasm;
      002A79 00               [12] 1133 	nop
      002A7A 00               [12] 1134 	nop
      002A7B 00               [12] 1135 	nop
      002A7C 00               [12] 1136 	nop
      002A7D 00               [12] 1137 	nop
                           0000FA  1138 	C$I2C_Functions.c$224$1_0$36 ==.
                                   1139 ;	I2C_Functions.c:224: SCK = 0; // clock = 0
                                   1140 ;	assignBit
      002A7E C2 96            [12] 1141 	clr	_P1_6
                           0000FC  1142 	C$I2C_Functions.c$225$1_0$36 ==.
                                   1143 ;	I2C_Functions.c:225: }
                           0000FC  1144 	C$I2C_Functions.c$225$1_0$36 ==.
                           0000FC  1145 	XG$out$0$0 ==.
      002A80 22               [24] 1146 	ret
                                   1147 ;------------------------------------------------------------
                                   1148 ;Allocation info for local variables in function 'in'
                                   1149 ;------------------------------------------------------------
                                   1150 ;i                         Allocated with name '_in_i_65536_40'
                                   1151 ;aux                       Allocated with name '_in_aux_65536_40'
                                   1152 ;------------------------------------------------------------
                           0000FD  1153 	G$in$0$0 ==.
                           0000FD  1154 	C$I2C_Functions.c$240$1_0$40 ==.
                                   1155 ;	I2C_Functions.c:240: char in (void)
                                   1156 ;	-----------------------------------------
                                   1157 ;	 function in
                                   1158 ;	-----------------------------------------
      002A81                       1159 _in:
                           0000FD  1160 	C$I2C_Functions.c$243$2_0$40 ==.
                                   1161 ;	I2C_Functions.c:243: char aux = 0; // auxiliary storage
      002A81 90 04 2A         [24] 1162 	mov	dptr,#_in_aux_65536_40
      002A84 E4               [12] 1163 	clr	a
      002A85 F0               [24] 1164 	movx	@dptr,a
                           000102  1165 	C$I2C_Functions.c$244$1_0$40 ==.
                                   1166 ;	I2C_Functions.c:244: SDA = 1; // insure port pin = 1 for input
                                   1167 ;	assignBit
      002A86 D2 97            [12] 1168 	setb	_P1_7
                           000104  1169 	C$I2C_Functions.c$245$1_0$40 ==.
                                   1170 ;	I2C_Functions.c:245: for (i = 0; i < 8; i++) // bit shifting cycle
      002A88 7F 00            [12] 1171 	mov	r7,#0x00
      002A8A                       1172 00105$:
                           000106  1173 	C$I2C_Functions.c$247$3_0$42 ==.
                                   1174 ;	I2C_Functions.c:247: SCK = 0; // clock = 0
                                   1175 ;	assignBit
      002A8A C2 96            [12] 1176 	clr	_P1_6
                           000108  1177 	C$I2C_Functions.c$255$3_0$42 ==.
                                   1178 ;	I2C_Functions.c:255: __endasm;
      002A8C 00               [12] 1179 	nop
      002A8D 00               [12] 1180 	nop
      002A8E 00               [12] 1181 	nop
      002A8F 00               [12] 1182 	nop
      002A90 00               [12] 1183 	nop
      002A91 00               [12] 1184 	nop
                           00010E  1185 	C$I2C_Functions.c$256$3_0$42 ==.
                                   1186 ;	I2C_Functions.c:256: SCK = 1; // clock = 1
                                   1187 ;	assignBit
      002A92 D2 96            [12] 1188 	setb	_P1_6
                           000110  1189 	C$I2C_Functions.c$257$3_0$42 ==.
                                   1190 ;	I2C_Functions.c:257: aux = aux << 1; // load bit position
      002A94 90 04 2A         [24] 1191 	mov	dptr,#_in_aux_65536_40
      002A97 E0               [24] 1192 	movx	a,@dptr
      002A98 25 E0            [12] 1193 	add	a,acc
      002A9A FE               [12] 1194 	mov	r6,a
      002A9B F0               [24] 1195 	movx	@dptr,a
                           000118  1196 	C$I2C_Functions.c$258$3_0$42 ==.
                                   1197 ;	I2C_Functions.c:258: if (SDA) // check SDA data from port pin
      002A9C 30 97 0A         [24] 1198 	jnb	_P1_7,00102$
                           00011B  1199 	C$I2C_Functions.c$259$3_0$42 ==.
                                   1200 ;	I2C_Functions.c:259: aux = aux | 0x01; // if port pin = 1, set LSB (bit position)
      002A9F 90 04 2A         [24] 1201 	mov	dptr,#_in_aux_65536_40
      002AA2 E0               [24] 1202 	movx	a,@dptr
      002AA3 43 E0 01         [24] 1203 	orl	acc,#0x01
      002AA6 F0               [24] 1204 	movx	@dptr,a
      002AA7 80 08            [24] 1205 	sjmp	00106$
      002AA9                       1206 00102$:
                           000125  1207 	C$I2C_Functions.c$261$3_0$42 ==.
                                   1208 ;	I2C_Functions.c:261: aux = aux & 0xFE; // else port pin = ,clear LSB (bit position)
      002AA9 90 04 2A         [24] 1209 	mov	dptr,#_in_aux_65536_40
      002AAC E0               [24] 1210 	movx	a,@dptr
      002AAD 53 E0 FE         [24] 1211 	anl	acc,#0xfe
      002AB0 F0               [24] 1212 	movx	@dptr,a
      002AB1                       1213 00106$:
                           00012D  1214 	C$I2C_Functions.c$245$2_0$41 ==.
                                   1215 ;	I2C_Functions.c:245: for (i = 0; i < 8; i++) // bit shifting cycle
      002AB1 0F               [12] 1216 	inc	r7
      002AB2 BF 08 00         [24] 1217 	cjne	r7,#0x08,00123$
      002AB5                       1218 00123$:
      002AB5 40 D3            [24] 1219 	jc	00105$
                           000133  1220 	C$I2C_Functions.c$263$1_0$40 ==.
                                   1221 ;	I2C_Functions.c:263: SCK = 0; // clock = 0
                                   1222 ;	assignBit
      002AB7 C2 96            [12] 1223 	clr	_P1_6
                           000135  1224 	C$I2C_Functions.c$264$1_0$40 ==.
                                   1225 ;	I2C_Functions.c:264: return (aux); // return data received
      002AB9 90 04 2A         [24] 1226 	mov	dptr,#_in_aux_65536_40
      002ABC E0               [24] 1227 	movx	a,@dptr
                           000139  1228 	C$I2C_Functions.c$265$1_0$40 ==.
                                   1229 ;	I2C_Functions.c:265: }
                           000139  1230 	C$I2C_Functions.c$265$1_0$40 ==.
                           000139  1231 	XG$in$0$0 ==.
      002ABD F5 82            [12] 1232 	mov	dpl,a
      002ABF 22               [24] 1233 	ret
                                   1234 ;------------------------------------------------------------
                                   1235 ;Allocation info for local variables in function 'stop'
                                   1236 ;------------------------------------------------------------
                           00013C  1237 	G$stop$0$0 ==.
                           00013C  1238 	C$I2C_Functions.c$279$1_0$44 ==.
                                   1239 ;	I2C_Functions.c:279: void stop (void)
                                   1240 ;	-----------------------------------------
                                   1241 ;	 function stop
                                   1242 ;	-----------------------------------------
      002AC0                       1243 _stop:
                           00013C  1244 	C$I2C_Functions.c$281$1_0$44 ==.
                                   1245 ;	I2C_Functions.c:281: SDA = 0; // stop condition, data = 0
                                   1246 ;	assignBit
      002AC0 C2 97            [12] 1247 	clr	_P1_7
                           00013E  1248 	C$I2C_Functions.c$288$1_0$44 ==.
                                   1249 ;	I2C_Functions.c:288: __endasm;
      002AC2 00               [12] 1250 	nop
      002AC3 00               [12] 1251 	nop
      002AC4 00               [12] 1252 	nop
      002AC5 00               [12] 1253 	nop
      002AC6 00               [12] 1254 	nop
                           000143  1255 	C$I2C_Functions.c$289$1_0$44 ==.
                                   1256 ;	I2C_Functions.c:289: SCK = 1; // clock = 1
                                   1257 ;	assignBit
      002AC7 D2 96            [12] 1258 	setb	_P1_6
                           000145  1259 	C$I2C_Functions.c$296$1_0$44 ==.
                                   1260 ;	I2C_Functions.c:296: __endasm;
      002AC9 00               [12] 1261 	nop
      002ACA 00               [12] 1262 	nop
      002ACB 00               [12] 1263 	nop
      002ACC 00               [12] 1264 	nop
      002ACD 00               [12] 1265 	nop
                           00014A  1266 	C$I2C_Functions.c$297$1_0$44 ==.
                                   1267 ;	I2C_Functions.c:297: SDA = 1; // data = 1
                                   1268 ;	assignBit
      002ACE D2 97            [12] 1269 	setb	_P1_7
                           00014C  1270 	C$I2C_Functions.c$298$1_0$44 ==.
                                   1271 ;	I2C_Functions.c:298: }
                           00014C  1272 	C$I2C_Functions.c$298$1_0$44 ==.
                           00014C  1273 	XG$stop$0$0 ==.
      002AD0 22               [24] 1274 	ret
                                   1275 ;------------------------------------------------------------
                                   1276 ;Allocation info for local variables in function 'start'
                                   1277 ;------------------------------------------------------------
                           00014D  1278 	G$start$0$0 ==.
                           00014D  1279 	C$I2C_Functions.c$299$1_0$46 ==.
                                   1280 ;	I2C_Functions.c:299: void start(void)
                                   1281 ;	-----------------------------------------
                                   1282 ;	 function start
                                   1283 ;	-----------------------------------------
      002AD1                       1284 _start:
                           00014D  1285 	C$I2C_Functions.c$301$1_0$46 ==.
                                   1286 ;	I2C_Functions.c:301: SDA=1;
                                   1287 ;	assignBit
      002AD1 D2 97            [12] 1288 	setb	_P1_7
                           00014F  1289 	C$I2C_Functions.c$302$1_0$46 ==.
                                   1290 ;	I2C_Functions.c:302: SCK = 1;
                                   1291 ;	assignBit
      002AD3 D2 96            [12] 1292 	setb	_P1_6
                           000151  1293 	C$I2C_Functions.c$309$1_0$46 ==.
                                   1294 ;	I2C_Functions.c:309: __endasm;
      002AD5 00               [12] 1295 	nop
      002AD6 00               [12] 1296 	nop
      002AD7 00               [12] 1297 	nop
      002AD8 00               [12] 1298 	nop
      002AD9 00               [12] 1299 	nop
                           000156  1300 	C$I2C_Functions.c$310$1_0$46 ==.
                                   1301 ;	I2C_Functions.c:310: SDA=0;	 // clock = 1
                                   1302 ;	assignBit
      002ADA C2 97            [12] 1303 	clr	_P1_7
                           000158  1304 	C$I2C_Functions.c$317$1_0$46 ==.
                                   1305 ;	I2C_Functions.c:317: __endasm;
      002ADC 00               [12] 1306 	nop
      002ADD 00               [12] 1307 	nop
      002ADE 00               [12] 1308 	nop
      002ADF 00               [12] 1309 	nop
      002AE0 00               [12] 1310 	nop
                           00015D  1311 	C$I2C_Functions.c$318$1_0$46 ==.
                                   1312 ;	I2C_Functions.c:318: SCK = 0; // data = 1
                                   1313 ;	assignBit
      002AE1 C2 96            [12] 1314 	clr	_P1_6
                           00015F  1315 	C$I2C_Functions.c$319$1_0$46 ==.
                                   1316 ;	I2C_Functions.c:319: }
                           00015F  1317 	C$I2C_Functions.c$319$1_0$46 ==.
                           00015F  1318 	XG$start$0$0 ==.
      002AE3 22               [24] 1319 	ret
                                   1320 ;------------------------------------------------------------
                                   1321 ;Allocation info for local variables in function 'eereset'
                                   1322 ;------------------------------------------------------------
                                   1323 ;i                         Allocated with name '_eereset_i_131072_48'
                                   1324 ;------------------------------------------------------------
                           000160  1325 	G$eereset$0$0 ==.
                           000160  1326 	C$I2C_Functions.c$320$1_0$47 ==.
                                   1327 ;	I2C_Functions.c:320: void eereset()
                                   1328 ;	-----------------------------------------
                                   1329 ;	 function eereset
                                   1330 ;	-----------------------------------------
      002AE4                       1331 _eereset:
                           000160  1332 	C$I2C_Functions.c$322$1_0$47 ==.
                                   1333 ;	I2C_Functions.c:322: start();
      002AE4 12 2A D1         [24] 1334 	lcall	_start
                           000163  1335 	C$I2C_Functions.c$323$1_0$47 ==.
                                   1336 ;	I2C_Functions.c:323: for(uint8_t i=0;i<9;i++)
      002AE7 7F 00            [12] 1337 	mov	r7,#0x00
      002AE9                       1338 00103$:
      002AE9 BF 09 00         [24] 1339 	cjne	r7,#0x09,00116$
      002AEC                       1340 00116$:
      002AEC 50 0E            [24] 1341 	jnc	00101$
                           00016A  1342 	C$I2C_Functions.c$324$3_0$49 ==.
                                   1343 ;	I2C_Functions.c:324: {   SDA=1;
                                   1344 ;	assignBit
      002AEE D2 97            [12] 1345 	setb	_P1_7
                           00016C  1346 	C$I2C_Functions.c$325$3_0$49 ==.
                                   1347 ;	I2C_Functions.c:325: SCK=1;
                                   1348 ;	assignBit
      002AF0 D2 96            [12] 1349 	setb	_P1_6
                           00016E  1350 	C$I2C_Functions.c$332$3_0$49 ==.
                                   1351 ;	I2C_Functions.c:332: __endasm;
      002AF2 00               [12] 1352 	nop
      002AF3 00               [12] 1353 	nop
      002AF4 00               [12] 1354 	nop
      002AF5 00               [12] 1355 	nop
      002AF6 00               [12] 1356 	nop
                           000173  1357 	C$I2C_Functions.c$333$3_0$49 ==.
                                   1358 ;	I2C_Functions.c:333: SCK=0;
                                   1359 ;	assignBit
      002AF7 C2 96            [12] 1360 	clr	_P1_6
                           000175  1361 	C$I2C_Functions.c$323$2_0$48 ==.
                                   1362 ;	I2C_Functions.c:323: for(uint8_t i=0;i<9;i++)
      002AF9 0F               [12] 1363 	inc	r7
      002AFA 80 ED            [24] 1364 	sjmp	00103$
      002AFC                       1365 00101$:
                           000178  1366 	C$I2C_Functions.c$335$1_0$47 ==.
                                   1367 ;	I2C_Functions.c:335: start();
      002AFC 12 2A D1         [24] 1368 	lcall	_start
                           00017B  1369 	C$I2C_Functions.c$336$1_0$47 ==.
                                   1370 ;	I2C_Functions.c:336: stop();
      002AFF 12 2A C0         [24] 1371 	lcall	_stop
                           00017E  1372 	C$I2C_Functions.c$337$1_0$47 ==.
                                   1373 ;	I2C_Functions.c:337: }
                           00017E  1374 	C$I2C_Functions.c$337$1_0$47 ==.
                           00017E  1375 	XG$eereset$0$0 ==.
      002B02 22               [24] 1376 	ret
                                   1377 ;------------------------------------------------------------
                                   1378 ;Allocation info for local variables in function 'ack'
                                   1379 ;------------------------------------------------------------
                           00017F  1380 	G$ack$0$0 ==.
                           00017F  1381 	C$I2C_Functions.c$338$1_0$51 ==.
                                   1382 ;	I2C_Functions.c:338: void ack(void)
                                   1383 ;	-----------------------------------------
                                   1384 ;	 function ack
                                   1385 ;	-----------------------------------------
      002B03                       1386 _ack:
                           00017F  1387 	C$I2C_Functions.c$340$1_0$51 ==.
                                   1388 ;	I2C_Functions.c:340: SDA = 0; // 8051 Pulls SDA low to ACK
                                   1389 ;	assignBit
      002B03 C2 97            [12] 1390 	clr	_P1_7
                           000181  1391 	C$I2C_Functions.c$345$1_0$51 ==.
                                   1392 ;	I2C_Functions.c:345: __endasm;
      002B05 00               [12] 1393 	nop
      002B06 00               [12] 1394 	nop
      002B07 00               [12] 1395 	nop
                           000184  1396 	C$I2C_Functions.c$346$1_0$51 ==.
                                   1397 ;	I2C_Functions.c:346: SCK = 1; // clock ack
                                   1398 ;	assignBit
      002B08 D2 96            [12] 1399 	setb	_P1_6
                           000186  1400 	C$I2C_Functions.c$353$1_0$51 ==.
                                   1401 ;	I2C_Functions.c:353: __endasm;
      002B0A 00               [12] 1402 	nop
      002B0B 00               [12] 1403 	nop
      002B0C 00               [12] 1404 	nop
      002B0D 00               [12] 1405 	nop
      002B0E 00               [12] 1406 	nop
                           00018B  1407 	C$I2C_Functions.c$354$1_0$51 ==.
                                   1408 ;	I2C_Functions.c:354: SCK = 0; // clock = 0
                                   1409 ;	assignBit
      002B0F C2 96            [12] 1410 	clr	_P1_6
                           00018D  1411 	C$I2C_Functions.c$355$1_0$51 ==.
                                   1412 ;	I2C_Functions.c:355: SDA = 1; // Pulling it back up now
                                   1413 ;	assignBit
      002B11 D2 97            [12] 1414 	setb	_P1_7
                           00018F  1415 	C$I2C_Functions.c$356$1_0$51 ==.
                                   1416 ;	I2C_Functions.c:356: }
                           00018F  1417 	C$I2C_Functions.c$356$1_0$51 ==.
                           00018F  1418 	XG$ack$0$0 ==.
      002B13 22               [24] 1419 	ret
                                   1420 ;------------------------------------------------------------
                                   1421 ;Allocation info for local variables in function 'delay1'
                                   1422 ;------------------------------------------------------------
                                   1423 ;i                         Allocated with name '_delay1_i_65536_52'
                                   1424 ;------------------------------------------------------------
                           000190  1425 	G$delay1$0$0 ==.
                           000190  1426 	C$I2C_Functions.c$357$1_0$52 ==.
                                   1427 ;	I2C_Functions.c:357: void delay1()
                                   1428 ;	-----------------------------------------
                                   1429 ;	 function delay1
                                   1430 ;	-----------------------------------------
      002B14                       1431 _delay1:
                           000190  1432 	C$I2C_Functions.c$359$1_0$52 ==.
                                   1433 ;	I2C_Functions.c:359: while(i!=1000)
      002B14 7E 00            [12] 1434 	mov	r6,#0x00
      002B16 7F 00            [12] 1435 	mov	r7,#0x00
      002B18                       1436 00101$:
      002B18 BE E8 05         [24] 1437 	cjne	r6,#0xe8,00115$
      002B1B BF 03 02         [24] 1438 	cjne	r7,#0x03,00115$
      002B1E 80 07            [24] 1439 	sjmp	00104$
      002B20                       1440 00115$:
                           00019C  1441 	C$I2C_Functions.c$361$2_0$53 ==.
                                   1442 ;	I2C_Functions.c:361: ++i;
      002B20 0E               [12] 1443 	inc	r6
      002B21 BE 00 F4         [24] 1444 	cjne	r6,#0x00,00101$
      002B24 0F               [12] 1445 	inc	r7
      002B25 80 F1            [24] 1446 	sjmp	00101$
      002B27                       1447 00104$:
                           0001A3  1448 	C$I2C_Functions.c$363$1_0$52 ==.
                                   1449 ;	I2C_Functions.c:363: }
                           0001A3  1450 	C$I2C_Functions.c$363$1_0$52 ==.
                           0001A3  1451 	XG$delay1$0$0 ==.
      002B27 22               [24] 1452 	ret
                                   1453 ;------------------------------------------------------------
                                   1454 ;Allocation info for local variables in function 'reeprom_seq'
                                   1455 ;------------------------------------------------------------
                                   1456 ;Start_Address             Allocated with name '_reeprom_seq_PARM_2'
                                   1457 ;End_Address               Allocated with name '_reeprom_seq_PARM_3'
                                   1458 ;block                     Allocated with name '_reeprom_seq_block_65536_54'
                                   1459 ;a                         Allocated with name '_reeprom_seq_a_65536_55'
                                   1460 ;b                         Allocated with name '_reeprom_seq_b_65536_55'
                                   1461 ;i                         Allocated with name '_reeprom_seq_i_65536_55'
                                   1462 ;res                       Allocated with name '_reeprom_seq_res_65536_55'
                                   1463 ;j                         Allocated with name '_reeprom_seq_j_65536_55'
                                   1464 ;aux                       Allocated with name '_reeprom_seq_aux_65536_55'
                                   1465 ;WRCMD                     Allocated with name '_reeprom_seq_WRCMD_65536_55'
                                   1466 ;------------------------------------------------------------
                           0001A4  1467 	G$reeprom_seq$0$0 ==.
                           0001A4  1468 	C$I2C_Functions.c$364$1_0$55 ==.
                                   1469 ;	I2C_Functions.c:364: void reeprom_seq(uint16_t block,int Start_Address,int End_Address)
                                   1470 ;	-----------------------------------------
                                   1471 ;	 function reeprom_seq
                                   1472 ;	-----------------------------------------
      002B28                       1473 _reeprom_seq:
      002B28 AF 83            [24] 1474 	mov	r7,dph
      002B2A E5 82            [12] 1475 	mov	a,dpl
      002B2C 90 04 2F         [24] 1476 	mov	dptr,#_reeprom_seq_block_65536_54
      002B2F F0               [24] 1477 	movx	@dptr,a
      002B30 EF               [12] 1478 	mov	a,r7
      002B31 A3               [24] 1479 	inc	dptr
      002B32 F0               [24] 1480 	movx	@dptr,a
                           0001AF  1481 	C$I2C_Functions.c$366$1_0$55 ==.
                                   1482 ;	I2C_Functions.c:366: volatile uint8_t a=Start_Address%16;
      002B33 90 04 2B         [24] 1483 	mov	dptr,#_reeprom_seq_PARM_2
      002B36 E0               [24] 1484 	movx	a,@dptr
      002B37 FE               [12] 1485 	mov	r6,a
      002B38 A3               [24] 1486 	inc	dptr
      002B39 E0               [24] 1487 	movx	a,@dptr
      002B3A FF               [12] 1488 	mov	r7,a
      002B3B 90 04 41         [24] 1489 	mov	dptr,#__modsint_PARM_2
      002B3E 74 10            [12] 1490 	mov	a,#0x10
      002B40 F0               [24] 1491 	movx	@dptr,a
      002B41 E4               [12] 1492 	clr	a
      002B42 A3               [24] 1493 	inc	dptr
      002B43 F0               [24] 1494 	movx	@dptr,a
      002B44 8E 82            [24] 1495 	mov	dpl,r6
      002B46 8F 83            [24] 1496 	mov	dph,r7
      002B48 C0 07            [24] 1497 	push	ar7
      002B4A C0 06            [24] 1498 	push	ar6
      002B4C 12 33 40         [24] 1499 	lcall	__modsint
      002B4F AC 82            [24] 1500 	mov	r4,dpl
      002B51 90 04 31         [24] 1501 	mov	dptr,#_reeprom_seq_a_65536_55
      002B54 EC               [12] 1502 	mov	a,r4
      002B55 F0               [24] 1503 	movx	@dptr,a
                           0001D2  1504 	C$I2C_Functions.c$367$1_0$55 ==.
                                   1505 ;	I2C_Functions.c:367: uint8_t b=End_Address%16;
      002B56 90 04 2D         [24] 1506 	mov	dptr,#_reeprom_seq_PARM_3
      002B59 E0               [24] 1507 	movx	a,@dptr
      002B5A FC               [12] 1508 	mov	r4,a
      002B5B A3               [24] 1509 	inc	dptr
      002B5C E0               [24] 1510 	movx	a,@dptr
      002B5D FD               [12] 1511 	mov	r5,a
      002B5E 90 04 41         [24] 1512 	mov	dptr,#__modsint_PARM_2
      002B61 74 10            [12] 1513 	mov	a,#0x10
      002B63 F0               [24] 1514 	movx	@dptr,a
      002B64 E4               [12] 1515 	clr	a
      002B65 A3               [24] 1516 	inc	dptr
      002B66 F0               [24] 1517 	movx	@dptr,a
      002B67 8C 82            [24] 1518 	mov	dpl,r4
      002B69 8D 83            [24] 1519 	mov	dph,r5
      002B6B C0 05            [24] 1520 	push	ar5
      002B6D C0 04            [24] 1521 	push	ar4
      002B6F 12 33 40         [24] 1522 	lcall	__modsint
      002B72 AA 82            [24] 1523 	mov	r2,dpl
      002B74 D0 04            [24] 1524 	pop	ar4
      002B76 D0 05            [24] 1525 	pop	ar5
      002B78 D0 06            [24] 1526 	pop	ar6
      002B7A D0 07            [24] 1527 	pop	ar7
                           0001F8  1528 	C$I2C_Functions.c$368$1_0$55 ==.
                                   1529 ;	I2C_Functions.c:368: volatile uint16_t i,res=0,j;
      002B7C 90 04 34         [24] 1530 	mov	dptr,#_reeprom_seq_res_65536_55
      002B7F E4               [12] 1531 	clr	a
      002B80 F0               [24] 1532 	movx	@dptr,a
      002B81 A3               [24] 1533 	inc	dptr
      002B82 F0               [24] 1534 	movx	@dptr,a
                           0001FF  1535 	C$I2C_Functions.c$371$1_0$55 ==.
                                   1536 ;	I2C_Functions.c:371: Start_Address=Start_Address-a;
      002B83 90 04 31         [24] 1537 	mov	dptr,#_reeprom_seq_a_65536_55
      002B86 E0               [24] 1538 	movx	a,@dptr
      002B87 F9               [12] 1539 	mov	r1,a
      002B88 7B 00            [12] 1540 	mov	r3,#0x00
      002B8A 90 04 2B         [24] 1541 	mov	dptr,#_reeprom_seq_PARM_2
      002B8D EE               [12] 1542 	mov	a,r6
      002B8E C3               [12] 1543 	clr	c
      002B8F 99               [12] 1544 	subb	a,r1
      002B90 F0               [24] 1545 	movx	@dptr,a
      002B91 EF               [12] 1546 	mov	a,r7
      002B92 9B               [12] 1547 	subb	a,r3
      002B93 A3               [24] 1548 	inc	dptr
      002B94 F0               [24] 1549 	movx	@dptr,a
                           000211  1550 	C$I2C_Functions.c$372$1_0$55 ==.
                                   1551 ;	I2C_Functions.c:372: End_Address=End_Address+16-b;
      002B95 74 10            [12] 1552 	mov	a,#0x10
      002B97 2C               [12] 1553 	add	a,r4
      002B98 FC               [12] 1554 	mov	r4,a
      002B99 E4               [12] 1555 	clr	a
      002B9A 3D               [12] 1556 	addc	a,r5
      002B9B FD               [12] 1557 	mov	r5,a
      002B9C 7F 00            [12] 1558 	mov	r7,#0x00
      002B9E 90 04 2D         [24] 1559 	mov	dptr,#_reeprom_seq_PARM_3
      002BA1 EC               [12] 1560 	mov	a,r4
      002BA2 C3               [12] 1561 	clr	c
      002BA3 9A               [12] 1562 	subb	a,r2
      002BA4 F0               [24] 1563 	movx	@dptr,a
      002BA5 ED               [12] 1564 	mov	a,r5
      002BA6 9F               [12] 1565 	subb	a,r7
      002BA7 A3               [24] 1566 	inc	dptr
      002BA8 F0               [24] 1567 	movx	@dptr,a
                           000225  1568 	C$I2C_Functions.c$378$1_0$55 ==.
                                   1569 ;	I2C_Functions.c:378: aux = block; // preparing the write command
      002BA9 90 04 2F         [24] 1570 	mov	dptr,#_reeprom_seq_block_65536_54
      002BAC E0               [24] 1571 	movx	a,@dptr
      002BAD FE               [12] 1572 	mov	r6,a
      002BAE A3               [24] 1573 	inc	dptr
      002BAF E0               [24] 1574 	movx	a,@dptr
      002BB0 90 04 38         [24] 1575 	mov	dptr,#_reeprom_seq_aux_65536_55
      002BB3 EE               [12] 1576 	mov	a,r6
      002BB4 F0               [24] 1577 	movx	@dptr,a
                           000231  1578 	C$I2C_Functions.c$379$1_0$55 ==.
                                   1579 ;	I2C_Functions.c:379: aux = aux << 1; // move A0, A1 & A2 to their positions
      002BB5 E0               [24] 1580 	movx	a,@dptr
      002BB6 25 E0            [12] 1581 	add	a,acc
      002BB8 F0               [24] 1582 	movx	@dptr,a
                           000235  1583 	C$I2C_Functions.c$380$1_0$55 ==.
                                   1584 ;	I2C_Functions.c:380: aux = aux & 0xFE; // clear r/w bit
      002BB9 E0               [24] 1585 	movx	a,@dptr
      002BBA 53 E0 FE         [24] 1586 	anl	acc,#0xfe
      002BBD F0               [24] 1587 	movx	@dptr,a
                           00023A  1588 	C$I2C_Functions.c$381$1_0$55 ==.
                                   1589 ;	I2C_Functions.c:381: WRCMD = aux | 0xA0; // build the write command
      002BBE 90 04 38         [24] 1590 	mov	dptr,#_reeprom_seq_aux_65536_55
      002BC1 E0               [24] 1591 	movx	a,@dptr
      002BC2 90 04 39         [24] 1592 	mov	dptr,#_reeprom_seq_WRCMD_65536_55
      002BC5 44 A0            [12] 1593 	orl	a,#0xa0
      002BC7 F0               [24] 1594 	movx	@dptr,a
                           000244  1595 	C$I2C_Functions.c$382$1_0$55 ==.
                                   1596 ;	I2C_Functions.c:382: outs(WRCMD); // send the write command with start condition
      002BC8 E0               [24] 1597 	movx	a,@dptr
      002BC9 F5 82            [12] 1598 	mov	dpl,a
      002BCB 12 29 F9         [24] 1599 	lcall	_outs
                           00024A  1600 	C$I2C_Functions.c$383$1_0$55 ==.
                                   1601 ;	I2C_Functions.c:383: out(Start_Address); // send address
      002BCE 90 04 2B         [24] 1602 	mov	dptr,#_reeprom_seq_PARM_2
      002BD1 E0               [24] 1603 	movx	a,@dptr
      002BD2 FE               [12] 1604 	mov	r6,a
      002BD3 A3               [24] 1605 	inc	dptr
      002BD4 E0               [24] 1606 	movx	a,@dptr
      002BD5 FF               [12] 1607 	mov	r7,a
      002BD6 8E 05            [24] 1608 	mov	ar5,r6
      002BD8 8D 82            [24] 1609 	mov	dpl,r5
      002BDA C0 07            [24] 1610 	push	ar7
      002BDC C0 06            [24] 1611 	push	ar6
      002BDE 12 2A 46         [24] 1612 	lcall	_out
                           00025D  1613 	C$I2C_Functions.c$384$1_0$55 ==.
                                   1614 ;	I2C_Functions.c:384: aux = aux << 1; // move A0, A1 & A2 to their positions
      002BE1 90 04 38         [24] 1615 	mov	dptr,#_reeprom_seq_aux_65536_55
      002BE4 E0               [24] 1616 	movx	a,@dptr
      002BE5 25 E0            [12] 1617 	add	a,acc
      002BE7 F0               [24] 1618 	movx	@dptr,a
                           000264  1619 	C$I2C_Functions.c$385$1_0$55 ==.
                                   1620 ;	I2C_Functions.c:385: aux = aux & 0xFE; // clear r/w bit
      002BE8 E0               [24] 1621 	movx	a,@dptr
      002BE9 53 E0 FE         [24] 1622 	anl	acc,#0xfe
      002BEC F0               [24] 1623 	movx	@dptr,a
                           000269  1624 	C$I2C_Functions.c$386$1_0$55 ==.
                                   1625 ;	I2C_Functions.c:386: WRCMD = aux | 0xA1; // Make R/W = 1 ///There is another start in outs
      002BED 90 04 38         [24] 1626 	mov	dptr,#_reeprom_seq_aux_65536_55
      002BF0 E0               [24] 1627 	movx	a,@dptr
      002BF1 90 04 39         [24] 1628 	mov	dptr,#_reeprom_seq_WRCMD_65536_55
      002BF4 44 A1            [12] 1629 	orl	a,#0xa1
      002BF6 F0               [24] 1630 	movx	@dptr,a
                           000273  1631 	C$I2C_Functions.c$387$1_0$55 ==.
                                   1632 ;	I2C_Functions.c:387: outs(WRCMD); // send the write command with start condition/// Pulling up SCK
      002BF7 E0               [24] 1633 	movx	a,@dptr
      002BF8 F5 82            [12] 1634 	mov	dpl,a
      002BFA 12 29 F9         [24] 1635 	lcall	_outs
                           000279  1636 	C$I2C_Functions.c$388$1_0$55 ==.
                                   1637 ;	I2C_Functions.c:388: delay1();
      002BFD 12 2B 14         [24] 1638 	lcall	_delay1
      002C00 D0 06            [24] 1639 	pop	ar6
      002C02 D0 07            [24] 1640 	pop	ar7
                           000280  1641 	C$I2C_Functions.c$389$1_0$55 ==.
                                   1642 ;	I2C_Functions.c:389: i=Start_Address;
      002C04 90 04 32         [24] 1643 	mov	dptr,#_reeprom_seq_i_65536_55
      002C07 EE               [12] 1644 	mov	a,r6
      002C08 F0               [24] 1645 	movx	@dptr,a
      002C09 EF               [12] 1646 	mov	a,r7
      002C0A A3               [24] 1647 	inc	dptr
      002C0B F0               [24] 1648 	movx	@dptr,a
                           000288  1649 	C$I2C_Functions.c$390$4_0$64 ==.
                                   1650 ;	I2C_Functions.c:390: while(i!=End_Address)
      002C0C 90 04 2D         [24] 1651 	mov	dptr,#_reeprom_seq_PARM_3
      002C0F E0               [24] 1652 	movx	a,@dptr
      002C10 FE               [12] 1653 	mov	r6,a
      002C11 A3               [24] 1654 	inc	dptr
      002C12 E0               [24] 1655 	movx	a,@dptr
      002C13 FF               [12] 1656 	mov	r7,a
      002C14                       1657 00117$:
      002C14 90 04 32         [24] 1658 	mov	dptr,#_reeprom_seq_i_65536_55
      002C17 E0               [24] 1659 	movx	a,@dptr
      002C18 FC               [12] 1660 	mov	r4,a
      002C19 A3               [24] 1661 	inc	dptr
      002C1A E0               [24] 1662 	movx	a,@dptr
      002C1B FD               [12] 1663 	mov	r5,a
      002C1C 8E 02            [24] 1664 	mov	ar2,r6
      002C1E 8F 03            [24] 1665 	mov	ar3,r7
      002C20 EC               [12] 1666 	mov	a,r4
      002C21 B5 02 07         [24] 1667 	cjne	a,ar2,00165$
      002C24 ED               [12] 1668 	mov	a,r5
      002C25 B5 03 03         [24] 1669 	cjne	a,ar3,00165$
      002C28 02 2E 3A         [24] 1670 	ljmp	00119$
      002C2B                       1671 00165$:
                           0002A7  1672 	C$I2C_Functions.c$391$2_0$56 ==.
                                   1673 ;	I2C_Functions.c:391: {   if(i%(0x100)==0)
      002C2B 90 04 32         [24] 1674 	mov	dptr,#_reeprom_seq_i_65536_55
      002C2E E0               [24] 1675 	movx	a,@dptr
      002C2F FC               [12] 1676 	mov	r4,a
      002C30 A3               [24] 1677 	inc	dptr
      002C31 E0               [24] 1678 	movx	a,@dptr
      002C32 FD               [12] 1679 	mov	r5,a
      002C33 EC               [12] 1680 	mov	a,r4
      002C34 60 03            [24] 1681 	jz	00167$
      002C36 02 2D 0D         [24] 1682 	ljmp	00105$
      002C39                       1683 00167$:
                           0002B5  1684 	C$I2C_Functions.c$393$3_0$57 ==.
                                   1685 ;	I2C_Functions.c:393: printf_tiny("\n\r    ");
      002C39 C0 07            [24] 1686 	push	ar7
      002C3B C0 06            [24] 1687 	push	ar6
      002C3D 74 0C            [12] 1688 	mov	a,#___str_0
      002C3F C0 E0            [24] 1689 	push	acc
      002C41 74 40            [12] 1690 	mov	a,#(___str_0 >> 8)
      002C43 C0 E0            [24] 1691 	push	acc
      002C45 12 32 37         [24] 1692 	lcall	_printf_tiny
      002C48 15 81            [12] 1693 	dec	sp
      002C4A 15 81            [12] 1694 	dec	sp
                           0002C8  1695 	C$I2C_Functions.c$394$3_0$57 ==.
                                   1696 ;	I2C_Functions.c:394: printf_tiny("\n\r********************************************************************");
      002C4C 74 13            [12] 1697 	mov	a,#___str_1
      002C4E C0 E0            [24] 1698 	push	acc
      002C50 74 40            [12] 1699 	mov	a,#(___str_1 >> 8)
      002C52 C0 E0            [24] 1700 	push	acc
      002C54 12 32 37         [24] 1701 	lcall	_printf_tiny
      002C57 15 81            [12] 1702 	dec	sp
      002C59 15 81            [12] 1703 	dec	sp
                           0002D7  1704 	C$I2C_Functions.c$395$3_0$57 ==.
                                   1705 ;	I2C_Functions.c:395: printf_tiny("\n\rAddr");
      002C5B 74 5A            [12] 1706 	mov	a,#___str_2
      002C5D C0 E0            [24] 1707 	push	acc
      002C5F 74 40            [12] 1708 	mov	a,#(___str_2 >> 8)
      002C61 C0 E0            [24] 1709 	push	acc
      002C63 12 32 37         [24] 1710 	lcall	_printf_tiny
      002C66 15 81            [12] 1711 	dec	sp
      002C68 15 81            [12] 1712 	dec	sp
                           0002E6  1713 	C$I2C_Functions.c$396$3_0$57 ==.
                                   1714 ;	I2C_Functions.c:396: printf_tiny("                               DATA");
      002C6A 74 61            [12] 1715 	mov	a,#___str_3
      002C6C C0 E0            [24] 1716 	push	acc
      002C6E 74 40            [12] 1717 	mov	a,#(___str_3 >> 8)
      002C70 C0 E0            [24] 1718 	push	acc
      002C72 12 32 37         [24] 1719 	lcall	_printf_tiny
      002C75 15 81            [12] 1720 	dec	sp
      002C77 15 81            [12] 1721 	dec	sp
                           0002F5  1722 	C$I2C_Functions.c$397$3_0$57 ==.
                                   1723 ;	I2C_Functions.c:397: printf_tiny("\n\r********************************************************************\n\r");
      002C79 74 85            [12] 1724 	mov	a,#___str_4
      002C7B C0 E0            [24] 1725 	push	acc
      002C7D 74 40            [12] 1726 	mov	a,#(___str_4 >> 8)
      002C7F C0 E0            [24] 1727 	push	acc
      002C81 12 32 37         [24] 1728 	lcall	_printf_tiny
      002C84 15 81            [12] 1729 	dec	sp
      002C86 15 81            [12] 1730 	dec	sp
      002C88 D0 06            [24] 1731 	pop	ar6
      002C8A D0 07            [24] 1732 	pop	ar7
                           000308  1733 	C$I2C_Functions.c$398$4_0$58 ==.
                                   1734 ;	I2C_Functions.c:398: for(j=0;j<16;j++)
      002C8C 90 04 36         [24] 1735 	mov	dptr,#_reeprom_seq_j_65536_55
      002C8F E4               [12] 1736 	clr	a
      002C90 F0               [24] 1737 	movx	@dptr,a
      002C91 A3               [24] 1738 	inc	dptr
      002C92 F0               [24] 1739 	movx	@dptr,a
      002C93                       1740 00121$:
      002C93 90 04 36         [24] 1741 	mov	dptr,#_reeprom_seq_j_65536_55
      002C96 E0               [24] 1742 	movx	a,@dptr
      002C97 FC               [12] 1743 	mov	r4,a
      002C98 A3               [24] 1744 	inc	dptr
      002C99 E0               [24] 1745 	movx	a,@dptr
      002C9A FD               [12] 1746 	mov	r5,a
      002C9B C3               [12] 1747 	clr	c
      002C9C EC               [12] 1748 	mov	a,r4
      002C9D 94 10            [12] 1749 	subb	a,#0x10
      002C9F ED               [12] 1750 	mov	a,r5
      002CA0 94 00            [12] 1751 	subb	a,#0x00
      002CA2 50 69            [24] 1752 	jnc	00105$
                           000320  1753 	C$I2C_Functions.c$400$5_0$59 ==.
                                   1754 ;	I2C_Functions.c:400: if(j==0)
      002CA4 90 04 36         [24] 1755 	mov	dptr,#_reeprom_seq_j_65536_55
      002CA7 E0               [24] 1756 	movx	a,@dptr
      002CA8 FC               [12] 1757 	mov	r4,a
      002CA9 A3               [24] 1758 	inc	dptr
      002CAA E0               [24] 1759 	movx	a,@dptr
      002CAB 4C               [12] 1760 	orl	a,r4
      002CAC 70 25            [24] 1761 	jnz	00102$
                           00032A  1762 	C$I2C_Functions.c$402$6_0$60 ==.
                                   1763 ;	I2C_Functions.c:402: printf_tiny("       ",j);
      002CAE 90 04 36         [24] 1764 	mov	dptr,#_reeprom_seq_j_65536_55
      002CB1 E0               [24] 1765 	movx	a,@dptr
      002CB2 FC               [12] 1766 	mov	r4,a
      002CB3 A3               [24] 1767 	inc	dptr
      002CB4 E0               [24] 1768 	movx	a,@dptr
      002CB5 FD               [12] 1769 	mov	r5,a
      002CB6 C0 07            [24] 1770 	push	ar7
      002CB8 C0 06            [24] 1771 	push	ar6
      002CBA C0 04            [24] 1772 	push	ar4
      002CBC C0 05            [24] 1773 	push	ar5
      002CBE 74 CE            [12] 1774 	mov	a,#___str_5
      002CC0 C0 E0            [24] 1775 	push	acc
      002CC2 74 40            [12] 1776 	mov	a,#(___str_5 >> 8)
      002CC4 C0 E0            [24] 1777 	push	acc
      002CC6 12 32 37         [24] 1778 	lcall	_printf_tiny
      002CC9 E5 81            [12] 1779 	mov	a,sp
      002CCB 24 FC            [12] 1780 	add	a,#0xfc
      002CCD F5 81            [12] 1781 	mov	sp,a
      002CCF D0 06            [24] 1782 	pop	ar6
      002CD1 D0 07            [24] 1783 	pop	ar7
      002CD3                       1784 00102$:
                           00034F  1785 	C$I2C_Functions.c$404$5_0$59 ==.
                                   1786 ;	I2C_Functions.c:404: printf_tiny("%x   ",j);
      002CD3 90 04 36         [24] 1787 	mov	dptr,#_reeprom_seq_j_65536_55
      002CD6 E0               [24] 1788 	movx	a,@dptr
      002CD7 FC               [12] 1789 	mov	r4,a
      002CD8 A3               [24] 1790 	inc	dptr
      002CD9 E0               [24] 1791 	movx	a,@dptr
      002CDA FD               [12] 1792 	mov	r5,a
      002CDB C0 07            [24] 1793 	push	ar7
      002CDD C0 06            [24] 1794 	push	ar6
      002CDF C0 04            [24] 1795 	push	ar4
      002CE1 C0 05            [24] 1796 	push	ar5
      002CE3 74 D6            [12] 1797 	mov	a,#___str_6
      002CE5 C0 E0            [24] 1798 	push	acc
      002CE7 74 40            [12] 1799 	mov	a,#(___str_6 >> 8)
      002CE9 C0 E0            [24] 1800 	push	acc
      002CEB 12 32 37         [24] 1801 	lcall	_printf_tiny
      002CEE E5 81            [12] 1802 	mov	a,sp
      002CF0 24 FC            [12] 1803 	add	a,#0xfc
      002CF2 F5 81            [12] 1804 	mov	sp,a
      002CF4 D0 06            [24] 1805 	pop	ar6
      002CF6 D0 07            [24] 1806 	pop	ar7
                           000374  1807 	C$I2C_Functions.c$398$4_0$58 ==.
                                   1808 ;	I2C_Functions.c:398: for(j=0;j<16;j++)
      002CF8 90 04 36         [24] 1809 	mov	dptr,#_reeprom_seq_j_65536_55
      002CFB E0               [24] 1810 	movx	a,@dptr
      002CFC FC               [12] 1811 	mov	r4,a
      002CFD A3               [24] 1812 	inc	dptr
      002CFE E0               [24] 1813 	movx	a,@dptr
      002CFF FD               [12] 1814 	mov	r5,a
      002D00 90 04 36         [24] 1815 	mov	dptr,#_reeprom_seq_j_65536_55
      002D03 74 01            [12] 1816 	mov	a,#0x01
      002D05 2C               [12] 1817 	add	a,r4
      002D06 F0               [24] 1818 	movx	@dptr,a
      002D07 E4               [12] 1819 	clr	a
      002D08 3D               [12] 1820 	addc	a,r5
      002D09 A3               [24] 1821 	inc	dptr
      002D0A F0               [24] 1822 	movx	@dptr,a
      002D0B 80 86            [24] 1823 	sjmp	00121$
      002D0D                       1824 00105$:
                           000389  1825 	C$I2C_Functions.c$407$2_0$56 ==.
                                   1826 ;	I2C_Functions.c:407: if(i%16==0)
      002D0D 90 04 32         [24] 1827 	mov	dptr,#_reeprom_seq_i_65536_55
      002D10 E0               [24] 1828 	movx	a,@dptr
      002D11 FC               [12] 1829 	mov	r4,a
      002D12 A3               [24] 1830 	inc	dptr
      002D13 E0               [24] 1831 	movx	a,@dptr
      002D14 FD               [12] 1832 	mov	r5,a
      002D15 EC               [12] 1833 	mov	a,r4
      002D16 54 0F            [12] 1834 	anl	a,#0x0f
      002D18 60 03            [24] 1835 	jz	00171$
      002D1A 02 2D B1         [24] 1836 	ljmp	00113$
      002D1D                       1837 00171$:
                           000399  1838 	C$I2C_Functions.c$408$3_0$61 ==.
                                   1839 ;	I2C_Functions.c:408: {   if(i==0)
      002D1D 90 04 32         [24] 1840 	mov	dptr,#_reeprom_seq_i_65536_55
      002D20 E0               [24] 1841 	movx	a,@dptr
      002D21 FC               [12] 1842 	mov	r4,a
      002D22 A3               [24] 1843 	inc	dptr
      002D23 E0               [24] 1844 	movx	a,@dptr
      002D24 4C               [12] 1845 	orl	a,r4
      002D25 70 2B            [24] 1846 	jnz	00110$
                           0003A3  1847 	C$I2C_Functions.c$410$4_0$62 ==.
                                   1848 ;	I2C_Functions.c:410: printf("\n\r0x00%x:",i);
      002D27 90 04 32         [24] 1849 	mov	dptr,#_reeprom_seq_i_65536_55
      002D2A E0               [24] 1850 	movx	a,@dptr
      002D2B FC               [12] 1851 	mov	r4,a
      002D2C A3               [24] 1852 	inc	dptr
      002D2D E0               [24] 1853 	movx	a,@dptr
      002D2E FD               [12] 1854 	mov	r5,a
      002D2F C0 07            [24] 1855 	push	ar7
      002D31 C0 06            [24] 1856 	push	ar6
      002D33 C0 04            [24] 1857 	push	ar4
      002D35 C0 05            [24] 1858 	push	ar5
      002D37 74 DC            [12] 1859 	mov	a,#___str_7
      002D39 C0 E0            [24] 1860 	push	acc
      002D3B 74 40            [12] 1861 	mov	a,#(___str_7 >> 8)
      002D3D C0 E0            [24] 1862 	push	acc
      002D3F 74 80            [12] 1863 	mov	a,#0x80
      002D41 C0 E0            [24] 1864 	push	acc
      002D43 12 34 A2         [24] 1865 	lcall	_printf
      002D46 E5 81            [12] 1866 	mov	a,sp
      002D48 24 FB            [12] 1867 	add	a,#0xfb
      002D4A F5 81            [12] 1868 	mov	sp,a
      002D4C D0 06            [24] 1869 	pop	ar6
      002D4E D0 07            [24] 1870 	pop	ar7
      002D50 80 5F            [24] 1871 	sjmp	00113$
      002D52                       1872 00110$:
                           0003CE  1873 	C$I2C_Functions.c$412$3_0$61 ==.
                                   1874 ;	I2C_Functions.c:412: else if(i<(0x100))
      002D52 90 04 32         [24] 1875 	mov	dptr,#_reeprom_seq_i_65536_55
      002D55 E0               [24] 1876 	movx	a,@dptr
      002D56 A3               [24] 1877 	inc	dptr
      002D57 E0               [24] 1878 	movx	a,@dptr
      002D58 C3               [12] 1879 	clr	c
      002D59 94 01            [12] 1880 	subb	a,#0x01
      002D5B 50 2B            [24] 1881 	jnc	00107$
                           0003D9  1882 	C$I2C_Functions.c$414$4_0$63 ==.
                                   1883 ;	I2C_Functions.c:414: printf("\n\r0x0%x:",i);
      002D5D 90 04 32         [24] 1884 	mov	dptr,#_reeprom_seq_i_65536_55
      002D60 E0               [24] 1885 	movx	a,@dptr
      002D61 FC               [12] 1886 	mov	r4,a
      002D62 A3               [24] 1887 	inc	dptr
      002D63 E0               [24] 1888 	movx	a,@dptr
      002D64 FD               [12] 1889 	mov	r5,a
      002D65 C0 07            [24] 1890 	push	ar7
      002D67 C0 06            [24] 1891 	push	ar6
      002D69 C0 04            [24] 1892 	push	ar4
      002D6B C0 05            [24] 1893 	push	ar5
      002D6D 74 E6            [12] 1894 	mov	a,#___str_8
      002D6F C0 E0            [24] 1895 	push	acc
      002D71 74 40            [12] 1896 	mov	a,#(___str_8 >> 8)
      002D73 C0 E0            [24] 1897 	push	acc
      002D75 74 80            [12] 1898 	mov	a,#0x80
      002D77 C0 E0            [24] 1899 	push	acc
      002D79 12 34 A2         [24] 1900 	lcall	_printf
      002D7C E5 81            [12] 1901 	mov	a,sp
      002D7E 24 FB            [12] 1902 	add	a,#0xfb
      002D80 F5 81            [12] 1903 	mov	sp,a
      002D82 D0 06            [24] 1904 	pop	ar6
      002D84 D0 07            [24] 1905 	pop	ar7
      002D86 80 29            [24] 1906 	sjmp	00113$
      002D88                       1907 00107$:
                           000404  1908 	C$I2C_Functions.c$418$4_0$64 ==.
                                   1909 ;	I2C_Functions.c:418: printf("\n\r0x%x:",i);
      002D88 90 04 32         [24] 1910 	mov	dptr,#_reeprom_seq_i_65536_55
      002D8B E0               [24] 1911 	movx	a,@dptr
      002D8C FC               [12] 1912 	mov	r4,a
      002D8D A3               [24] 1913 	inc	dptr
      002D8E E0               [24] 1914 	movx	a,@dptr
      002D8F FD               [12] 1915 	mov	r5,a
      002D90 C0 07            [24] 1916 	push	ar7
      002D92 C0 06            [24] 1917 	push	ar6
      002D94 C0 04            [24] 1918 	push	ar4
      002D96 C0 05            [24] 1919 	push	ar5
      002D98 74 EF            [12] 1920 	mov	a,#___str_9
      002D9A C0 E0            [24] 1921 	push	acc
      002D9C 74 40            [12] 1922 	mov	a,#(___str_9 >> 8)
      002D9E C0 E0            [24] 1923 	push	acc
      002DA0 74 80            [12] 1924 	mov	a,#0x80
      002DA2 C0 E0            [24] 1925 	push	acc
      002DA4 12 34 A2         [24] 1926 	lcall	_printf
      002DA7 E5 81            [12] 1927 	mov	a,sp
      002DA9 24 FB            [12] 1928 	add	a,#0xfb
      002DAB F5 81            [12] 1929 	mov	sp,a
      002DAD D0 06            [24] 1930 	pop	ar6
      002DAF D0 07            [24] 1931 	pop	ar7
      002DB1                       1932 00113$:
                           00042D  1933 	C$I2C_Functions.c$421$2_0$56 ==.
                                   1934 ;	I2C_Functions.c:421: aux=in();
      002DB1 C0 07            [24] 1935 	push	ar7
      002DB3 C0 06            [24] 1936 	push	ar6
      002DB5 12 2A 81         [24] 1937 	lcall	_in
      002DB8 E5 82            [12] 1938 	mov	a,dpl
      002DBA 90 04 38         [24] 1939 	mov	dptr,#_reeprom_seq_aux_65536_55
      002DBD F0               [24] 1940 	movx	@dptr,a
                           00043A  1941 	C$I2C_Functions.c$422$2_0$56 ==.
                                   1942 ;	I2C_Functions.c:422: ack();
      002DBE 12 2B 03         [24] 1943 	lcall	_ack
                           00043D  1944 	C$I2C_Functions.c$423$2_0$56 ==.
                                   1945 ;	I2C_Functions.c:423: delay1();
      002DC1 12 2B 14         [24] 1946 	lcall	_delay1
      002DC4 D0 06            [24] 1947 	pop	ar6
      002DC6 D0 07            [24] 1948 	pop	ar7
                           000444  1949 	C$I2C_Functions.c$424$2_0$56 ==.
                                   1950 ;	I2C_Functions.c:424: if(aux<0x10)
      002DC8 90 04 38         [24] 1951 	mov	dptr,#_reeprom_seq_aux_65536_55
      002DCB E0               [24] 1952 	movx	a,@dptr
      002DCC FD               [12] 1953 	mov	r5,a
      002DCD BD 10 00         [24] 1954 	cjne	r5,#0x10,00174$
      002DD0                       1955 00174$:
      002DD0 50 2A            [24] 1956 	jnc	00115$
                           00044E  1957 	C$I2C_Functions.c$426$3_0$65 ==.
                                   1958 ;	I2C_Functions.c:426: printf("0%x  ",aux);
      002DD2 90 04 38         [24] 1959 	mov	dptr,#_reeprom_seq_aux_65536_55
      002DD5 E0               [24] 1960 	movx	a,@dptr
      002DD6 FD               [12] 1961 	mov	r5,a
      002DD7 7C 00            [12] 1962 	mov	r4,#0x00
      002DD9 C0 07            [24] 1963 	push	ar7
      002DDB C0 06            [24] 1964 	push	ar6
      002DDD C0 05            [24] 1965 	push	ar5
      002DDF C0 04            [24] 1966 	push	ar4
      002DE1 74 F7            [12] 1967 	mov	a,#___str_10
      002DE3 C0 E0            [24] 1968 	push	acc
      002DE5 74 40            [12] 1969 	mov	a,#(___str_10 >> 8)
      002DE7 C0 E0            [24] 1970 	push	acc
      002DE9 74 80            [12] 1971 	mov	a,#0x80
      002DEB C0 E0            [24] 1972 	push	acc
      002DED 12 34 A2         [24] 1973 	lcall	_printf
      002DF0 E5 81            [12] 1974 	mov	a,sp
      002DF2 24 FB            [12] 1975 	add	a,#0xfb
      002DF4 F5 81            [12] 1976 	mov	sp,a
      002DF6 D0 06            [24] 1977 	pop	ar6
      002DF8 D0 07            [24] 1978 	pop	ar7
      002DFA 80 28            [24] 1979 	sjmp	00116$
      002DFC                       1980 00115$:
                           000478  1981 	C$I2C_Functions.c$430$3_0$66 ==.
                                   1982 ;	I2C_Functions.c:430: printf("%x  ",aux);
      002DFC 90 04 38         [24] 1983 	mov	dptr,#_reeprom_seq_aux_65536_55
      002DFF E0               [24] 1984 	movx	a,@dptr
      002E00 FD               [12] 1985 	mov	r5,a
      002E01 7C 00            [12] 1986 	mov	r4,#0x00
      002E03 C0 07            [24] 1987 	push	ar7
      002E05 C0 06            [24] 1988 	push	ar6
      002E07 C0 05            [24] 1989 	push	ar5
      002E09 C0 04            [24] 1990 	push	ar4
      002E0B 74 FD            [12] 1991 	mov	a,#___str_11
      002E0D C0 E0            [24] 1992 	push	acc
      002E0F 74 40            [12] 1993 	mov	a,#(___str_11 >> 8)
      002E11 C0 E0            [24] 1994 	push	acc
      002E13 74 80            [12] 1995 	mov	a,#0x80
      002E15 C0 E0            [24] 1996 	push	acc
      002E17 12 34 A2         [24] 1997 	lcall	_printf
      002E1A E5 81            [12] 1998 	mov	a,sp
      002E1C 24 FB            [12] 1999 	add	a,#0xfb
      002E1E F5 81            [12] 2000 	mov	sp,a
      002E20 D0 06            [24] 2001 	pop	ar6
      002E22 D0 07            [24] 2002 	pop	ar7
      002E24                       2003 00116$:
                           0004A0  2004 	C$I2C_Functions.c$433$2_0$56 ==.
                                   2005 ;	I2C_Functions.c:433: i++;
      002E24 90 04 32         [24] 2006 	mov	dptr,#_reeprom_seq_i_65536_55
      002E27 E0               [24] 2007 	movx	a,@dptr
      002E28 FC               [12] 2008 	mov	r4,a
      002E29 A3               [24] 2009 	inc	dptr
      002E2A E0               [24] 2010 	movx	a,@dptr
      002E2B FD               [12] 2011 	mov	r5,a
      002E2C 90 04 32         [24] 2012 	mov	dptr,#_reeprom_seq_i_65536_55
      002E2F 74 01            [12] 2013 	mov	a,#0x01
      002E31 2C               [12] 2014 	add	a,r4
      002E32 F0               [24] 2015 	movx	@dptr,a
      002E33 E4               [12] 2016 	clr	a
      002E34 3D               [12] 2017 	addc	a,r5
      002E35 A3               [24] 2018 	inc	dptr
      002E36 F0               [24] 2019 	movx	@dptr,a
      002E37 02 2C 14         [24] 2020 	ljmp	00117$
      002E3A                       2021 00119$:
                           0004B6  2022 	C$I2C_Functions.c$435$1_0$55 ==.
                                   2023 ;	I2C_Functions.c:435: stop();
      002E3A 12 2A C0         [24] 2024 	lcall	_stop
                           0004B9  2025 	C$I2C_Functions.c$436$1_0$55 ==.
                                   2026 ;	I2C_Functions.c:436: }
                           0004B9  2027 	C$I2C_Functions.c$436$1_0$55 ==.
                           0004B9  2028 	XG$reeprom_seq$0$0 ==.
      002E3D 22               [24] 2029 	ret
                                   2030 ;------------------------------------------------------------
                                   2031 ;Allocation info for local variables in function 'dummy_read'
                                   2032 ;------------------------------------------------------------
                           0004BA  2033 	G$dummy_read$0$0 ==.
                           0004BA  2034 	C$I2C_Functions.c$437$1_0$67 ==.
                                   2035 ;	I2C_Functions.c:437: void dummy_read()
                                   2036 ;	-----------------------------------------
                                   2037 ;	 function dummy_read
                                   2038 ;	-----------------------------------------
      002E3E                       2039 _dummy_read:
                           0004BA  2040 	C$I2C_Functions.c$439$1_0$67 ==.
                                   2041 ;	I2C_Functions.c:439: reeprom(0x00,0x00);
      002E3E 90 04 25         [24] 2042 	mov	dptr,#_reeprom_PARM_2
      002E41 E4               [12] 2043 	clr	a
      002E42 F0               [24] 2044 	movx	@dptr,a
      002E43 75 82 00         [24] 2045 	mov	dpl,#0x00
      002E46 12 29 B4         [24] 2046 	lcall	_reeprom
                           0004C5  2047 	C$I2C_Functions.c$440$1_0$67 ==.
                                   2048 ;	I2C_Functions.c:440: }
                           0004C5  2049 	C$I2C_Functions.c$440$1_0$67 ==.
                           0004C5  2050 	XG$dummy_read$0$0 ==.
      002E49 22               [24] 2051 	ret
                                   2052 ;------------------------------------------------------------
                                   2053 ;Allocation info for local variables in function 'dummy_write'
                                   2054 ;------------------------------------------------------------
                                   2055 ;Address                   Allocated with name '_dummy_write_PARM_2'
                                   2056 ;block                     Allocated with name '_dummy_write_block_65536_68'
                                   2057 ;------------------------------------------------------------
                           0004C6  2058 	G$dummy_write$0$0 ==.
                           0004C6  2059 	C$I2C_Functions.c$441$1_0$69 ==.
                                   2060 ;	I2C_Functions.c:441: void dummy_write(uint16_t block,uint16_t Address)
                                   2061 ;	-----------------------------------------
                                   2062 ;	 function dummy_write
                                   2063 ;	-----------------------------------------
      002E4A                       2064 _dummy_write:
      002E4A AF 83            [24] 2065 	mov	r7,dph
      002E4C E5 82            [12] 2066 	mov	a,dpl
      002E4E 90 04 3C         [24] 2067 	mov	dptr,#_dummy_write_block_65536_68
      002E51 F0               [24] 2068 	movx	@dptr,a
      002E52 EF               [12] 2069 	mov	a,r7
      002E53 A3               [24] 2070 	inc	dptr
      002E54 F0               [24] 2071 	movx	@dptr,a
                           0004D1  2072 	C$I2C_Functions.c$443$1_0$69 ==.
                                   2073 ;	I2C_Functions.c:443: weeprom(block,Address,0x00);
      002E55 90 04 3C         [24] 2074 	mov	dptr,#_dummy_write_block_65536_68
      002E58 E0               [24] 2075 	movx	a,@dptr
      002E59 FE               [12] 2076 	mov	r6,a
      002E5A A3               [24] 2077 	inc	dptr
      002E5B E0               [24] 2078 	movx	a,@dptr
      002E5C 90 04 3A         [24] 2079 	mov	dptr,#_dummy_write_PARM_2
      002E5F E0               [24] 2080 	movx	a,@dptr
      002E60 FD               [12] 2081 	mov	r5,a
      002E61 A3               [24] 2082 	inc	dptr
      002E62 E0               [24] 2083 	movx	a,@dptr
      002E63 90 04 22         [24] 2084 	mov	dptr,#_weeprom_PARM_2
      002E66 ED               [12] 2085 	mov	a,r5
      002E67 F0               [24] 2086 	movx	@dptr,a
      002E68 90 04 23         [24] 2087 	mov	dptr,#_weeprom_PARM_3
      002E6B E4               [12] 2088 	clr	a
      002E6C F0               [24] 2089 	movx	@dptr,a
      002E6D 8E 82            [24] 2090 	mov	dpl,r6
      002E6F 12 29 84         [24] 2091 	lcall	_weeprom
                           0004EE  2092 	C$I2C_Functions.c$444$1_0$69 ==.
                                   2093 ;	I2C_Functions.c:444: }
                           0004EE  2094 	C$I2C_Functions.c$444$1_0$69 ==.
                           0004EE  2095 	XG$dummy_write$0$0 ==.
      002E72 22               [24] 2096 	ret
                                   2097 ;------------------------------------------------------------
                                   2098 ;Allocation info for local variables in function 'get_blocknumber'
                                   2099 ;------------------------------------------------------------
                                   2100 ;Add                       Allocated with name '_get_blocknumber_Add_65536_70'
                                   2101 ;------------------------------------------------------------
                           0004EF  2102 	G$get_blocknumber$0$0 ==.
                           0004EF  2103 	C$I2C_Functions.c$445$1_0$71 ==.
                                   2104 ;	I2C_Functions.c:445: uint8_t get_blocknumber(uint16_t Add)
                                   2105 ;	-----------------------------------------
                                   2106 ;	 function get_blocknumber
                                   2107 ;	-----------------------------------------
      002E73                       2108 _get_blocknumber:
      002E73 AF 83            [24] 2109 	mov	r7,dph
      002E75 E5 82            [12] 2110 	mov	a,dpl
      002E77 90 04 3E         [24] 2111 	mov	dptr,#_get_blocknumber_Add_65536_70
      002E7A F0               [24] 2112 	movx	@dptr,a
      002E7B EF               [12] 2113 	mov	a,r7
      002E7C A3               [24] 2114 	inc	dptr
      002E7D F0               [24] 2115 	movx	@dptr,a
                           0004FA  2116 	C$I2C_Functions.c$447$1_0$71 ==.
                                   2117 ;	I2C_Functions.c:447: if(Add<0x100)
      002E7E 90 04 3E         [24] 2118 	mov	dptr,#_get_blocknumber_Add_65536_70
      002E81 E0               [24] 2119 	movx	a,@dptr
      002E82 A3               [24] 2120 	inc	dptr
      002E83 E0               [24] 2121 	movx	a,@dptr
      002E84 FF               [12] 2122 	mov	r7,a
      002E85 C3               [12] 2123 	clr	c
      002E86 94 01            [12] 2124 	subb	a,#0x01
      002E88 50 05            [24] 2125 	jnc	00123$
                           000506  2126 	C$I2C_Functions.c$448$1_0$71 ==.
                                   2127 ;	I2C_Functions.c:448: return 0;
      002E8A 75 82 00         [24] 2128 	mov	dpl,#0x00
      002E8D 80 49            [24] 2129 	sjmp	00125$
      002E8F                       2130 00123$:
                           00050B  2131 	C$I2C_Functions.c$449$1_0$71 ==.
                                   2132 ;	I2C_Functions.c:449: else if(Add<0x200)
      002E8F 74 FE            [12] 2133 	mov	a,#0x100 - 0x02
      002E91 2F               [12] 2134 	add	a,r7
      002E92 40 05            [24] 2135 	jc	00120$
                           000510  2136 	C$I2C_Functions.c$450$1_0$71 ==.
                                   2137 ;	I2C_Functions.c:450: return 1;
      002E94 75 82 01         [24] 2138 	mov	dpl,#0x01
      002E97 80 3F            [24] 2139 	sjmp	00125$
      002E99                       2140 00120$:
                           000515  2141 	C$I2C_Functions.c$451$1_0$71 ==.
                                   2142 ;	I2C_Functions.c:451: else if(Add<0x300)
      002E99 74 FD            [12] 2143 	mov	a,#0x100 - 0x03
      002E9B 2F               [12] 2144 	add	a,r7
      002E9C 40 05            [24] 2145 	jc	00117$
                           00051A  2146 	C$I2C_Functions.c$452$1_0$71 ==.
                                   2147 ;	I2C_Functions.c:452: return 2;
      002E9E 75 82 02         [24] 2148 	mov	dpl,#0x02
      002EA1 80 35            [24] 2149 	sjmp	00125$
      002EA3                       2150 00117$:
                           00051F  2151 	C$I2C_Functions.c$453$1_0$71 ==.
                                   2152 ;	I2C_Functions.c:453: else if(Add<0x400)
      002EA3 74 FC            [12] 2153 	mov	a,#0x100 - 0x04
      002EA5 2F               [12] 2154 	add	a,r7
      002EA6 40 05            [24] 2155 	jc	00114$
                           000524  2156 	C$I2C_Functions.c$454$1_0$71 ==.
                                   2157 ;	I2C_Functions.c:454: return 3;
      002EA8 75 82 03         [24] 2158 	mov	dpl,#0x03
      002EAB 80 2B            [24] 2159 	sjmp	00125$
      002EAD                       2160 00114$:
                           000529  2161 	C$I2C_Functions.c$455$1_0$71 ==.
                                   2162 ;	I2C_Functions.c:455: else if(Add<0x500)
      002EAD 74 FB            [12] 2163 	mov	a,#0x100 - 0x05
      002EAF 2F               [12] 2164 	add	a,r7
      002EB0 40 05            [24] 2165 	jc	00111$
                           00052E  2166 	C$I2C_Functions.c$456$1_0$71 ==.
                                   2167 ;	I2C_Functions.c:456: return 4;
      002EB2 75 82 04         [24] 2168 	mov	dpl,#0x04
      002EB5 80 21            [24] 2169 	sjmp	00125$
      002EB7                       2170 00111$:
                           000533  2171 	C$I2C_Functions.c$457$1_0$71 ==.
                                   2172 ;	I2C_Functions.c:457: else if(Add<0x600)
      002EB7 74 FA            [12] 2173 	mov	a,#0x100 - 0x06
      002EB9 2F               [12] 2174 	add	a,r7
      002EBA 40 05            [24] 2175 	jc	00108$
                           000538  2176 	C$I2C_Functions.c$458$1_0$71 ==.
                                   2177 ;	I2C_Functions.c:458: return 5;
      002EBC 75 82 05         [24] 2178 	mov	dpl,#0x05
      002EBF 80 17            [24] 2179 	sjmp	00125$
      002EC1                       2180 00108$:
                           00053D  2181 	C$I2C_Functions.c$459$1_0$71 ==.
                                   2182 ;	I2C_Functions.c:459: else if(Add<0x700)
      002EC1 74 F9            [12] 2183 	mov	a,#0x100 - 0x07
      002EC3 2F               [12] 2184 	add	a,r7
      002EC4 40 05            [24] 2185 	jc	00105$
                           000542  2186 	C$I2C_Functions.c$460$1_0$71 ==.
                                   2187 ;	I2C_Functions.c:460: return 6;
      002EC6 75 82 06         [24] 2188 	mov	dpl,#0x06
      002EC9 80 0D            [24] 2189 	sjmp	00125$
      002ECB                       2190 00105$:
                           000547  2191 	C$I2C_Functions.c$461$1_0$71 ==.
                                   2192 ;	I2C_Functions.c:461: else if(Add<0x800)
      002ECB 74 F8            [12] 2193 	mov	a,#0x100 - 0x08
      002ECD 2F               [12] 2194 	add	a,r7
      002ECE 40 05            [24] 2195 	jc	00102$
                           00054C  2196 	C$I2C_Functions.c$462$1_0$71 ==.
                                   2197 ;	I2C_Functions.c:462: return 7;
      002ED0 75 82 07         [24] 2198 	mov	dpl,#0x07
      002ED3 80 03            [24] 2199 	sjmp	00125$
      002ED5                       2200 00102$:
                           000551  2201 	C$I2C_Functions.c$464$1_0$71 ==.
                                   2202 ;	I2C_Functions.c:464: return 8;
      002ED5 75 82 08         [24] 2203 	mov	dpl,#0x08
      002ED8                       2204 00125$:
                           000554  2205 	C$I2C_Functions.c$465$1_0$71 ==.
                                   2206 ;	I2C_Functions.c:465: }
                           000554  2207 	C$I2C_Functions.c$465$1_0$71 ==.
                           000554  2208 	XG$get_blocknumber$0$0 ==.
      002ED8 22               [24] 2209 	ret
                                   2210 	.area CSEG    (CODE)
                                   2211 	.area CONST   (CODE)
                           000000  2212 FI2C_Functions$__str_0$0_0$0 == .
                                   2213 	.area CONST   (CODE)
      00400C                       2214 ___str_0:
      00400C 0A                    2215 	.db 0x0a
      00400D 0D                    2216 	.db 0x0d
      00400E 20 20 20 20           2217 	.ascii "    "
      004012 00                    2218 	.db 0x00
                                   2219 	.area CSEG    (CODE)
                           000555  2220 FI2C_Functions$__str_1$0_0$0 == .
                                   2221 	.area CONST   (CODE)
      004013                       2222 ___str_1:
      004013 0A                    2223 	.db 0x0a
      004014 0D                    2224 	.db 0x0d
      004015 2A 2A 2A 2A 2A 2A 2A  2225 	.ascii "************************************************************"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A
      004051 2A 2A 2A 2A 2A 2A 2A  2226 	.ascii "********"
             2A
      004059 00                    2227 	.db 0x00
                                   2228 	.area CSEG    (CODE)
                           000555  2229 FI2C_Functions$__str_2$0_0$0 == .
                                   2230 	.area CONST   (CODE)
      00405A                       2231 ___str_2:
      00405A 0A                    2232 	.db 0x0a
      00405B 0D                    2233 	.db 0x0d
      00405C 41 64 64 72           2234 	.ascii "Addr"
      004060 00                    2235 	.db 0x00
                                   2236 	.area CSEG    (CODE)
                           000555  2237 FI2C_Functions$__str_3$0_0$0 == .
                                   2238 	.area CONST   (CODE)
      004061                       2239 ___str_3:
      004061 20 20 20 20 20 20 20  2240 	.ascii "                               DATA"
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 20 20 20 20
             20 20 20 44 41 54 41
      004084 00                    2241 	.db 0x00
                                   2242 	.area CSEG    (CODE)
                           000555  2243 FI2C_Functions$__str_4$0_0$0 == .
                                   2244 	.area CONST   (CODE)
      004085                       2245 ___str_4:
      004085 0A                    2246 	.db 0x0a
      004086 0D                    2247 	.db 0x0d
      004087 2A 2A 2A 2A 2A 2A 2A  2248 	.ascii "************************************************************"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A 2A 2A 2A
             2A 2A 2A 2A
      0040C3 2A 2A 2A 2A 2A 2A 2A  2249 	.ascii "********"
             2A
      0040CB 0A                    2250 	.db 0x0a
      0040CC 0D                    2251 	.db 0x0d
      0040CD 00                    2252 	.db 0x00
                                   2253 	.area CSEG    (CODE)
                           000555  2254 FI2C_Functions$__str_5$0_0$0 == .
                                   2255 	.area CONST   (CODE)
      0040CE                       2256 ___str_5:
      0040CE 20 20 20 20 20 20 20  2257 	.ascii "       "
      0040D5 00                    2258 	.db 0x00
                                   2259 	.area CSEG    (CODE)
                           000555  2260 FI2C_Functions$__str_6$0_0$0 == .
                                   2261 	.area CONST   (CODE)
      0040D6                       2262 ___str_6:
      0040D6 25 78 20 20 20        2263 	.ascii "%x   "
      0040DB 00                    2264 	.db 0x00
                                   2265 	.area CSEG    (CODE)
                           000555  2266 FI2C_Functions$__str_7$0_0$0 == .
                                   2267 	.area CONST   (CODE)
      0040DC                       2268 ___str_7:
      0040DC 0A                    2269 	.db 0x0a
      0040DD 0D                    2270 	.db 0x0d
      0040DE 30 78 30 30 25 78 3A  2271 	.ascii "0x00%x:"
      0040E5 00                    2272 	.db 0x00
                                   2273 	.area CSEG    (CODE)
                           000555  2274 FI2C_Functions$__str_8$0_0$0 == .
                                   2275 	.area CONST   (CODE)
      0040E6                       2276 ___str_8:
      0040E6 0A                    2277 	.db 0x0a
      0040E7 0D                    2278 	.db 0x0d
      0040E8 30 78 30 25 78 3A     2279 	.ascii "0x0%x:"
      0040EE 00                    2280 	.db 0x00
                                   2281 	.area CSEG    (CODE)
                           000555  2282 FI2C_Functions$__str_9$0_0$0 == .
                                   2283 	.area CONST   (CODE)
      0040EF                       2284 ___str_9:
      0040EF 0A                    2285 	.db 0x0a
      0040F0 0D                    2286 	.db 0x0d
      0040F1 30 78 25 78 3A        2287 	.ascii "0x%x:"
      0040F6 00                    2288 	.db 0x00
                                   2289 	.area CSEG    (CODE)
                           000555  2290 FI2C_Functions$__str_10$0_0$0 == .
                                   2291 	.area CONST   (CODE)
      0040F7                       2292 ___str_10:
      0040F7 30 25 78 20 20        2293 	.ascii "0%x  "
      0040FC 00                    2294 	.db 0x00
                                   2295 	.area CSEG    (CODE)
                           000555  2296 FI2C_Functions$__str_11$0_0$0 == .
                                   2297 	.area CONST   (CODE)
      0040FD                       2298 ___str_11:
      0040FD 25 78 20 20           2299 	.ascii "%x  "
      004101 00                    2300 	.db 0x00
                                   2301 	.area CSEG    (CODE)
                                   2302 	.area XINIT   (CODE)
                                   2303 	.area CABS    (ABS,CODE)
