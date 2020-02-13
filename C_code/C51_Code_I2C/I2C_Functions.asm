;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.0 #11195 (MINGW64)
;--------------------------------------------------------
	.module I2C_Functions
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _get_blocknumber
	.globl _delay1
	.globl _ack
	.globl _eereset
	.globl _start
	.globl _printf_tiny
	.globl _printf
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
	.globl _dummy_write_PARM_2
	.globl _reeprom_seq_PARM_3
	.globl _reeprom_seq_PARM_2
	.globl _reeprom_PARM_2
	.globl _weeprom_PARM_3
	.globl _weeprom_PARM_2
	.globl _weeprom
	.globl _reeprom
	.globl _read
	.globl _outs
	.globl _out
	.globl _in
	.globl _stop
	.globl _reeprom_seq
	.globl _dummy_read
	.globl _dummy_write
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
LI2C_Functions.weeprom$address$1_0$25==.
_weeprom_PARM_2:
	.ds 1
LI2C_Functions.weeprom$datum$1_0$25==.
_weeprom_PARM_3:
	.ds 1
LI2C_Functions.weeprom$page$1_0$25==.
_weeprom_page_65536_25:
	.ds 1
LI2C_Functions.reeprom$address$1_0$27==.
_reeprom_PARM_2:
	.ds 1
LI2C_Functions.reeprom$page$1_0$27==.
_reeprom_page_65536_27:
	.ds 1
LI2C_Functions.read$readcmd$1_0$29==.
_read_readcmd_65536_29:
	.ds 1
LI2C_Functions.outs$datum$1_0$31==.
_outs_datum_65536_31:
	.ds 1
LI2C_Functions.out$datum$1_0$35==.
_out_datum_65536_35:
	.ds 1
LI2C_Functions.in$aux$1_0$40==.
_in_aux_65536_40:
	.ds 1
LI2C_Functions.reeprom_seq$Start_Address$1_0$54==.
_reeprom_seq_PARM_2:
	.ds 2
LI2C_Functions.reeprom_seq$End_Address$1_0$54==.
_reeprom_seq_PARM_3:
	.ds 2
LI2C_Functions.reeprom_seq$block$1_0$54==.
_reeprom_seq_block_65536_54:
	.ds 2
LI2C_Functions.reeprom_seq$a$1_0$55==.
_reeprom_seq_a_65536_55:
	.ds 1
LI2C_Functions.reeprom_seq$i$1_0$55==.
_reeprom_seq_i_65536_55:
	.ds 2
LI2C_Functions.reeprom_seq$res$1_0$55==.
_reeprom_seq_res_65536_55:
	.ds 2
LI2C_Functions.reeprom_seq$j$1_0$55==.
_reeprom_seq_j_65536_55:
	.ds 2
LI2C_Functions.reeprom_seq$aux$1_0$55==.
_reeprom_seq_aux_65536_55:
	.ds 1
LI2C_Functions.reeprom_seq$WRCMD$1_0$55==.
_reeprom_seq_WRCMD_65536_55:
	.ds 1
LI2C_Functions.dummy_write$Address$1_0$68==.
_dummy_write_PARM_2:
	.ds 2
LI2C_Functions.dummy_write$block$1_0$68==.
_dummy_write_block_65536_68:
	.ds 2
LI2C_Functions.get_blocknumber$Add$1_0$70==.
_get_blocknumber_Add_65536_70:
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
;Allocation info for local variables in function 'weeprom'
;------------------------------------------------------------
;address                   Allocated with name '_weeprom_PARM_2'
;datum                     Allocated with name '_weeprom_PARM_3'
;page                      Allocated with name '_weeprom_page_65536_25'
;WRCMD                     Allocated with name '_weeprom_WRCMD_65536_26'
;------------------------------------------------------------
	G$weeprom$0$0 ==.
	C$I2C_Functions.c$23$0_0$26 ==.
;	I2C_Functions.c:23: void weeprom (char page, char address, char datum)
;	-----------------------------------------
;	 function weeprom
;	-----------------------------------------
_weeprom:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	a,dpl
	mov	dptr,#_weeprom_page_65536_25
	movx	@dptr,a
	C$I2C_Functions.c$26$1_0$26 ==.
;	I2C_Functions.c:26: page = page << 1; // move A0, A1 & A2 to their positions
	movx	a,@dptr
	add	a,acc
	movx	@dptr,a
	C$I2C_Functions.c$27$1_0$26 ==.
;	I2C_Functions.c:27: page = page & 0xFE; // clear r/w bit
	movx	a,@dptr
	anl	acc,#0xfe
	movx	@dptr,a
	C$I2C_Functions.c$28$1_0$26 ==.
;	I2C_Functions.c:28: WRCMD = page | 0xA0; // build the write command
	mov	dptr,#_weeprom_page_65536_25
	movx	a,@dptr
	orl	a,#0xa0
	C$I2C_Functions.c$29$1_0$26 ==.
;	I2C_Functions.c:29: outs (WRCMD); // send the write command with start condition
	mov	dpl,a
	lcall	_outs
	C$I2C_Functions.c$30$1_0$26 ==.
;	I2C_Functions.c:30: out (address); // send address
	mov	dptr,#_weeprom_PARM_2
	movx	a,@dptr
	mov	dpl,a
	lcall	_out
	C$I2C_Functions.c$31$1_0$26 ==.
;	I2C_Functions.c:31: out (datum); // send data
	mov	dptr,#_weeprom_PARM_3
	movx	a,@dptr
	mov	dpl,a
	lcall	_out
	C$I2C_Functions.c$32$1_0$26 ==.
;	I2C_Functions.c:32: stop (); // send stop condition
	lcall	_stop
	C$I2C_Functions.c$33$1_0$26 ==.
;	I2C_Functions.c:33: }
	C$I2C_Functions.c$33$1_0$26 ==.
	XG$weeprom$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'reeprom'
;------------------------------------------------------------
;address                   Allocated with name '_reeprom_PARM_2'
;page                      Allocated with name '_reeprom_page_65536_27'
;aux                       Allocated with name '_reeprom_aux_65536_28'
;WRCMD                     Allocated with name '_reeprom_WRCMD_65536_28'
;------------------------------------------------------------
	G$reeprom$0$0 ==.
	C$I2C_Functions.c$49$1_0$28 ==.
;	I2C_Functions.c:49: char reeprom (char page, char address)
;	-----------------------------------------
;	 function reeprom
;	-----------------------------------------
_reeprom:
	mov	a,dpl
	mov	dptr,#_reeprom_page_65536_27
	movx	@dptr,a
	C$I2C_Functions.c$53$1_0$28 ==.
;	I2C_Functions.c:53: aux = page; // preparing the write command
	movx	a,@dptr
	C$I2C_Functions.c$54$1_0$28 ==.
;	I2C_Functions.c:54: aux = aux << 1; // move A0, A1 & A2 to their positions
	add	a,acc
	mov	r7,a
	C$I2C_Functions.c$55$1_0$28 ==.
;	I2C_Functions.c:55: aux = aux & 0xFE; // clear r/w bit
	mov	a,#0xfe
	anl	a,r7
	C$I2C_Functions.c$56$1_0$28 ==.
;	I2C_Functions.c:56: WRCMD = aux | 0xA0; // build the write command
	orl	a,#0xa0
	C$I2C_Functions.c$57$1_0$28 ==.
;	I2C_Functions.c:57: outs (WRCMD); // send the write command with start condition
	mov	r7,a
	mov	dpl,a
	push	ar7
	lcall	_outs
	C$I2C_Functions.c$58$1_0$28 ==.
;	I2C_Functions.c:58: out (address); // send address
	mov	dptr,#_reeprom_PARM_2
	movx	a,@dptr
	mov	dpl,a
	lcall	_out
	pop	ar7
	C$I2C_Functions.c$59$1_0$28 ==.
;	I2C_Functions.c:59: aux = read (WRCMD); // send read command and receive data
	mov	dpl,r7
	lcall	_read
	C$I2C_Functions.c$60$1_0$28 ==.
;	I2C_Functions.c:60: return (aux); // return solicited data
	C$I2C_Functions.c$61$1_0$28 ==.
;	I2C_Functions.c:61: }
	C$I2C_Functions.c$61$1_0$28 ==.
	XG$reeprom$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read'
;------------------------------------------------------------
;readcmd                   Allocated with name '_read_readcmd_65536_29'
;RDCMD                     Allocated with name '_read_RDCMD_65536_30'
;aux                       Allocated with name '_read_aux_65536_30'
;------------------------------------------------------------
	G$read$0$0 ==.
	C$I2C_Functions.c$78$1_0$30 ==.
;	I2C_Functions.c:78: char read (char readcmd)
;	-----------------------------------------
;	 function read
;	-----------------------------------------
_read:
	mov	a,dpl
	mov	dptr,#_read_readcmd_65536_29
	movx	@dptr,a
	C$I2C_Functions.c$82$1_0$30 ==.
;	I2C_Functions.c:82: RDCMD = readcmd | 0x01; // set r/w bit
	movx	a,@dptr
	orl	a,#0x01
	C$I2C_Functions.c$83$1_0$30 ==.
;	I2C_Functions.c:83: outs (RDCMD); // send read command with start condition
	mov	dpl,a
	lcall	_outs
	C$I2C_Functions.c$84$1_0$30 ==.
;	I2C_Functions.c:84: aux = in(); // read current position
	lcall	_in
	mov	r7,dpl
	C$I2C_Functions.c$85$1_0$30 ==.
;	I2C_Functions.c:85: stop (); // send stop condition
	push	ar7
	lcall	_stop
	pop	ar7
	C$I2C_Functions.c$86$1_0$30 ==.
;	I2C_Functions.c:86: return (aux); // return current position data
	mov	dpl,r7
	C$I2C_Functions.c$87$1_0$30 ==.
;	I2C_Functions.c:87: }
	C$I2C_Functions.c$87$1_0$30 ==.
	XG$read$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'outs'
;------------------------------------------------------------
;datum                     Allocated with name '_outs_datum_65536_31'
;i                         Allocated with name '_outs_i_65536_32'
;aux                       Allocated with name '_outs_aux_65536_32'
;------------------------------------------------------------
	G$outs$0$0 ==.
	C$I2C_Functions.c$102$1_0$32 ==.
;	I2C_Functions.c:102: void outs (char datum)
;	-----------------------------------------
;	 function outs
;	-----------------------------------------
_outs:
	mov	a,dpl
	mov	dptr,#_outs_datum_65536_31
	movx	@dptr,a
	C$I2C_Functions.c$106$1_0$32 ==.
;	I2C_Functions.c:106: SDA = 1; // set port pin SDA to insure data is HI
;	assignBit
	setb	_P1_7
	C$I2C_Functions.c$107$1_0$32 ==.
;	I2C_Functions.c:107: SCK = 1; // set port pin SCK to insure clock is HI
;	assignBit
	setb	_P1_6
	C$I2C_Functions.c$114$1_0$32 ==.
;	I2C_Functions.c:114: __endasm;
	nop
	nop
	nop
	nop
	nop
	C$I2C_Functions.c$115$1_0$32 ==.
;	I2C_Functions.c:115: SDA = 0; // start condition, data = 0
;	assignBit
	clr	_P1_7
	C$I2C_Functions.c$122$1_0$32 ==.
;	I2C_Functions.c:122: __endasm;
	nop
	nop
	nop
	nop
	nop
	C$I2C_Functions.c$124$1_0$32 ==.
;	I2C_Functions.c:124: SCK = 0; // clock = 0
;	assignBit
	clr	_P1_6
	C$I2C_Functions.c$130$1_0$32 ==.
;	I2C_Functions.c:130: for (i = 0; i < 8; i++) // bit shifting cycle
	mov	r7,#0x00
00105$:
	C$I2C_Functions.c$132$3_0$34 ==.
;	I2C_Functions.c:132: aux = datum & 0x80; // check MSB bit
	mov	dptr,#_outs_datum_65536_31
	movx	a,@dptr
	jb	acc.7,00102$
	C$I2C_Functions.c$133$3_0$34 ==.
;	I2C_Functions.c:133: if (aux == 0) // MSB = 0
	C$I2C_Functions.c$134$3_0$34 ==.
;	I2C_Functions.c:134: SDA = 0; // then SDA = 0
;	assignBit
	clr	_P1_7
	sjmp	00103$
00102$:
	C$I2C_Functions.c$136$3_0$34 ==.
;	I2C_Functions.c:136: SDA = 1; // else MSB =1, then SDA = 1
;	assignBit
	setb	_P1_7
00103$:
	C$I2C_Functions.c$137$3_0$34 ==.
;	I2C_Functions.c:137: SCK = 1; // clock = 1
;	assignBit
	setb	_P1_6
	C$I2C_Functions.c$148$3_0$34 ==.
;	I2C_Functions.c:148: __endasm;
	nop
	nop
	nop
	nop
	nop
	C$I2C_Functions.c$152$3_0$34 ==.
;	I2C_Functions.c:152: SCK = 0; // clock = 0
;	assignBit
	clr	_P1_6
	C$I2C_Functions.c$153$3_0$34 ==.
;	I2C_Functions.c:153: datum = datum << 1; // rotate for next bit
	mov	dptr,#_outs_datum_65536_31
	movx	a,@dptr
	add	a,acc
	mov	r6,a
	movx	@dptr,a
	C$I2C_Functions.c$130$2_0$33 ==.
;	I2C_Functions.c:130: for (i = 0; i < 8; i++) // bit shifting cycle
	inc	r7
	cjne	r7,#0x08,00123$
00123$:
	jc	00105$
	C$I2C_Functions.c$156$1_0$32 ==.
;	I2C_Functions.c:156: SDA = 1; // set port pin for ack
;	assignBit
	setb	_P1_7
	C$I2C_Functions.c$162$1_0$32 ==.
;	I2C_Functions.c:162: __endasm;
	nop
	nop
	nop
	C$I2C_Functions.c$163$1_0$32 ==.
;	I2C_Functions.c:163: SCK = 1; // clock ack
;	assignBit
	setb	_P1_6
	C$I2C_Functions.c$170$1_0$32 ==.
;	I2C_Functions.c:170: __endasm;
	nop
	nop
	nop
	nop
	nop
	C$I2C_Functions.c$171$1_0$32 ==.
;	I2C_Functions.c:171: SCK = 0; // clock = 0
;	assignBit
	clr	_P1_6
	C$I2C_Functions.c$172$1_0$32 ==.
;	I2C_Functions.c:172: }
	C$I2C_Functions.c$172$1_0$32 ==.
	XG$outs$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'out'
;------------------------------------------------------------
;datum                     Allocated with name '_out_datum_65536_35'
;i                         Allocated with name '_out_i_65536_36'
;aux                       Allocated with name '_out_aux_65536_36'
;------------------------------------------------------------
	G$out$0$0 ==.
	C$I2C_Functions.c$188$1_0$36 ==.
;	I2C_Functions.c:188: void out (char datum)
;	-----------------------------------------
;	 function out
;	-----------------------------------------
_out:
	mov	a,dpl
	mov	dptr,#_out_datum_65536_35
	movx	@dptr,a
	C$I2C_Functions.c$192$1_0$36 ==.
;	I2C_Functions.c:192: for (i = 0; i < 8; i++) // bit shifting cycle
	mov	r7,#0x00
00105$:
	C$I2C_Functions.c$194$3_0$38 ==.
;	I2C_Functions.c:194: aux = datum & 0x80; // check MSB bit
	mov	dptr,#_out_datum_65536_35
	movx	a,@dptr
	jb	acc.7,00102$
	C$I2C_Functions.c$195$3_0$38 ==.
;	I2C_Functions.c:195: if (aux == 0) // MSB = 0
	C$I2C_Functions.c$196$3_0$38 ==.
;	I2C_Functions.c:196: SDA = 0; // then SDA = 0
;	assignBit
	clr	_P1_7
	sjmp	00103$
00102$:
	C$I2C_Functions.c$198$3_0$38 ==.
;	I2C_Functions.c:198: SDA = 1; // else MSB = 1, the SDA = 1
;	assignBit
	setb	_P1_7
00103$:
	C$I2C_Functions.c$199$3_0$38 ==.
;	I2C_Functions.c:199: SCK = 1; // clock = 1
;	assignBit
	setb	_P1_6
	C$I2C_Functions.c$206$3_0$38 ==.
;	I2C_Functions.c:206: __endasm;
	nop
	nop
	nop
	nop
	nop
	C$I2C_Functions.c$207$3_0$38 ==.
;	I2C_Functions.c:207: SCK = 0; // clock = 0
;	assignBit
	clr	_P1_6
	C$I2C_Functions.c$208$3_0$38 ==.
;	I2C_Functions.c:208: datum = datum << 1; // rotate for next bit
	mov	dptr,#_out_datum_65536_35
	movx	a,@dptr
	add	a,acc
	mov	r6,a
	movx	@dptr,a
	C$I2C_Functions.c$192$2_0$37 ==.
;	I2C_Functions.c:192: for (i = 0; i < 8; i++) // bit shifting cycle
	inc	r7
	cjne	r7,#0x08,00123$
00123$:
	jc	00105$
	C$I2C_Functions.c$210$1_0$36 ==.
;	I2C_Functions.c:210: SDA = 1; // set port pin for ack
;	assignBit
	setb	_P1_7
	C$I2C_Functions.c$215$1_0$36 ==.
;	I2C_Functions.c:215: __endasm;
	nop
	nop
	nop
	C$I2C_Functions.c$216$1_0$36 ==.
;	I2C_Functions.c:216: SCK = 1; // clock ack
;	assignBit
	setb	_P1_6
	C$I2C_Functions.c$223$1_0$36 ==.
;	I2C_Functions.c:223: __endasm;
	nop
	nop
	nop
	nop
	nop
	C$I2C_Functions.c$224$1_0$36 ==.
;	I2C_Functions.c:224: SCK = 0; // clock = 0
;	assignBit
	clr	_P1_6
	C$I2C_Functions.c$225$1_0$36 ==.
;	I2C_Functions.c:225: }
	C$I2C_Functions.c$225$1_0$36 ==.
	XG$out$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'in'
;------------------------------------------------------------
;i                         Allocated with name '_in_i_65536_40'
;aux                       Allocated with name '_in_aux_65536_40'
;------------------------------------------------------------
	G$in$0$0 ==.
	C$I2C_Functions.c$240$1_0$40 ==.
;	I2C_Functions.c:240: char in (void)
;	-----------------------------------------
;	 function in
;	-----------------------------------------
_in:
	C$I2C_Functions.c$243$2_0$40 ==.
;	I2C_Functions.c:243: char aux = 0; // auxiliary storage
	mov	dptr,#_in_aux_65536_40
	clr	a
	movx	@dptr,a
	C$I2C_Functions.c$244$1_0$40 ==.
;	I2C_Functions.c:244: SDA = 1; // insure port pin = 1 for input
;	assignBit
	setb	_P1_7
	C$I2C_Functions.c$245$1_0$40 ==.
;	I2C_Functions.c:245: for (i = 0; i < 8; i++) // bit shifting cycle
	mov	r7,#0x00
00105$:
	C$I2C_Functions.c$247$3_0$42 ==.
;	I2C_Functions.c:247: SCK = 0; // clock = 0
;	assignBit
	clr	_P1_6
	C$I2C_Functions.c$255$3_0$42 ==.
;	I2C_Functions.c:255: __endasm;
	nop
	nop
	nop
	nop
	nop
	nop
	C$I2C_Functions.c$256$3_0$42 ==.
;	I2C_Functions.c:256: SCK = 1; // clock = 1
;	assignBit
	setb	_P1_6
	C$I2C_Functions.c$257$3_0$42 ==.
;	I2C_Functions.c:257: aux = aux << 1; // load bit position
	mov	dptr,#_in_aux_65536_40
	movx	a,@dptr
	add	a,acc
	mov	r6,a
	movx	@dptr,a
	C$I2C_Functions.c$258$3_0$42 ==.
;	I2C_Functions.c:258: if (SDA) // check SDA data from port pin
	jnb	_P1_7,00102$
	C$I2C_Functions.c$259$3_0$42 ==.
;	I2C_Functions.c:259: aux = aux | 0x01; // if port pin = 1, set LSB (bit position)
	mov	dptr,#_in_aux_65536_40
	movx	a,@dptr
	orl	acc,#0x01
	movx	@dptr,a
	sjmp	00106$
00102$:
	C$I2C_Functions.c$261$3_0$42 ==.
;	I2C_Functions.c:261: aux = aux & 0xFE; // else port pin = ,clear LSB (bit position)
	mov	dptr,#_in_aux_65536_40
	movx	a,@dptr
	anl	acc,#0xfe
	movx	@dptr,a
00106$:
	C$I2C_Functions.c$245$2_0$41 ==.
;	I2C_Functions.c:245: for (i = 0; i < 8; i++) // bit shifting cycle
	inc	r7
	cjne	r7,#0x08,00123$
00123$:
	jc	00105$
	C$I2C_Functions.c$263$1_0$40 ==.
;	I2C_Functions.c:263: SCK = 0; // clock = 0
;	assignBit
	clr	_P1_6
	C$I2C_Functions.c$264$1_0$40 ==.
;	I2C_Functions.c:264: return (aux); // return data received
	mov	dptr,#_in_aux_65536_40
	movx	a,@dptr
	C$I2C_Functions.c$265$1_0$40 ==.
;	I2C_Functions.c:265: }
	C$I2C_Functions.c$265$1_0$40 ==.
	XG$in$0$0 ==.
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'stop'
;------------------------------------------------------------
	G$stop$0$0 ==.
	C$I2C_Functions.c$279$1_0$44 ==.
;	I2C_Functions.c:279: void stop (void)
;	-----------------------------------------
;	 function stop
;	-----------------------------------------
_stop:
	C$I2C_Functions.c$281$1_0$44 ==.
;	I2C_Functions.c:281: SDA = 0; // stop condition, data = 0
;	assignBit
	clr	_P1_7
	C$I2C_Functions.c$288$1_0$44 ==.
;	I2C_Functions.c:288: __endasm;
	nop
	nop
	nop
	nop
	nop
	C$I2C_Functions.c$289$1_0$44 ==.
;	I2C_Functions.c:289: SCK = 1; // clock = 1
;	assignBit
	setb	_P1_6
	C$I2C_Functions.c$296$1_0$44 ==.
;	I2C_Functions.c:296: __endasm;
	nop
	nop
	nop
	nop
	nop
	C$I2C_Functions.c$297$1_0$44 ==.
;	I2C_Functions.c:297: SDA = 1; // data = 1
;	assignBit
	setb	_P1_7
	C$I2C_Functions.c$298$1_0$44 ==.
;	I2C_Functions.c:298: }
	C$I2C_Functions.c$298$1_0$44 ==.
	XG$stop$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'start'
;------------------------------------------------------------
	G$start$0$0 ==.
	C$I2C_Functions.c$299$1_0$46 ==.
;	I2C_Functions.c:299: void start(void)
;	-----------------------------------------
;	 function start
;	-----------------------------------------
_start:
	C$I2C_Functions.c$301$1_0$46 ==.
;	I2C_Functions.c:301: SDA=1;
;	assignBit
	setb	_P1_7
	C$I2C_Functions.c$302$1_0$46 ==.
;	I2C_Functions.c:302: SCK = 1;
;	assignBit
	setb	_P1_6
	C$I2C_Functions.c$309$1_0$46 ==.
;	I2C_Functions.c:309: __endasm;
	nop
	nop
	nop
	nop
	nop
	C$I2C_Functions.c$310$1_0$46 ==.
;	I2C_Functions.c:310: SDA=0;	 // clock = 1
;	assignBit
	clr	_P1_7
	C$I2C_Functions.c$317$1_0$46 ==.
;	I2C_Functions.c:317: __endasm;
	nop
	nop
	nop
	nop
	nop
	C$I2C_Functions.c$318$1_0$46 ==.
;	I2C_Functions.c:318: SCK = 0; // data = 1
;	assignBit
	clr	_P1_6
	C$I2C_Functions.c$319$1_0$46 ==.
;	I2C_Functions.c:319: }
	C$I2C_Functions.c$319$1_0$46 ==.
	XG$start$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'eereset'
;------------------------------------------------------------
;i                         Allocated with name '_eereset_i_131072_48'
;------------------------------------------------------------
	G$eereset$0$0 ==.
	C$I2C_Functions.c$320$1_0$47 ==.
;	I2C_Functions.c:320: void eereset()
;	-----------------------------------------
;	 function eereset
;	-----------------------------------------
_eereset:
	C$I2C_Functions.c$322$1_0$47 ==.
;	I2C_Functions.c:322: start();
	lcall	_start
	C$I2C_Functions.c$323$1_0$47 ==.
;	I2C_Functions.c:323: for(uint8_t i=0;i<9;i++)
	mov	r7,#0x00
00103$:
	cjne	r7,#0x09,00116$
00116$:
	jnc	00101$
	C$I2C_Functions.c$324$3_0$49 ==.
;	I2C_Functions.c:324: {   SDA=1;
;	assignBit
	setb	_P1_7
	C$I2C_Functions.c$325$3_0$49 ==.
;	I2C_Functions.c:325: SCK=1;
;	assignBit
	setb	_P1_6
	C$I2C_Functions.c$332$3_0$49 ==.
;	I2C_Functions.c:332: __endasm;
	nop
	nop
	nop
	nop
	nop
	C$I2C_Functions.c$333$3_0$49 ==.
;	I2C_Functions.c:333: SCK=0;
;	assignBit
	clr	_P1_6
	C$I2C_Functions.c$323$2_0$48 ==.
;	I2C_Functions.c:323: for(uint8_t i=0;i<9;i++)
	inc	r7
	sjmp	00103$
00101$:
	C$I2C_Functions.c$335$1_0$47 ==.
;	I2C_Functions.c:335: start();
	lcall	_start
	C$I2C_Functions.c$336$1_0$47 ==.
;	I2C_Functions.c:336: stop();
	lcall	_stop
	C$I2C_Functions.c$337$1_0$47 ==.
;	I2C_Functions.c:337: }
	C$I2C_Functions.c$337$1_0$47 ==.
	XG$eereset$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ack'
;------------------------------------------------------------
	G$ack$0$0 ==.
	C$I2C_Functions.c$338$1_0$51 ==.
;	I2C_Functions.c:338: void ack(void)
;	-----------------------------------------
;	 function ack
;	-----------------------------------------
_ack:
	C$I2C_Functions.c$340$1_0$51 ==.
;	I2C_Functions.c:340: SDA = 0; // 8051 Pulls SDA low to ACK
;	assignBit
	clr	_P1_7
	C$I2C_Functions.c$345$1_0$51 ==.
;	I2C_Functions.c:345: __endasm;
	nop
	nop
	nop
	C$I2C_Functions.c$346$1_0$51 ==.
;	I2C_Functions.c:346: SCK = 1; // clock ack
;	assignBit
	setb	_P1_6
	C$I2C_Functions.c$353$1_0$51 ==.
;	I2C_Functions.c:353: __endasm;
	nop
	nop
	nop
	nop
	nop
	C$I2C_Functions.c$354$1_0$51 ==.
;	I2C_Functions.c:354: SCK = 0; // clock = 0
;	assignBit
	clr	_P1_6
	C$I2C_Functions.c$355$1_0$51 ==.
;	I2C_Functions.c:355: SDA = 1; // Pulling it back up now
;	assignBit
	setb	_P1_7
	C$I2C_Functions.c$356$1_0$51 ==.
;	I2C_Functions.c:356: }
	C$I2C_Functions.c$356$1_0$51 ==.
	XG$ack$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay1'
;------------------------------------------------------------
;i                         Allocated with name '_delay1_i_65536_52'
;------------------------------------------------------------
	G$delay1$0$0 ==.
	C$I2C_Functions.c$357$1_0$52 ==.
;	I2C_Functions.c:357: void delay1()
;	-----------------------------------------
;	 function delay1
;	-----------------------------------------
_delay1:
	C$I2C_Functions.c$359$1_0$52 ==.
;	I2C_Functions.c:359: while(i!=1000)
	mov	r6,#0x00
	mov	r7,#0x00
00101$:
	cjne	r6,#0xe8,00115$
	cjne	r7,#0x03,00115$
	sjmp	00104$
00115$:
	C$I2C_Functions.c$361$2_0$53 ==.
;	I2C_Functions.c:361: ++i;
	inc	r6
	cjne	r6,#0x00,00101$
	inc	r7
	sjmp	00101$
00104$:
	C$I2C_Functions.c$363$1_0$52 ==.
;	I2C_Functions.c:363: }
	C$I2C_Functions.c$363$1_0$52 ==.
	XG$delay1$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'reeprom_seq'
;------------------------------------------------------------
;Start_Address             Allocated with name '_reeprom_seq_PARM_2'
;End_Address               Allocated with name '_reeprom_seq_PARM_3'
;block                     Allocated with name '_reeprom_seq_block_65536_54'
;a                         Allocated with name '_reeprom_seq_a_65536_55'
;b                         Allocated with name '_reeprom_seq_b_65536_55'
;i                         Allocated with name '_reeprom_seq_i_65536_55'
;res                       Allocated with name '_reeprom_seq_res_65536_55'
;j                         Allocated with name '_reeprom_seq_j_65536_55'
;aux                       Allocated with name '_reeprom_seq_aux_65536_55'
;WRCMD                     Allocated with name '_reeprom_seq_WRCMD_65536_55'
;------------------------------------------------------------
	G$reeprom_seq$0$0 ==.
	C$I2C_Functions.c$364$1_0$55 ==.
;	I2C_Functions.c:364: void reeprom_seq(uint16_t block,int Start_Address,int End_Address)
;	-----------------------------------------
;	 function reeprom_seq
;	-----------------------------------------
_reeprom_seq:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_reeprom_seq_block_65536_54
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$I2C_Functions.c$366$1_0$55 ==.
;	I2C_Functions.c:366: volatile uint8_t a=Start_Address%16;
	mov	dptr,#_reeprom_seq_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__modsint_PARM_2
	mov	a,#0x10
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	__modsint
	mov	r4,dpl
	mov	dptr,#_reeprom_seq_a_65536_55
	mov	a,r4
	movx	@dptr,a
	C$I2C_Functions.c$367$1_0$55 ==.
;	I2C_Functions.c:367: uint8_t b=End_Address%16;
	mov	dptr,#_reeprom_seq_PARM_3
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#__modsint_PARM_2
	mov	a,#0x10
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	push	ar5
	push	ar4
	lcall	__modsint
	mov	r2,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	C$I2C_Functions.c$368$1_0$55 ==.
;	I2C_Functions.c:368: volatile uint16_t i,res=0,j;
	mov	dptr,#_reeprom_seq_res_65536_55
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$I2C_Functions.c$371$1_0$55 ==.
;	I2C_Functions.c:371: Start_Address=Start_Address-a;
	mov	dptr,#_reeprom_seq_a_65536_55
	movx	a,@dptr
	mov	r1,a
	mov	r3,#0x00
	mov	dptr,#_reeprom_seq_PARM_2
	mov	a,r6
	clr	c
	subb	a,r1
	movx	@dptr,a
	mov	a,r7
	subb	a,r3
	inc	dptr
	movx	@dptr,a
	C$I2C_Functions.c$372$1_0$55 ==.
;	I2C_Functions.c:372: End_Address=End_Address+16-b;
	mov	a,#0x10
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	r7,#0x00
	mov	dptr,#_reeprom_seq_PARM_3
	mov	a,r4
	clr	c
	subb	a,r2
	movx	@dptr,a
	mov	a,r5
	subb	a,r7
	inc	dptr
	movx	@dptr,a
	C$I2C_Functions.c$378$1_0$55 ==.
;	I2C_Functions.c:378: aux = block; // preparing the write command
	mov	dptr,#_reeprom_seq_block_65536_54
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dptr,#_reeprom_seq_aux_65536_55
	mov	a,r6
	movx	@dptr,a
	C$I2C_Functions.c$379$1_0$55 ==.
;	I2C_Functions.c:379: aux = aux << 1; // move A0, A1 & A2 to their positions
	movx	a,@dptr
	add	a,acc
	movx	@dptr,a
	C$I2C_Functions.c$380$1_0$55 ==.
;	I2C_Functions.c:380: aux = aux & 0xFE; // clear r/w bit
	movx	a,@dptr
	anl	acc,#0xfe
	movx	@dptr,a
	C$I2C_Functions.c$381$1_0$55 ==.
;	I2C_Functions.c:381: WRCMD = aux | 0xA0; // build the write command
	mov	dptr,#_reeprom_seq_aux_65536_55
	movx	a,@dptr
	mov	dptr,#_reeprom_seq_WRCMD_65536_55
	orl	a,#0xa0
	movx	@dptr,a
	C$I2C_Functions.c$382$1_0$55 ==.
;	I2C_Functions.c:382: outs(WRCMD); // send the write command with start condition
	movx	a,@dptr
	mov	dpl,a
	lcall	_outs
	C$I2C_Functions.c$383$1_0$55 ==.
;	I2C_Functions.c:383: out(Start_Address); // send address
	mov	dptr,#_reeprom_seq_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar5,r6
	mov	dpl,r5
	push	ar7
	push	ar6
	lcall	_out
	C$I2C_Functions.c$384$1_0$55 ==.
;	I2C_Functions.c:384: aux = aux << 1; // move A0, A1 & A2 to their positions
	mov	dptr,#_reeprom_seq_aux_65536_55
	movx	a,@dptr
	add	a,acc
	movx	@dptr,a
	C$I2C_Functions.c$385$1_0$55 ==.
;	I2C_Functions.c:385: aux = aux & 0xFE; // clear r/w bit
	movx	a,@dptr
	anl	acc,#0xfe
	movx	@dptr,a
	C$I2C_Functions.c$386$1_0$55 ==.
;	I2C_Functions.c:386: WRCMD = aux | 0xA1; // Make R/W = 1 ///There is another start in outs
	mov	dptr,#_reeprom_seq_aux_65536_55
	movx	a,@dptr
	mov	dptr,#_reeprom_seq_WRCMD_65536_55
	orl	a,#0xa1
	movx	@dptr,a
	C$I2C_Functions.c$387$1_0$55 ==.
;	I2C_Functions.c:387: outs(WRCMD); // send the write command with start condition/// Pulling up SCK
	movx	a,@dptr
	mov	dpl,a
	lcall	_outs
	C$I2C_Functions.c$388$1_0$55 ==.
;	I2C_Functions.c:388: delay1();
	lcall	_delay1
	pop	ar6
	pop	ar7
	C$I2C_Functions.c$389$1_0$55 ==.
;	I2C_Functions.c:389: i=Start_Address;
	mov	dptr,#_reeprom_seq_i_65536_55
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$I2C_Functions.c$390$4_0$64 ==.
;	I2C_Functions.c:390: while(i!=End_Address)
	mov	dptr,#_reeprom_seq_PARM_3
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00117$:
	mov	dptr,#_reeprom_seq_i_65536_55
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	ar2,r6
	mov	ar3,r7
	mov	a,r4
	cjne	a,ar2,00165$
	mov	a,r5
	cjne	a,ar3,00165$
	ljmp	00119$
00165$:
	C$I2C_Functions.c$391$2_0$56 ==.
;	I2C_Functions.c:391: {   if(i%(0x100)==0)
	mov	dptr,#_reeprom_seq_i_65536_55
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r4
	jz	00167$
	ljmp	00105$
00167$:
	C$I2C_Functions.c$393$3_0$57 ==.
;	I2C_Functions.c:393: printf_tiny("\n\r    ");
	push	ar7
	push	ar6
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$I2C_Functions.c$394$3_0$57 ==.
;	I2C_Functions.c:394: printf_tiny("\n\r********************************************************************");
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$I2C_Functions.c$395$3_0$57 ==.
;	I2C_Functions.c:395: printf_tiny("\n\rAddr");
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$I2C_Functions.c$396$3_0$57 ==.
;	I2C_Functions.c:396: printf_tiny("                               DATA");
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$I2C_Functions.c$397$3_0$57 ==.
;	I2C_Functions.c:397: printf_tiny("\n\r********************************************************************\n\r");
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
	C$I2C_Functions.c$398$4_0$58 ==.
;	I2C_Functions.c:398: for(j=0;j<16;j++)
	mov	dptr,#_reeprom_seq_j_65536_55
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00121$:
	mov	dptr,#_reeprom_seq_j_65536_55
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	clr	c
	mov	a,r4
	subb	a,#0x10
	mov	a,r5
	subb	a,#0x00
	jnc	00105$
	C$I2C_Functions.c$400$5_0$59 ==.
;	I2C_Functions.c:400: if(j==0)
	mov	dptr,#_reeprom_seq_j_65536_55
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	orl	a,r4
	jnz	00102$
	C$I2C_Functions.c$402$6_0$60 ==.
;	I2C_Functions.c:402: printf_tiny("       ",j);
	mov	dptr,#_reeprom_seq_j_65536_55
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	push	ar7
	push	ar6
	push	ar4
	push	ar5
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
	pop	ar7
00102$:
	C$I2C_Functions.c$404$5_0$59 ==.
;	I2C_Functions.c:404: printf_tiny("%x   ",j);
	mov	dptr,#_reeprom_seq_j_65536_55
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	push	ar7
	push	ar6
	push	ar4
	push	ar5
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
	pop	ar7
	C$I2C_Functions.c$398$4_0$58 ==.
;	I2C_Functions.c:398: for(j=0;j<16;j++)
	mov	dptr,#_reeprom_seq_j_65536_55
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_reeprom_seq_j_65536_55
	mov	a,#0x01
	add	a,r4
	movx	@dptr,a
	clr	a
	addc	a,r5
	inc	dptr
	movx	@dptr,a
	sjmp	00121$
00105$:
	C$I2C_Functions.c$407$2_0$56 ==.
;	I2C_Functions.c:407: if(i%16==0)
	mov	dptr,#_reeprom_seq_i_65536_55
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r4
	anl	a,#0x0f
	jz	00171$
	ljmp	00113$
00171$:
	C$I2C_Functions.c$408$3_0$61 ==.
;	I2C_Functions.c:408: {   if(i==0)
	mov	dptr,#_reeprom_seq_i_65536_55
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	orl	a,r4
	jnz	00110$
	C$I2C_Functions.c$410$4_0$62 ==.
;	I2C_Functions.c:410: printf("\n\r0x00%x:",i);
	mov	dptr,#_reeprom_seq_i_65536_55
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	push	ar7
	push	ar6
	push	ar4
	push	ar5
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar6
	pop	ar7
	sjmp	00113$
00110$:
	C$I2C_Functions.c$412$3_0$61 ==.
;	I2C_Functions.c:412: else if(i<(0x100))
	mov	dptr,#_reeprom_seq_i_65536_55
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	clr	c
	subb	a,#0x01
	jnc	00107$
	C$I2C_Functions.c$414$4_0$63 ==.
;	I2C_Functions.c:414: printf("\n\r0x0%x:",i);
	mov	dptr,#_reeprom_seq_i_65536_55
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	push	ar7
	push	ar6
	push	ar4
	push	ar5
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar6
	pop	ar7
	sjmp	00113$
00107$:
	C$I2C_Functions.c$418$4_0$64 ==.
;	I2C_Functions.c:418: printf("\n\r0x%x:",i);
	mov	dptr,#_reeprom_seq_i_65536_55
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	push	ar7
	push	ar6
	push	ar4
	push	ar5
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar6
	pop	ar7
00113$:
	C$I2C_Functions.c$421$2_0$56 ==.
;	I2C_Functions.c:421: aux=in();
	push	ar7
	push	ar6
	lcall	_in
	mov	a,dpl
	mov	dptr,#_reeprom_seq_aux_65536_55
	movx	@dptr,a
	C$I2C_Functions.c$422$2_0$56 ==.
;	I2C_Functions.c:422: ack();
	lcall	_ack
	C$I2C_Functions.c$423$2_0$56 ==.
;	I2C_Functions.c:423: delay1();
	lcall	_delay1
	pop	ar6
	pop	ar7
	C$I2C_Functions.c$424$2_0$56 ==.
;	I2C_Functions.c:424: if(aux<0x10)
	mov	dptr,#_reeprom_seq_aux_65536_55
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x10,00174$
00174$:
	jnc	00115$
	C$I2C_Functions.c$426$3_0$65 ==.
;	I2C_Functions.c:426: printf("0%x  ",aux);
	mov	dptr,#_reeprom_seq_aux_65536_55
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	a,#___str_10
	push	acc
	mov	a,#(___str_10 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar6
	pop	ar7
	sjmp	00116$
00115$:
	C$I2C_Functions.c$430$3_0$66 ==.
;	I2C_Functions.c:430: printf("%x  ",aux);
	mov	dptr,#_reeprom_seq_aux_65536_55
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar6
	pop	ar7
00116$:
	C$I2C_Functions.c$433$2_0$56 ==.
;	I2C_Functions.c:433: i++;
	mov	dptr,#_reeprom_seq_i_65536_55
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_reeprom_seq_i_65536_55
	mov	a,#0x01
	add	a,r4
	movx	@dptr,a
	clr	a
	addc	a,r5
	inc	dptr
	movx	@dptr,a
	ljmp	00117$
00119$:
	C$I2C_Functions.c$435$1_0$55 ==.
;	I2C_Functions.c:435: stop();
	lcall	_stop
	C$I2C_Functions.c$436$1_0$55 ==.
;	I2C_Functions.c:436: }
	C$I2C_Functions.c$436$1_0$55 ==.
	XG$reeprom_seq$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dummy_read'
;------------------------------------------------------------
	G$dummy_read$0$0 ==.
	C$I2C_Functions.c$437$1_0$67 ==.
;	I2C_Functions.c:437: void dummy_read()
;	-----------------------------------------
;	 function dummy_read
;	-----------------------------------------
_dummy_read:
	C$I2C_Functions.c$439$1_0$67 ==.
;	I2C_Functions.c:439: reeprom(0x00,0x00);
	mov	dptr,#_reeprom_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,#0x00
	lcall	_reeprom
	C$I2C_Functions.c$440$1_0$67 ==.
;	I2C_Functions.c:440: }
	C$I2C_Functions.c$440$1_0$67 ==.
	XG$dummy_read$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dummy_write'
;------------------------------------------------------------
;Address                   Allocated with name '_dummy_write_PARM_2'
;block                     Allocated with name '_dummy_write_block_65536_68'
;------------------------------------------------------------
	G$dummy_write$0$0 ==.
	C$I2C_Functions.c$441$1_0$69 ==.
;	I2C_Functions.c:441: void dummy_write(uint16_t block,uint16_t Address)
;	-----------------------------------------
;	 function dummy_write
;	-----------------------------------------
_dummy_write:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_dummy_write_block_65536_68
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$I2C_Functions.c$443$1_0$69 ==.
;	I2C_Functions.c:443: weeprom(block,Address,0x00);
	mov	dptr,#_dummy_write_block_65536_68
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dptr,#_dummy_write_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	dptr,#_weeprom_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	dptr,#_weeprom_PARM_3
	clr	a
	movx	@dptr,a
	mov	dpl,r6
	lcall	_weeprom
	C$I2C_Functions.c$444$1_0$69 ==.
;	I2C_Functions.c:444: }
	C$I2C_Functions.c$444$1_0$69 ==.
	XG$dummy_write$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_blocknumber'
;------------------------------------------------------------
;Add                       Allocated with name '_get_blocknumber_Add_65536_70'
;------------------------------------------------------------
	G$get_blocknumber$0$0 ==.
	C$I2C_Functions.c$445$1_0$71 ==.
;	I2C_Functions.c:445: uint8_t get_blocknumber(uint16_t Add)
;	-----------------------------------------
;	 function get_blocknumber
;	-----------------------------------------
_get_blocknumber:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_get_blocknumber_Add_65536_70
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$I2C_Functions.c$447$1_0$71 ==.
;	I2C_Functions.c:447: if(Add<0x100)
	mov	dptr,#_get_blocknumber_Add_65536_70
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	subb	a,#0x01
	jnc	00123$
	C$I2C_Functions.c$448$1_0$71 ==.
;	I2C_Functions.c:448: return 0;
	mov	dpl,#0x00
	sjmp	00125$
00123$:
	C$I2C_Functions.c$449$1_0$71 ==.
;	I2C_Functions.c:449: else if(Add<0x200)
	mov	a,#0x100 - 0x02
	add	a,r7
	jc	00120$
	C$I2C_Functions.c$450$1_0$71 ==.
;	I2C_Functions.c:450: return 1;
	mov	dpl,#0x01
	sjmp	00125$
00120$:
	C$I2C_Functions.c$451$1_0$71 ==.
;	I2C_Functions.c:451: else if(Add<0x300)
	mov	a,#0x100 - 0x03
	add	a,r7
	jc	00117$
	C$I2C_Functions.c$452$1_0$71 ==.
;	I2C_Functions.c:452: return 2;
	mov	dpl,#0x02
	sjmp	00125$
00117$:
	C$I2C_Functions.c$453$1_0$71 ==.
;	I2C_Functions.c:453: else if(Add<0x400)
	mov	a,#0x100 - 0x04
	add	a,r7
	jc	00114$
	C$I2C_Functions.c$454$1_0$71 ==.
;	I2C_Functions.c:454: return 3;
	mov	dpl,#0x03
	sjmp	00125$
00114$:
	C$I2C_Functions.c$455$1_0$71 ==.
;	I2C_Functions.c:455: else if(Add<0x500)
	mov	a,#0x100 - 0x05
	add	a,r7
	jc	00111$
	C$I2C_Functions.c$456$1_0$71 ==.
;	I2C_Functions.c:456: return 4;
	mov	dpl,#0x04
	sjmp	00125$
00111$:
	C$I2C_Functions.c$457$1_0$71 ==.
;	I2C_Functions.c:457: else if(Add<0x600)
	mov	a,#0x100 - 0x06
	add	a,r7
	jc	00108$
	C$I2C_Functions.c$458$1_0$71 ==.
;	I2C_Functions.c:458: return 5;
	mov	dpl,#0x05
	sjmp	00125$
00108$:
	C$I2C_Functions.c$459$1_0$71 ==.
;	I2C_Functions.c:459: else if(Add<0x700)
	mov	a,#0x100 - 0x07
	add	a,r7
	jc	00105$
	C$I2C_Functions.c$460$1_0$71 ==.
;	I2C_Functions.c:460: return 6;
	mov	dpl,#0x06
	sjmp	00125$
00105$:
	C$I2C_Functions.c$461$1_0$71 ==.
;	I2C_Functions.c:461: else if(Add<0x800)
	mov	a,#0x100 - 0x08
	add	a,r7
	jc	00102$
	C$I2C_Functions.c$462$1_0$71 ==.
;	I2C_Functions.c:462: return 7;
	mov	dpl,#0x07
	sjmp	00125$
00102$:
	C$I2C_Functions.c$464$1_0$71 ==.
;	I2C_Functions.c:464: return 8;
	mov	dpl,#0x08
00125$:
	C$I2C_Functions.c$465$1_0$71 ==.
;	I2C_Functions.c:465: }
	C$I2C_Functions.c$465$1_0$71 ==.
	XG$get_blocknumber$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
FI2C_Functions$__str_0$0_0$0 == .
	.area CONST   (CODE)
___str_0:
	.db 0x0a
	.db 0x0d
	.ascii "    "
	.db 0x00
	.area CSEG    (CODE)
FI2C_Functions$__str_1$0_0$0 == .
	.area CONST   (CODE)
___str_1:
	.db 0x0a
	.db 0x0d
	.ascii "************************************************************"
	.ascii "********"
	.db 0x00
	.area CSEG    (CODE)
FI2C_Functions$__str_2$0_0$0 == .
	.area CONST   (CODE)
___str_2:
	.db 0x0a
	.db 0x0d
	.ascii "Addr"
	.db 0x00
	.area CSEG    (CODE)
FI2C_Functions$__str_3$0_0$0 == .
	.area CONST   (CODE)
___str_3:
	.ascii "                               DATA"
	.db 0x00
	.area CSEG    (CODE)
FI2C_Functions$__str_4$0_0$0 == .
	.area CONST   (CODE)
___str_4:
	.db 0x0a
	.db 0x0d
	.ascii "************************************************************"
	.ascii "********"
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
FI2C_Functions$__str_5$0_0$0 == .
	.area CONST   (CODE)
___str_5:
	.ascii "       "
	.db 0x00
	.area CSEG    (CODE)
FI2C_Functions$__str_6$0_0$0 == .
	.area CONST   (CODE)
___str_6:
	.ascii "%x   "
	.db 0x00
	.area CSEG    (CODE)
FI2C_Functions$__str_7$0_0$0 == .
	.area CONST   (CODE)
___str_7:
	.db 0x0a
	.db 0x0d
	.ascii "0x00%x:"
	.db 0x00
	.area CSEG    (CODE)
FI2C_Functions$__str_8$0_0$0 == .
	.area CONST   (CODE)
___str_8:
	.db 0x0a
	.db 0x0d
	.ascii "0x0%x:"
	.db 0x00
	.area CSEG    (CODE)
FI2C_Functions$__str_9$0_0$0 == .
	.area CONST   (CODE)
___str_9:
	.db 0x0a
	.db 0x0d
	.ascii "0x%x:"
	.db 0x00
	.area CSEG    (CODE)
FI2C_Functions$__str_10$0_0$0 == .
	.area CONST   (CODE)
___str_10:
	.ascii "0%x  "
	.db 0x00
	.area CSEG    (CODE)
FI2C_Functions$__str_11$0_0$0 == .
	.area CONST   (CODE)
___str_11:
	.ascii "%x  "
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
