;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.0 #11195 (MINGW64)
;--------------------------------------------------------
	.module Function
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _get_block
	.globl _getstr_data
	.globl _getstr_addr
	.globl _strtola
	.globl _delay
	.globl _printf_tiny
	.globl _P5_7
	.globl _P5_6
	.globl _P5_5
	.globl _P5_4
	.globl _P5_3
	.globl _P5_2
	.globl _P5_1
	.globl _P5_0
	.globl _P4_7
	.globl _P4_6
	.globl _P4_5
	.globl _P4_4
	.globl _P4_3
	.globl _P4_2
	.globl _P4_1
	.globl _P4_0
	.globl _PX0L
	.globl _PT0L
	.globl _PX1L
	.globl _PT1L
	.globl _PSL
	.globl _PT2L
	.globl _PPCL
	.globl _EC
	.globl _CCF0
	.globl _CCF1
	.globl _CCF2
	.globl _CCF3
	.globl _CCF4
	.globl _CR
	.globl _CF
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _ET2
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _EECON
	.globl _KBF
	.globl _KBE
	.globl _KBLS
	.globl _BRL
	.globl _BDRCON
	.globl _T2MOD
	.globl _SPDAT
	.globl _SPSTA
	.globl _SPCON
	.globl _SADEN
	.globl _SADDR
	.globl _WDTPRG
	.globl _WDTRST
	.globl _P5
	.globl _P4
	.globl _IPH1
	.globl _IPL1
	.globl _IPH0
	.globl _IPL0
	.globl _IEN1
	.globl _IEN0
	.globl _CMOD
	.globl _CL
	.globl _CH
	.globl _CCON
	.globl _CCAPM4
	.globl _CCAPM3
	.globl _CCAPM2
	.globl _CCAPM1
	.globl _CCAPM0
	.globl _CCAP4L
	.globl _CCAP3L
	.globl _CCAP2L
	.globl _CCAP1L
	.globl _CCAP0L
	.globl _CCAP4H
	.globl _CCAP3H
	.globl _CCAP2H
	.globl _CCAP1H
	.globl _CCAP0H
	.globl _CKCON1
	.globl _CKCON0
	.globl _CKRL
	.globl _AUXR1
	.globl _AUXR
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2CON
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _page
	.globl _block
	.globl _putchar
	.globl _getchar
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$P0$0_0$0 == 0x0080
_P0	=	0x0080
G$SP$0_0$0 == 0x0081
_SP	=	0x0081
G$DPL$0_0$0 == 0x0082
_DPL	=	0x0082
G$DPH$0_0$0 == 0x0083
_DPH	=	0x0083
G$PCON$0_0$0 == 0x0087
_PCON	=	0x0087
G$TCON$0_0$0 == 0x0088
_TCON	=	0x0088
G$TMOD$0_0$0 == 0x0089
_TMOD	=	0x0089
G$TL0$0_0$0 == 0x008a
_TL0	=	0x008a
G$TL1$0_0$0 == 0x008b
_TL1	=	0x008b
G$TH0$0_0$0 == 0x008c
_TH0	=	0x008c
G$TH1$0_0$0 == 0x008d
_TH1	=	0x008d
G$P1$0_0$0 == 0x0090
_P1	=	0x0090
G$SCON$0_0$0 == 0x0098
_SCON	=	0x0098
G$SBUF$0_0$0 == 0x0099
_SBUF	=	0x0099
G$P2$0_0$0 == 0x00a0
_P2	=	0x00a0
G$IE$0_0$0 == 0x00a8
_IE	=	0x00a8
G$P3$0_0$0 == 0x00b0
_P3	=	0x00b0
G$IP$0_0$0 == 0x00b8
_IP	=	0x00b8
G$PSW$0_0$0 == 0x00d0
_PSW	=	0x00d0
G$ACC$0_0$0 == 0x00e0
_ACC	=	0x00e0
G$B$0_0$0 == 0x00f0
_B	=	0x00f0
G$T2CON$0_0$0 == 0x00c8
_T2CON	=	0x00c8
G$RCAP2L$0_0$0 == 0x00ca
_RCAP2L	=	0x00ca
G$RCAP2H$0_0$0 == 0x00cb
_RCAP2H	=	0x00cb
G$TL2$0_0$0 == 0x00cc
_TL2	=	0x00cc
G$TH2$0_0$0 == 0x00cd
_TH2	=	0x00cd
G$AUXR$0_0$0 == 0x008e
_AUXR	=	0x008e
G$AUXR1$0_0$0 == 0x00a2
_AUXR1	=	0x00a2
G$CKRL$0_0$0 == 0x0097
_CKRL	=	0x0097
G$CKCON0$0_0$0 == 0x008f
_CKCON0	=	0x008f
G$CKCON1$0_0$0 == 0x00af
_CKCON1	=	0x00af
G$CCAP0H$0_0$0 == 0x00fa
_CCAP0H	=	0x00fa
G$CCAP1H$0_0$0 == 0x00fb
_CCAP1H	=	0x00fb
G$CCAP2H$0_0$0 == 0x00fc
_CCAP2H	=	0x00fc
G$CCAP3H$0_0$0 == 0x00fd
_CCAP3H	=	0x00fd
G$CCAP4H$0_0$0 == 0x00fe
_CCAP4H	=	0x00fe
G$CCAP0L$0_0$0 == 0x00ea
_CCAP0L	=	0x00ea
G$CCAP1L$0_0$0 == 0x00eb
_CCAP1L	=	0x00eb
G$CCAP2L$0_0$0 == 0x00ec
_CCAP2L	=	0x00ec
G$CCAP3L$0_0$0 == 0x00ed
_CCAP3L	=	0x00ed
G$CCAP4L$0_0$0 == 0x00ee
_CCAP4L	=	0x00ee
G$CCAPM0$0_0$0 == 0x00da
_CCAPM0	=	0x00da
G$CCAPM1$0_0$0 == 0x00db
_CCAPM1	=	0x00db
G$CCAPM2$0_0$0 == 0x00dc
_CCAPM2	=	0x00dc
G$CCAPM3$0_0$0 == 0x00dd
_CCAPM3	=	0x00dd
G$CCAPM4$0_0$0 == 0x00de
_CCAPM4	=	0x00de
G$CCON$0_0$0 == 0x00d8
_CCON	=	0x00d8
G$CH$0_0$0 == 0x00f9
_CH	=	0x00f9
G$CL$0_0$0 == 0x00e9
_CL	=	0x00e9
G$CMOD$0_0$0 == 0x00d9
_CMOD	=	0x00d9
G$IEN0$0_0$0 == 0x00a8
_IEN0	=	0x00a8
G$IEN1$0_0$0 == 0x00b1
_IEN1	=	0x00b1
G$IPL0$0_0$0 == 0x00b8
_IPL0	=	0x00b8
G$IPH0$0_0$0 == 0x00b7
_IPH0	=	0x00b7
G$IPL1$0_0$0 == 0x00b2
_IPL1	=	0x00b2
G$IPH1$0_0$0 == 0x00b3
_IPH1	=	0x00b3
G$P4$0_0$0 == 0x00c0
_P4	=	0x00c0
G$P5$0_0$0 == 0x00e8
_P5	=	0x00e8
G$WDTRST$0_0$0 == 0x00a6
_WDTRST	=	0x00a6
G$WDTPRG$0_0$0 == 0x00a7
_WDTPRG	=	0x00a7
G$SADDR$0_0$0 == 0x00a9
_SADDR	=	0x00a9
G$SADEN$0_0$0 == 0x00b9
_SADEN	=	0x00b9
G$SPCON$0_0$0 == 0x00c3
_SPCON	=	0x00c3
G$SPSTA$0_0$0 == 0x00c4
_SPSTA	=	0x00c4
G$SPDAT$0_0$0 == 0x00c5
_SPDAT	=	0x00c5
G$T2MOD$0_0$0 == 0x00c9
_T2MOD	=	0x00c9
G$BDRCON$0_0$0 == 0x009b
_BDRCON	=	0x009b
G$BRL$0_0$0 == 0x009a
_BRL	=	0x009a
G$KBLS$0_0$0 == 0x009c
_KBLS	=	0x009c
G$KBE$0_0$0 == 0x009d
_KBE	=	0x009d
G$KBF$0_0$0 == 0x009e
_KBF	=	0x009e
G$EECON$0_0$0 == 0x00d2
_EECON	=	0x00d2
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$P0_0$0_0$0 == 0x0080
_P0_0	=	0x0080
G$P0_1$0_0$0 == 0x0081
_P0_1	=	0x0081
G$P0_2$0_0$0 == 0x0082
_P0_2	=	0x0082
G$P0_3$0_0$0 == 0x0083
_P0_3	=	0x0083
G$P0_4$0_0$0 == 0x0084
_P0_4	=	0x0084
G$P0_5$0_0$0 == 0x0085
_P0_5	=	0x0085
G$P0_6$0_0$0 == 0x0086
_P0_6	=	0x0086
G$P0_7$0_0$0 == 0x0087
_P0_7	=	0x0087
G$IT0$0_0$0 == 0x0088
_IT0	=	0x0088
G$IE0$0_0$0 == 0x0089
_IE0	=	0x0089
G$IT1$0_0$0 == 0x008a
_IT1	=	0x008a
G$IE1$0_0$0 == 0x008b
_IE1	=	0x008b
G$TR0$0_0$0 == 0x008c
_TR0	=	0x008c
G$TF0$0_0$0 == 0x008d
_TF0	=	0x008d
G$TR1$0_0$0 == 0x008e
_TR1	=	0x008e
G$TF1$0_0$0 == 0x008f
_TF1	=	0x008f
G$P1_0$0_0$0 == 0x0090
_P1_0	=	0x0090
G$P1_1$0_0$0 == 0x0091
_P1_1	=	0x0091
G$P1_2$0_0$0 == 0x0092
_P1_2	=	0x0092
G$P1_3$0_0$0 == 0x0093
_P1_3	=	0x0093
G$P1_4$0_0$0 == 0x0094
_P1_4	=	0x0094
G$P1_5$0_0$0 == 0x0095
_P1_5	=	0x0095
G$P1_6$0_0$0 == 0x0096
_P1_6	=	0x0096
G$P1_7$0_0$0 == 0x0097
_P1_7	=	0x0097
G$RI$0_0$0 == 0x0098
_RI	=	0x0098
G$TI$0_0$0 == 0x0099
_TI	=	0x0099
G$RB8$0_0$0 == 0x009a
_RB8	=	0x009a
G$TB8$0_0$0 == 0x009b
_TB8	=	0x009b
G$REN$0_0$0 == 0x009c
_REN	=	0x009c
G$SM2$0_0$0 == 0x009d
_SM2	=	0x009d
G$SM1$0_0$0 == 0x009e
_SM1	=	0x009e
G$SM0$0_0$0 == 0x009f
_SM0	=	0x009f
G$P2_0$0_0$0 == 0x00a0
_P2_0	=	0x00a0
G$P2_1$0_0$0 == 0x00a1
_P2_1	=	0x00a1
G$P2_2$0_0$0 == 0x00a2
_P2_2	=	0x00a2
G$P2_3$0_0$0 == 0x00a3
_P2_3	=	0x00a3
G$P2_4$0_0$0 == 0x00a4
_P2_4	=	0x00a4
G$P2_5$0_0$0 == 0x00a5
_P2_5	=	0x00a5
G$P2_6$0_0$0 == 0x00a6
_P2_6	=	0x00a6
G$P2_7$0_0$0 == 0x00a7
_P2_7	=	0x00a7
G$EX0$0_0$0 == 0x00a8
_EX0	=	0x00a8
G$ET0$0_0$0 == 0x00a9
_ET0	=	0x00a9
G$EX1$0_0$0 == 0x00aa
_EX1	=	0x00aa
G$ET1$0_0$0 == 0x00ab
_ET1	=	0x00ab
G$ES$0_0$0 == 0x00ac
_ES	=	0x00ac
G$EA$0_0$0 == 0x00af
_EA	=	0x00af
G$P3_0$0_0$0 == 0x00b0
_P3_0	=	0x00b0
G$P3_1$0_0$0 == 0x00b1
_P3_1	=	0x00b1
G$P3_2$0_0$0 == 0x00b2
_P3_2	=	0x00b2
G$P3_3$0_0$0 == 0x00b3
_P3_3	=	0x00b3
G$P3_4$0_0$0 == 0x00b4
_P3_4	=	0x00b4
G$P3_5$0_0$0 == 0x00b5
_P3_5	=	0x00b5
G$P3_6$0_0$0 == 0x00b6
_P3_6	=	0x00b6
G$P3_7$0_0$0 == 0x00b7
_P3_7	=	0x00b7
G$RXD$0_0$0 == 0x00b0
_RXD	=	0x00b0
G$TXD$0_0$0 == 0x00b1
_TXD	=	0x00b1
G$INT0$0_0$0 == 0x00b2
_INT0	=	0x00b2
G$INT1$0_0$0 == 0x00b3
_INT1	=	0x00b3
G$T0$0_0$0 == 0x00b4
_T0	=	0x00b4
G$T1$0_0$0 == 0x00b5
_T1	=	0x00b5
G$WR$0_0$0 == 0x00b6
_WR	=	0x00b6
G$RD$0_0$0 == 0x00b7
_RD	=	0x00b7
G$PX0$0_0$0 == 0x00b8
_PX0	=	0x00b8
G$PT0$0_0$0 == 0x00b9
_PT0	=	0x00b9
G$PX1$0_0$0 == 0x00ba
_PX1	=	0x00ba
G$PT1$0_0$0 == 0x00bb
_PT1	=	0x00bb
G$PS$0_0$0 == 0x00bc
_PS	=	0x00bc
G$P$0_0$0 == 0x00d0
_P	=	0x00d0
G$F1$0_0$0 == 0x00d1
_F1	=	0x00d1
G$OV$0_0$0 == 0x00d2
_OV	=	0x00d2
G$RS0$0_0$0 == 0x00d3
_RS0	=	0x00d3
G$RS1$0_0$0 == 0x00d4
_RS1	=	0x00d4
G$F0$0_0$0 == 0x00d5
_F0	=	0x00d5
G$AC$0_0$0 == 0x00d6
_AC	=	0x00d6
G$CY$0_0$0 == 0x00d7
_CY	=	0x00d7
G$ET2$0_0$0 == 0x00ad
_ET2	=	0x00ad
G$PT2$0_0$0 == 0x00bd
_PT2	=	0x00bd
G$T2CON_0$0_0$0 == 0x00c8
_T2CON_0	=	0x00c8
G$T2CON_1$0_0$0 == 0x00c9
_T2CON_1	=	0x00c9
G$T2CON_2$0_0$0 == 0x00ca
_T2CON_2	=	0x00ca
G$T2CON_3$0_0$0 == 0x00cb
_T2CON_3	=	0x00cb
G$T2CON_4$0_0$0 == 0x00cc
_T2CON_4	=	0x00cc
G$T2CON_5$0_0$0 == 0x00cd
_T2CON_5	=	0x00cd
G$T2CON_6$0_0$0 == 0x00ce
_T2CON_6	=	0x00ce
G$T2CON_7$0_0$0 == 0x00cf
_T2CON_7	=	0x00cf
G$CP_RL2$0_0$0 == 0x00c8
_CP_RL2	=	0x00c8
G$C_T2$0_0$0 == 0x00c9
_C_T2	=	0x00c9
G$TR2$0_0$0 == 0x00ca
_TR2	=	0x00ca
G$EXEN2$0_0$0 == 0x00cb
_EXEN2	=	0x00cb
G$TCLK$0_0$0 == 0x00cc
_TCLK	=	0x00cc
G$RCLK$0_0$0 == 0x00cd
_RCLK	=	0x00cd
G$EXF2$0_0$0 == 0x00ce
_EXF2	=	0x00ce
G$TF2$0_0$0 == 0x00cf
_TF2	=	0x00cf
G$CF$0_0$0 == 0x00df
_CF	=	0x00df
G$CR$0_0$0 == 0x00de
_CR	=	0x00de
G$CCF4$0_0$0 == 0x00dc
_CCF4	=	0x00dc
G$CCF3$0_0$0 == 0x00db
_CCF3	=	0x00db
G$CCF2$0_0$0 == 0x00da
_CCF2	=	0x00da
G$CCF1$0_0$0 == 0x00d9
_CCF1	=	0x00d9
G$CCF0$0_0$0 == 0x00d8
_CCF0	=	0x00d8
G$EC$0_0$0 == 0x00ae
_EC	=	0x00ae
G$PPCL$0_0$0 == 0x00be
_PPCL	=	0x00be
G$PT2L$0_0$0 == 0x00bd
_PT2L	=	0x00bd
G$PSL$0_0$0 == 0x00bc
_PSL	=	0x00bc
G$PT1L$0_0$0 == 0x00bb
_PT1L	=	0x00bb
G$PX1L$0_0$0 == 0x00ba
_PX1L	=	0x00ba
G$PT0L$0_0$0 == 0x00b9
_PT0L	=	0x00b9
G$PX0L$0_0$0 == 0x00b8
_PX0L	=	0x00b8
G$P4_0$0_0$0 == 0x00c0
_P4_0	=	0x00c0
G$P4_1$0_0$0 == 0x00c1
_P4_1	=	0x00c1
G$P4_2$0_0$0 == 0x00c2
_P4_2	=	0x00c2
G$P4_3$0_0$0 == 0x00c3
_P4_3	=	0x00c3
G$P4_4$0_0$0 == 0x00c4
_P4_4	=	0x00c4
G$P4_5$0_0$0 == 0x00c5
_P4_5	=	0x00c5
G$P4_6$0_0$0 == 0x00c6
_P4_6	=	0x00c6
G$P4_7$0_0$0 == 0x00c7
_P4_7	=	0x00c7
G$P5_0$0_0$0 == 0x00e8
_P5_0	=	0x00e8
G$P5_1$0_0$0 == 0x00e9
_P5_1	=	0x00e9
G$P5_2$0_0$0 == 0x00ea
_P5_2	=	0x00ea
G$P5_3$0_0$0 == 0x00eb
_P5_3	=	0x00eb
G$P5_4$0_0$0 == 0x00ec
_P5_4	=	0x00ec
G$P5_5$0_0$0 == 0x00ed
_P5_5	=	0x00ed
G$P5_6$0_0$0 == 0x00ee
_P5_6	=	0x00ee
G$P5_7$0_0$0 == 0x00ef
_P5_7	=	0x00ef
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
LFunction.strtola$sloc0$0_1$0==.
_strtola_sloc0_1_0:
	.ds 2
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
G$block$0_0$0==.
_block::
	.ds 1
G$page$0_0$0==.
_page::
	.ds 1
LFunction.strtola$q$1_0$27==.
_strtola_q_65536_27:
	.ds 3
LFunction.strtola$i$1_0$28==.
_strtola_i_65536_28:
	.ds 1
LFunction.strtola$a$1_0$28==.
_strtola_a_65536_28:
	.ds 1
LFunction.putchar$c$1_0$36==.
_putchar_c_65536_36:
	.ds 2
LFunction.getstr_addr$buffer_char$1_0$39==.
_getstr_addr_buffer_char_65536_39:
	.ds 10
LFunction.getstr_addr$i$1_0$39==.
_getstr_addr_i_65536_39:
	.ds 2
LFunction.getstr_addr$comp$1_0$39==.
_getstr_addr_comp_65536_39:
	.ds 1
LFunction.getstr_data$buffer_char$1_0$54==.
_getstr_data_buffer_char_65536_54:
	.ds 10
LFunction.getstr_data$i$1_0$54==.
_getstr_data_i_65536_54:
	.ds 2
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;i                         Allocated with name '_delay_i_65536_25'
;------------------------------------------------------------
	G$delay$0$0 ==.
	C$Function.c$8$0_0$25 ==.
;	Function.c:8: void delay()
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$Function.c$10$1_0$25 ==.
;	Function.c:10: while(i!=1000)
	mov	r6,#0x00
	mov	r7,#0x00
00101$:
	cjne	r6,#0xe8,00115$
	cjne	r7,#0x03,00115$
	sjmp	00104$
00115$:
	C$Function.c$12$2_0$26 ==.
;	Function.c:12: ++i;
	inc	r6
	cjne	r6,#0x00,00101$
	inc	r7
	sjmp	00101$
00104$:
	C$Function.c$14$1_0$25 ==.
;	Function.c:14: }
	C$Function.c$14$1_0$25 ==.
	XG$delay$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'strtola'
;------------------------------------------------------------
;q                         Allocated with name '_strtola_q_65536_27'
;i                         Allocated with name '_strtola_i_65536_28'
;a                         Allocated with name '_strtola_a_65536_28'
;res                       Allocated to registers r6 r7 
;sloc0                     Allocated with name '_strtola_sloc0_1_0'
;------------------------------------------------------------
	G$strtola$0$0 ==.
	C$Function.c$15$1_0$28 ==.
;	Function.c:15: uint16_t strtola(int *q)
;	-----------------------------------------
;	 function strtola
;	-----------------------------------------
_strtola:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_strtola_q_65536_27
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$Function.c$16$2_0$28 ==.
;	Function.c:16: {   volatile uint8_t i=0,a;
	mov	dptr,#_strtola_i_65536_28
	clr	a
	movx	@dptr,a
	C$Function.c$17$2_0$28 ==.
;	Function.c:17: __data uint16_t res=0;
	mov	r6,#0x00
	mov	r7,#0x00
	C$Function.c$18$1_0$28 ==.
;	Function.c:18: page=0;
	mov	dptr,#_page
	movx	@dptr,a
	C$Function.c$19$1_0$28 ==.
;	Function.c:19: do
	mov	dptr,#_strtola_q_65536_27
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
00117$:
	C$Function.c$20$2_0$29 ==.
;	Function.c:20: {   if(*q>='A' && *q <='F')
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	clr	c
	mov	a,r1
	subb	a,#0x41
	mov	a,r2
	xrl	a,#0x80
	subb	a,#0x80
	jc	00110$
	mov	a,#0x46
	subb	a,r1
	mov	a,#(0x00 ^ 0x80)
	mov	b,r2
	xrl	b,#0x80
	subb	a,b
	jc	00110$
	C$Function.c$22$3_0$30 ==.
;	Function.c:22: a=*q-55;
	mov	a,r1
	add	a,#0xc9
	mov	dptr,#_strtola_a_65536_28
	movx	@dptr,a
	sjmp	00111$
00110$:
	C$Function.c$24$2_0$29 ==.
;	Function.c:24: else if(*q>='a' && *q<='f')
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	clr	c
	mov	a,r1
	subb	a,#0x61
	mov	a,r2
	xrl	a,#0x80
	subb	a,#0x80
	jc	00106$
	mov	a,#0x66
	subb	a,r1
	mov	a,#(0x00 ^ 0x80)
	mov	b,r2
	xrl	b,#0x80
	subb	a,b
	jc	00106$
	C$Function.c$26$3_0$31 ==.
;	Function.c:26: a=*q-87;
	mov	a,r1
	add	a,#0xa9
	mov	dptr,#_strtola_a_65536_28
	movx	@dptr,a
	sjmp	00111$
00106$:
	C$Function.c$28$2_0$29 ==.
;	Function.c:28: else if(*q>='0' && *q<='9')
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	clr	c
	mov	a,r1
	subb	a,#0x30
	mov	a,r2
	xrl	a,#0x80
	subb	a,#0x80
	jc	00102$
	mov	a,#0x39
	subb	a,r1
	mov	a,#(0x00 ^ 0x80)
	mov	b,r2
	xrl	b,#0x80
	subb	a,b
	jc	00102$
	C$Function.c$30$3_0$32 ==.
;	Function.c:30: a=*q-'0';
	mov	a,r1
	add	a,#0xd0
	mov	dptr,#_strtola_a_65536_28
	movx	@dptr,a
	sjmp	00111$
00102$:
	C$Function.c$34$3_0$33 ==.
;	Function.c:34: a=0;
	mov	dptr,#_strtola_a_65536_28
	clr	a
	movx	@dptr,a
00111$:
	C$Function.c$36$2_0$29 ==.
;	Function.c:36: if(i==0)
	mov	dptr,#_strtola_i_65536_28
	movx	a,@dptr
	jnz	00114$
	C$Function.c$38$3_0$34 ==.
;	Function.c:38: block=a;
	mov	dptr,#_strtola_a_65536_28
	movx	a,@dptr
	mov	dptr,#_block
	movx	@dptr,a
00114$:
	C$Function.c$40$2_0$29 ==.
;	Function.c:40: if(i>0)
	mov	dptr,#_strtola_i_65536_28
	movx	a,@dptr
	jz	00116$
	C$Function.c$42$3_0$35 ==.
;	Function.c:42: page=(page*16)+a;
	mov	dptr,#_page
	movx	a,@dptr
	swap	a
	anl	a,#0xf0
	mov	r2,a
	mov	dptr,#_strtola_a_65536_28
	movx	a,@dptr
	mov	r1,a
	mov	dptr,#_page
	add	a,r2
	movx	@dptr,a
00116$:
	C$Function.c$45$2_0$29 ==.
;	Function.c:45: res=(res*16)+a;   // Logic from C99 basic itoa function
	mov	_strtola_sloc0_1_0,r6
	mov	a,r7
	swap	a
	anl	a,#0xf0
	xch	a,_strtola_sloc0_1_0
	swap	a
	xch	a,_strtola_sloc0_1_0
	xrl	a,_strtola_sloc0_1_0
	xch	a,_strtola_sloc0_1_0
	anl	a,#0xf0
	xch	a,_strtola_sloc0_1_0
	xrl	a,_strtola_sloc0_1_0
	mov	(_strtola_sloc0_1_0 + 1),a
	mov	dptr,#_strtola_a_65536_28
	movx	a,@dptr
	mov	r0,a
	mov	r2,#0x00
	add	a,_strtola_sloc0_1_0
	mov	r6,a
	mov	a,r2
	addc	a,(_strtola_sloc0_1_0 + 1)
	mov	r7,a
	C$Function.c$46$2_0$29 ==.
;	Function.c:46: *q++;
	mov	a,#0x02
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dptr,#_strtola_q_65536_27
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	C$Function.c$47$2_0$29 ==.
;	Function.c:47: i++;
	mov	dptr,#_strtola_i_65536_28
	movx	a,@dptr
	inc	a
	movx	@dptr,a
	C$Function.c$48$1_0$28 ==.
;	Function.c:48: }while(*q!=13);
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	cjne	r1,#0x0d,00171$
	cjne	r2,#0x00,00171$
	sjmp	00172$
00171$:
	ljmp	00117$
00172$:
	C$Function.c$49$1_0$28 ==.
;	Function.c:49: return res;
	mov	dptr,#_strtola_q_65536_27
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	C$Function.c$50$1_0$28 ==.
;	Function.c:50: }
	C$Function.c$50$1_0$28 ==.
	XG$strtola$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
;c                         Allocated with name '_putchar_c_65536_36'
;------------------------------------------------------------
	G$putchar$0$0 ==.
	C$Function.c$51$1_0$37 ==.
;	Function.c:51: int putchar(int c)
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_putchar_c_65536_36
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$Function.c$53$1_0$37 ==.
;	Function.c:53: while(!TI);                         // checking the TI interrupt bit, when it sets, the data is sent
00101$:
	C$Function.c$54$1_0$37 ==.
;	Function.c:54: TI=0;
;	assignBit
	jbc	_TI,00114$
	sjmp	00101$
00114$:
	C$Function.c$55$1_0$37 ==.
;	Function.c:55: SBUF = c;
	mov	dptr,#_putchar_c_65536_36
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	_SBUF,r6
	C$Function.c$56$1_0$37 ==.
;	Function.c:56: return 1;
	mov	dptr,#0x0001
	C$Function.c$57$1_0$37 ==.
;	Function.c:57: }
	C$Function.c$57$1_0$37 ==.
	XG$putchar$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar'
;------------------------------------------------------------
	G$getchar$0$0 ==.
	C$Function.c$58$1_0$38 ==.
;	Function.c:58: int getchar()
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
	C$Function.c$60$1_0$38 ==.
;	Function.c:60: while(!RI);
00101$:
	C$Function.c$62$1_0$38 ==.
;	Function.c:62: RI=0;
;	assignBit
	jbc	_RI,00114$
	sjmp	00101$
00114$:
	C$Function.c$63$1_0$38 ==.
;	Function.c:63: return SBUF;
	mov	r6,_SBUF
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	C$Function.c$64$1_0$38 ==.
;	Function.c:64: }
	C$Function.c$64$1_0$38 ==.
	XG$getchar$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getstr_addr'
;------------------------------------------------------------
;buffer_char               Allocated with name '_getstr_addr_buffer_char_65536_39'
;i                         Allocated with name '_getstr_addr_i_65536_39'
;res                       Allocated with name '_getstr_addr_res_65536_39'
;comp                      Allocated with name '_getstr_addr_comp_65536_39'
;j                         Allocated with name '_getstr_addr_j_196608_47'
;k                         Allocated with name '_getstr_addr_k_327680_49'
;------------------------------------------------------------
	G$getstr_addr$0$0 ==.
	C$Function.c$65$1_0$39 ==.
;	Function.c:65: uint16_t getstr_addr()
;	-----------------------------------------
;	 function getstr_addr
;	-----------------------------------------
_getstr_addr:
	C$Function.c$67$2_0$39 ==.
;	Function.c:67: volatile int buffer_char[5]={0},i=0;
	mov	dptr,#_getstr_addr_buffer_char_65536_39
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_getstr_addr_buffer_char_65536_39 + 0x0002)
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_getstr_addr_buffer_char_65536_39 + 0x0004)
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_getstr_addr_buffer_char_65536_39 + 0x0006)
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_getstr_addr_buffer_char_65536_39 + 0x0008)
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_getstr_addr_i_65536_39
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$Function.c$69$2_0$39 ==.
;	Function.c:69: volatile uint8_t comp=0;
	mov	dptr,#_getstr_addr_comp_65536_39
	movx	@dptr,a
	C$Function.c$72$2_0$40 ==.
;	Function.c:72: do
00114$:
	C$Function.c$74$3_0$41 ==.
;	Function.c:74: buffer_char[i]=getchar();
	mov	dptr,#_getstr_addr_i_65536_39
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,#_getstr_addr_buffer_char_65536_39
	mov	r6,a
	mov	a,r7
	addc	a,#(_getstr_addr_buffer_char_65536_39 >> 8)
	mov	r7,a
	push	ar7
	push	ar6
	lcall	_getchar
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	dpl,r6
	mov	dph,r7
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	C$Function.c$75$3_0$41 ==.
;	Function.c:75: if((buffer_char[i]>='0' && buffer_char[i]<='9')||(buffer_char[i]>='a' && buffer_char[i]<='f')||(buffer_char[i]>='A' && buffer_char[i]<='F'))
	mov	dptr,#_getstr_addr_i_65536_39
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,#_getstr_addr_buffer_char_65536_39
	mov	dpl,a
	mov	a,r7
	addc	a,#(_getstr_addr_buffer_char_65536_39 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,#0x30
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00109$
	mov	dptr,#_getstr_addr_i_65536_39
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,#_getstr_addr_buffer_char_65536_39
	mov	dpl,a
	mov	a,r7
	addc	a,#(_getstr_addr_buffer_char_65536_39 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,#0x39
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00211$
	ljmp	00104$
00211$:
00109$:
	mov	dptr,#_getstr_addr_i_65536_39
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,#_getstr_addr_buffer_char_65536_39
	mov	dpl,a
	mov	a,r7
	addc	a,#(_getstr_addr_buffer_char_65536_39 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,#0x61
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00111$
	mov	dptr,#_getstr_addr_i_65536_39
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,#_getstr_addr_buffer_char_65536_39
	mov	dpl,a
	mov	a,r7
	addc	a,#(_getstr_addr_buffer_char_65536_39 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,#0x66
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00104$
00111$:
	mov	dptr,#_getstr_addr_i_65536_39
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,#_getstr_addr_buffer_char_65536_39
	mov	dpl,a
	mov	a,r7
	addc	a,#(_getstr_addr_buffer_char_65536_39 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,#0x41
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00105$
	mov	dptr,#_getstr_addr_i_65536_39
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,#_getstr_addr_buffer_char_65536_39
	mov	dpl,a
	mov	a,r7
	addc	a,#(_getstr_addr_buffer_char_65536_39 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,#0x46
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00105$
00104$:
	C$Function.c$77$4_0$42 ==.
;	Function.c:77: printf_tiny("%c",buffer_char[i]);     //Getting the string value of characters one by one through uart.
	mov	dptr,#_getstr_addr_i_65536_39
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,#_getstr_addr_buffer_char_65536_39
	mov	dpl,a
	mov	a,r7
	addc	a,#(_getstr_addr_buffer_char_65536_39 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar6
	push	ar7
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	C$Function.c$78$4_0$42 ==.
;	Function.c:78: i++;
	mov	dptr,#_getstr_addr_i_65536_39
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_getstr_addr_i_65536_39
	mov	a,#0x01
	add	a,r6
	movx	@dptr,a
	clr	a
	addc	a,r7
	inc	dptr
	movx	@dptr,a
	ljmp	00106$
00105$:
	C$Function.c$80$3_0$41 ==.
;	Function.c:80: else if((buffer_char[i]==13))
	mov	dptr,#_getstr_addr_i_65536_39
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,#_getstr_addr_buffer_char_65536_39
	mov	dpl,a
	mov	a,r7
	addc	a,#(_getstr_addr_buffer_char_65536_39 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x0d,00102$
	cjne	r7,#0x00,00102$
	C$Function.c$82$4_0$43 ==.
;	Function.c:82: printf_tiny("%c",buffer_char[i]);
	mov	dptr,#_getstr_addr_i_65536_39
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,#_getstr_addr_buffer_char_65536_39
	mov	dpl,a
	mov	a,r7
	addc	a,#(_getstr_addr_buffer_char_65536_39 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar6
	push	ar7
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	sjmp	00106$
00102$:
	C$Function.c$86$4_0$44 ==.
;	Function.c:86: printf_tiny("\n\rInvalid Input, Please enter The whole string Again.");
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$Function.c$87$4_0$44 ==.
;	Function.c:87: printf_tiny("\n\rEnter the Address:");
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$Function.c$88$4_0$44 ==.
;	Function.c:88: i=0;
	mov	dptr,#_getstr_addr_i_65536_39
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00106$:
	C$Function.c$90$3_0$41 ==.
;	Function.c:90: if(i==3)
	mov	dptr,#_getstr_addr_i_65536_39
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x03,00218$
	cjne	r7,#0x00,00218$
	sjmp	00116$
00218$:
	C$Function.c$94$2_0$40 ==.
;	Function.c:94: }while(buffer_char[i]!=13);
	mov	dptr,#_getstr_addr_i_65536_39
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,#_getstr_addr_buffer_char_65536_39
	mov	dpl,a
	mov	a,r7
	addc	a,#(_getstr_addr_buffer_char_65536_39 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x0d,00219$
	cjne	r7,#0x00,00219$
	sjmp	00220$
00219$:
	ljmp	00114$
00220$:
00116$:
	C$Function.c$95$2_0$40 ==.
;	Function.c:95: if(i==3)
	mov	dptr,#_getstr_addr_i_65536_39
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x03,00125$
	cjne	r7,#0x00,00125$
	C$Function.c$97$3_0$46 ==.
;	Function.c:97: printf_tiny("\n\rCan't Add more than 3 digits.");
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$Function.c$98$3_0$46 ==.
;	Function.c:98: buffer_char[i]=13;
	mov	dptr,#_getstr_addr_i_65536_39
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,#_getstr_addr_buffer_char_65536_39
	mov	dpl,a
	mov	a,r7
	addc	a,#(_getstr_addr_buffer_char_65536_39 >> 8)
	mov	dph,a
	mov	a,#0x0d
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	ljmp	00126$
00125$:
	C$Function.c$100$2_0$40 ==.
;	Function.c:100: else if(i<3)
	mov	dptr,#_getstr_addr_i_65536_39
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,#0x03
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00223$
	ljmp	00126$
00223$:
	C$Function.c$102$1_0$39 ==.
;	Function.c:102: while(j-i!=0)
	mov	r7,#0x03
00118$:
	mov	ar5,r7
	mov	r6,#0x00
	mov	dptr,#_getstr_addr_i_65536_39
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r5
	clr	c
	subb	a,r3
	mov	r5,a
	mov	a,r6
	subb	a,r4
	mov	r6,a
	orl	a,r5
	jz	00120$
	C$Function.c$104$1_0$39 ==.
;	Function.c:104: for(uint8_t k=3;k>0;k--)
	mov	r6,#0x03
00134$:
	mov	a,r6
	jz	00117$
	C$Function.c$106$6_0$50 ==.
;	Function.c:106: buffer_char[k]=buffer_char[k-1];
	mov	a,r6
	mov	b,#0x02
	mul	ab
	add	a,#_getstr_addr_buffer_char_65536_39
	mov	r4,a
	mov	a,#(_getstr_addr_buffer_char_65536_39 >> 8)
	addc	a,b
	mov	r5,a
	mov	ar3,r6
	dec	r3
	clr	F0
	mov	b,#0x02
	mov	a,r3
	jnb	acc.7,00226$
	cpl	F0
	cpl	a
	inc	a
00226$:
	mul	ab
	jnb	F0,00227$
	cpl	a
	add	a,#0x01
	xch	a,b
	cpl	a
	addc	a,#0x00
	xch	a,b
00227$:
	add	a,#_getstr_addr_buffer_char_65536_39
	mov	dpl,a
	mov	a,#(_getstr_addr_buffer_char_65536_39 >> 8)
	addc	a,b
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r4
	mov	dph,r5
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	C$Function.c$104$5_0$49 ==.
;	Function.c:104: for(uint8_t k=3;k>0;k--)
	dec	r6
	sjmp	00134$
00117$:
	C$Function.c$108$4_0$48 ==.
;	Function.c:108: j--;
	dec	r7
	sjmp	00118$
00120$:
	C$Function.c$110$1_0$39 ==.
;	Function.c:110: for(j=0;j<3-i;j++)
	mov	r7,#0x00
00137$:
	mov	dptr,#_getstr_addr_i_65536_39
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x03
	clr	c
	subb	a,r5
	mov	r5,a
	clr	a
	subb	a,r6
	mov	r6,a
	mov	ar3,r7
	mov	r4,#0x00
	clr	c
	mov	a,r3
	subb	a,r5
	mov	a,r4
	xrl	a,#0x80
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jnc	00121$
	C$Function.c$112$5_0$52 ==.
;	Function.c:112: buffer_char[j]=0;
	mov	a,r7
	mov	b,#0x02
	mul	ab
	add	a,#_getstr_addr_buffer_char_65536_39
	mov	dpl,a
	mov	a,#(_getstr_addr_buffer_char_65536_39 >> 8)
	addc	a,b
	mov	dph,a
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$Function.c$110$4_0$51 ==.
;	Function.c:110: for(j=0;j<3-i;j++)
	inc	r7
	sjmp	00137$
00121$:
	C$Function.c$114$3_0$47 ==.
;	Function.c:114: printf_tiny("\n\r");
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
00126$:
	C$Function.c$116$2_0$40 ==.
;	Function.c:116: res=strtola(buffer_char);
	mov	dptr,#_getstr_addr_buffer_char_65536_39
	mov	b,#0x00
	lcall	_strtola
	mov	r6,dpl
	mov	r7,dph
	C$Function.c$117$2_0$40 ==.
;	Function.c:117: if(res<=0x7FF)
	clr	c
	mov	a,#0xff
	subb	a,r6
	mov	a,#0x07
	subb	a,r7
	jc	00128$
	C$Function.c$118$2_0$40 ==.
;	Function.c:118: comp=1;
	mov	dptr,#_getstr_addr_comp_65536_39
	mov	a,#0x01
	movx	@dptr,a
	sjmp	00131$
00128$:
	C$Function.c$121$3_0$53 ==.
;	Function.c:121: printf_tiny("\n\r Address beyond the limit, Please enter the Address again(the address should be between 000-7FF):.");
	push	ar7
	push	ar6
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
	C$Function.c$122$3_0$53 ==.
;	Function.c:122: i=0;
	mov	dptr,#_getstr_addr_i_65536_39
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$Function.c$123$3_0$53 ==.
;	Function.c:123: comp=0;
	mov	dptr,#_getstr_addr_comp_65536_39
	movx	@dptr,a
00131$:
	C$Function.c$125$1_0$39 ==.
;	Function.c:125: }while(comp!=1);
	mov	dptr,#_getstr_addr_comp_65536_39
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x01,00230$
	sjmp	00231$
00230$:
	ljmp	00114$
00231$:
	C$Function.c$126$1_0$39 ==.
;	Function.c:126: return res;
	mov	dpl,r6
	mov	dph,r7
	C$Function.c$127$1_0$39 ==.
;	Function.c:127: }
	C$Function.c$127$1_0$39 ==.
	XG$getstr_addr$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getstr_data'
;------------------------------------------------------------
;buffer_char               Allocated with name '_getstr_data_buffer_char_65536_54'
;i                         Allocated with name '_getstr_data_i_65536_54'
;res                       Allocated with name '_getstr_data_res_65536_54'
;------------------------------------------------------------
	G$getstr_data$0$0 ==.
	C$Function.c$128$1_0$54 ==.
;	Function.c:128: uint16_t getstr_data()
;	-----------------------------------------
;	 function getstr_data
;	-----------------------------------------
_getstr_data:
	C$Function.c$130$2_0$54 ==.
;	Function.c:130: int buffer_char[5],i=0,res=1;
	mov	dptr,#_getstr_data_i_65536_54
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$Function.c$131$2_0$55 ==.
;	Function.c:131: do
00114$:
	C$Function.c$133$2_0$55 ==.
;	Function.c:133: buffer_char[i]=getchar();
	mov	dptr,#_getstr_data_i_65536_54
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,#_getstr_data_buffer_char_65536_54
	mov	r6,a
	mov	a,r7
	addc	a,#(_getstr_data_buffer_char_65536_54 >> 8)
	mov	r7,a
	push	ar7
	push	ar6
	lcall	_getchar
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	dpl,r6
	mov	dph,r7
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	C$Function.c$134$2_0$55 ==.
;	Function.c:134: if((buffer_char[i]>='0' && buffer_char[i]<='9')||(buffer_char[i]>='a' && buffer_char[i]<='f')||(buffer_char[i]>='A' && buffer_char[i]<='F'))
	clr	c
	mov	a,r4
	subb	a,#0x30
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x80
	jc	00109$
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,#0x39
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00150$
	ljmp	00104$
00150$:
00109$:
	mov	dptr,#_getstr_data_i_65536_54
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,#_getstr_data_buffer_char_65536_54
	mov	dpl,a
	mov	a,r7
	addc	a,#(_getstr_data_buffer_char_65536_54 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,#0x61
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00111$
	mov	a,#0x66
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00104$
00111$:
	mov	dptr,#_getstr_data_i_65536_54
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,#_getstr_data_buffer_char_65536_54
	mov	dpl,a
	mov	a,r7
	addc	a,#(_getstr_data_buffer_char_65536_54 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,#0x41
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00105$
	mov	a,#0x46
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00105$
00104$:
	C$Function.c$136$3_0$56 ==.
;	Function.c:136: printf_tiny("%c",buffer_char[i]);     //Getting the string value of characters one by one through uart.
	mov	dptr,#_getstr_data_i_65536_54
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	add	a,r6
	mov	r4,a
	mov	a,r7
	rlc	a
	mov	r5,a
	mov	a,r4
	add	a,#_getstr_data_buffer_char_65536_54
	mov	dpl,a
	mov	a,r5
	addc	a,#(_getstr_data_buffer_char_65536_54 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	push	ar7
	push	ar6
	push	ar4
	push	ar5
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
	pop	ar7
	C$Function.c$137$3_0$56 ==.
;	Function.c:137: i++;
	mov	dptr,#_getstr_data_i_65536_54
	mov	a,#0x01
	add	a,r6
	movx	@dptr,a
	clr	a
	addc	a,r7
	inc	dptr
	movx	@dptr,a
	sjmp	00106$
00105$:
	C$Function.c$139$2_0$55 ==.
;	Function.c:139: else if((buffer_char[i]==13))
	mov	dptr,#_getstr_data_i_65536_54
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,#_getstr_data_buffer_char_65536_54
	mov	dpl,a
	mov	a,r7
	addc	a,#(_getstr_data_buffer_char_65536_54 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x0d,00102$
	cjne	r7,#0x00,00102$
	C$Function.c$141$3_0$57 ==.
;	Function.c:141: printf_tiny("%c",buffer_char[i]);
	push	ar6
	push	ar7
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	sjmp	00106$
00102$:
	C$Function.c$145$3_0$58 ==.
;	Function.c:145: printf_tiny("\n\rInvalid Input, Please enter The whole string Again.");
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$Function.c$146$3_0$58 ==.
;	Function.c:146: printf_tiny("\n\rEnter the Data:");
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$Function.c$147$3_0$58 ==.
;	Function.c:147: i=0;
	mov	dptr,#_getstr_data_i_65536_54
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00106$:
	C$Function.c$149$2_0$55 ==.
;	Function.c:149: if(i==2)
	mov	dptr,#_getstr_data_i_65536_54
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x02,00157$
	cjne	r7,#0x00,00157$
	sjmp	00116$
00157$:
	C$Function.c$153$1_0$54 ==.
;	Function.c:153: }while(buffer_char[i]!=13);
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,#_getstr_data_buffer_char_65536_54
	mov	dpl,a
	mov	a,r7
	addc	a,#(_getstr_data_buffer_char_65536_54 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x0d,00158$
	cjne	r7,#0x00,00158$
	sjmp	00159$
00158$:
	ljmp	00114$
00159$:
00116$:
	C$Function.c$154$1_0$54 ==.
;	Function.c:154: if(i==2)
	mov	dptr,#_getstr_data_i_65536_54
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r6,#0x02,00118$
	cjne	r7,#0x00,00118$
	C$Function.c$156$2_0$60 ==.
;	Function.c:156: printf_tiny("\n\rCan't Add more than 2 digits.");
	push	ar7
	push	ar6
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
	C$Function.c$157$2_0$60 ==.
;	Function.c:157: buffer_char[i]=13;
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,#_getstr_data_buffer_char_65536_54
	mov	dpl,a
	mov	a,r7
	addc	a,#(_getstr_data_buffer_char_65536_54 >> 8)
	mov	dph,a
	mov	a,#0x0d
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
00118$:
	C$Function.c$159$1_0$54 ==.
;	Function.c:159: res=strtola(buffer_char);
	mov	dptr,#_getstr_data_buffer_char_65536_54
	mov	b,#0x00
	lcall	_strtola
	C$Function.c$160$1_0$54 ==.
;	Function.c:160: return res;
	C$Function.c$161$1_0$54 ==.
;	Function.c:161: }
	C$Function.c$161$1_0$54 ==.
	XG$getstr_data$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_block'
;------------------------------------------------------------
	G$get_block$0$0 ==.
	C$Function.c$162$1_0$61 ==.
;	Function.c:162: uint16_t get_block()
;	-----------------------------------------
;	 function get_block
;	-----------------------------------------
_get_block:
	C$Function.c$164$1_0$61 ==.
;	Function.c:164: return block;
	mov	dptr,#_block
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dpl,r7
	mov	dph,r6
	C$Function.c$165$1_0$61 ==.
;	Function.c:165: }
	C$Function.c$165$1_0$61 ==.
	XG$get_block$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
FFunction$__str_0$0_0$0 == .
	.area CONST   (CODE)
___str_0:
	.ascii "%c"
	.db 0x00
	.area CSEG    (CODE)
FFunction$__str_1$0_0$0 == .
	.area CONST   (CODE)
___str_1:
	.db 0x0a
	.db 0x0d
	.ascii "Invalid Input, Please enter The whole string Again."
	.db 0x00
	.area CSEG    (CODE)
FFunction$__str_2$0_0$0 == .
	.area CONST   (CODE)
___str_2:
	.db 0x0a
	.db 0x0d
	.ascii "Enter the Address:"
	.db 0x00
	.area CSEG    (CODE)
FFunction$__str_3$0_0$0 == .
	.area CONST   (CODE)
___str_3:
	.db 0x0a
	.db 0x0d
	.ascii "Can't Add more than 3 digits."
	.db 0x00
	.area CSEG    (CODE)
FFunction$__str_4$0_0$0 == .
	.area CONST   (CODE)
___str_4:
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
FFunction$__str_5$0_0$0 == .
	.area CONST   (CODE)
___str_5:
	.db 0x0a
	.db 0x0d
	.ascii " Address beyond the limit, Please enter the Address again(th"
	.ascii "e address should be between 000-7FF):."
	.db 0x00
	.area CSEG    (CODE)
FFunction$__str_6$0_0$0 == .
	.area CONST   (CODE)
___str_6:
	.db 0x0a
	.db 0x0d
	.ascii "Enter the Data:"
	.db 0x00
	.area CSEG    (CODE)
FFunction$__str_7$0_0$0 == .
	.area CONST   (CODE)
___str_7:
	.db 0x0a
	.db 0x0d
	.ascii "Can't Add more than 2 digits."
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
