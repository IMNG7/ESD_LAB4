;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.0 #11195 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _help
	.globl _timer0_ISR
	.globl _inttostr
	.globl _timer_init
	.globl _getchar
	.globl _lcd_gotoxy
	.globl _lcd_clear
	.globl _LCD_putch
	.globl _LCD_Init
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
	.globl _minutes
	.globl _seconds
	.globl _milli
	.globl _flag
	.globl _count
	.globl _DR_READ
	.globl _DR_WRITE
	.globl _BF_Read
	.globl _IR_Write
	.globl _hours
	.globl _time_show
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
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

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
G$hours$0_0$0==.
_hours::
	.ds 1
G$IR_Write$0_0$0 == 0xf000
_IR_Write	=	0xf000
G$BF_Read$0_0$0 == 0xf200
_BF_Read	=	0xf200
G$DR_WRITE$0_0$0 == 0xf100
_DR_WRITE	=	0xf100
G$DR_READ$0_0$0 == 0xf300
_DR_READ	=	0xf300
Lmain.main$a$1_0$34==.
_main_a_65536_34:
	.ds 24
Lmain.main$b$1_0$34==.
_main_b_65536_34:
	.ds 23
Lmain.main$choice$1_1$35==.
_main_choice_65537_35:
	.ds 1
Lmain.main$row_value$1_1$35==.
_main_row_value_65537_35:
	.ds 1
Lmain.main$column1$1_1$35==.
_main_column1_65537_35:
	.ds 1
Lmain.main$column2$1_1$35==.
_main_column2_65537_35:
	.ds 1
Lmain.main$column_value$1_1$35==.
_main_column_value_65537_35:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
G$count$0_0$0==.
_count::
	.ds 8
G$flag$0_0$0==.
_flag::
	.ds 1
G$milli$0_0$0==.
_milli::
	.ds 1
G$seconds$0_0$0==.
_seconds::
	.ds 1
G$minutes$0_0$0==.
_minutes::
	.ds 1
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
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	ljmp	_timer0_ISR
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0_ISR'
;------------------------------------------------------------
	G$timer0_ISR$0$0 ==.
	C$main.c$24$0_0$25 ==.
;	main.c:24: void timer0_ISR() __interrupt(1)
;	-----------------------------------------
;	 function timer0_ISR
;	-----------------------------------------
_timer0_ISR:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	acc
	push	dpl
	push	dph
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	push	psw
	mov	psw,#0x00
	C$main.c$25$1_0$25 ==.
;	main.c:25: {   EA=0;
;	assignBit
	clr	_EA
	C$main.c$26$1_0$25 ==.
;	main.c:26: TR0=0;
;	assignBit
	clr	_TR0
	C$main.c$27$1_0$25 ==.
;	main.c:27: TF0=0;
;	assignBit
	clr	_TF0
	C$main.c$28$1_0$25 ==.
;	main.c:28: TH0=0x4B;
	mov	_TH0,#0x4b
	C$main.c$29$1_0$25 ==.
;	main.c:29: TL0=0xFC;
	mov	_TL0,#0xfc
	C$main.c$30$1_0$25 ==.
;	main.c:30: P1_1=!P1_1;
	cpl	_P1_1
	C$main.c$31$1_0$25 ==.
;	main.c:31: TR0=1;
;	assignBit
	setb	_TR0
	C$main.c$32$1_0$25 ==.
;	main.c:32: EA=1;
;	assignBit
	setb	_EA
	C$main.c$33$1_0$25 ==.
;	main.c:33: count++;
	mov	dptr,#_count
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_count
	mov	a,#0x01
	add	a,r0
	movx	@dptr,a
	clr	a
	addc	a,r1
	inc	dptr
	movx	@dptr,a
	clr	a
	addc	a,r2
	inc	dptr
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
	clr	a
	addc	a,r4
	inc	dptr
	movx	@dptr,a
	clr	a
	addc	a,r5
	inc	dptr
	movx	@dptr,a
	clr	a
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	clr	a
	addc	a,r7
	inc	dptr
	movx	@dptr,a
	C$main.c$34$1_0$25 ==.
;	main.c:34: if(count%2==0)
	mov	dptr,#_count
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	a,r0
	jb	acc.0,00102$
	C$main.c$36$2_0$26 ==.
;	main.c:36: flag=1;
	mov	dptr,#_flag
	mov	a,#0x01
	movx	@dptr,a
	C$main.c$37$2_0$26 ==.
;	main.c:37: count=0;
	mov	dptr,#_count
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	sjmp	00104$
00102$:
	C$main.c$41$2_0$27 ==.
;	main.c:41: flag=0;
	mov	dptr,#_flag
	clr	a
	movx	@dptr,a
00104$:
	C$main.c$43$1_0$25 ==.
;	main.c:43: }
	pop	psw
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	pop	dph
	pop	dpl
	pop	acc
	C$main.c$43$1_0$25 ==.
	XG$timer0_ISR$0$0 ==.
	reti
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'time_show'
;------------------------------------------------------------
	G$time_show$0$0 ==.
	C$main.c$44$1_0$28 ==.
;	main.c:44: void time_show()
;	-----------------------------------------
;	 function time_show
;	-----------------------------------------
_time_show:
	C$main.c$46$1_0$28 ==.
;	main.c:46: if(flag==1)
	mov	dptr,#_flag
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00121$
	sjmp	00122$
00121$:
	ljmp	00107$
00122$:
	C$main.c$48$2_0$29 ==.
;	main.c:48: flag=0;
	mov	dptr,#_flag
	clr	a
	movx	@dptr,a
	C$main.c$49$2_0$29 ==.
;	main.c:49: milli++;
	mov	dptr,#_milli
	movx	a,@dptr
	inc	a
	movx	@dptr,a
	C$main.c$50$2_0$29 ==.
;	main.c:50: if(milli==10)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x0a,00102$
	C$main.c$52$3_0$30 ==.
;	main.c:52: seconds++;
	mov	dptr,#_seconds
	movx	a,@dptr
	inc	a
	movx	@dptr,a
	C$main.c$53$3_0$30 ==.
;	main.c:53: milli=0;
	mov	dptr,#_milli
	clr	a
	movx	@dptr,a
00102$:
	C$main.c$55$2_0$29 ==.
;	main.c:55: if(seconds==60)
	mov	dptr,#_seconds
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x3c,00104$
	C$main.c$57$3_0$31 ==.
;	main.c:57: minutes++;
	mov	dptr,#_minutes
	movx	a,@dptr
	inc	a
	movx	@dptr,a
	C$main.c$58$3_0$31 ==.
;	main.c:58: seconds=0;
	mov	dptr,#_seconds
	clr	a
	movx	@dptr,a
00104$:
	C$main.c$60$2_0$29 ==.
;	main.c:60: hours=minutes/60;
	mov	dptr,#_minutes
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dptr,#__divsint_PARM_2
	mov	a,#0x3c
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r7
	mov	dph,r6
	lcall	__divsint
	mov	r6,dpl
	mov	dptr,#_hours
	mov	a,r6
	movx	@dptr,a
	C$main.c$61$2_0$29 ==.
;	main.c:61: lcd_gotoxy(4,5);
	mov	dptr,#_lcd_gotoxy_PARM_2
	mov	a,#0x05
	movx	@dptr,a
	mov	dpl,#0x04
	lcall	_lcd_gotoxy
	C$main.c$62$2_0$29 ==.
;	main.c:62: inttostr(hours);
	mov	dptr,#_hours
	movx	a,@dptr
	mov	dpl,a
	lcall	_inttostr
	C$main.c$63$2_0$29 ==.
;	main.c:63: inttostr(minutes);
	mov	dptr,#_minutes
	movx	a,@dptr
	mov	dpl,a
	lcall	_inttostr
	C$main.c$64$2_0$29 ==.
;	main.c:64: inttostr(seconds);
	mov	dptr,#_seconds
	movx	a,@dptr
	mov	dpl,a
	lcall	_inttostr
	C$main.c$65$2_0$29 ==.
;	main.c:65: inttostr(milli);
	mov	dptr,#_milli
	movx	a,@dptr
	mov	dpl,a
	lcall	_inttostr
00107$:
	C$main.c$67$1_0$28 ==.
;	main.c:67: }
	C$main.c$67$1_0$28 ==.
	XG$time_show$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'help'
;------------------------------------------------------------
	G$help$0$0 ==.
	C$main.c$68$1_0$32 ==.
;	main.c:68: void help()
;	-----------------------------------------
;	 function help
;	-----------------------------------------
_help:
	C$main.c$70$1_0$32 ==.
;	main.c:70: printf_tiny("\n\r Welcome to the World Of working(maybe) LCD.");
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$main.c$71$1_0$32 ==.
;	main.c:71: printf_tiny("\n\r There are some instructions to read before to proceed.");
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$main.c$72$1_0$32 ==.
;	main.c:72: printf_tiny("\n\r This lab was aimed to allow the students to learn the implementation of the LCD.");
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$main.c$73$1_0$32 ==.
;	main.c:73: printf_tiny("\n\r The LCD has 4 rows and 16 columns.");
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$main.c$74$1_0$32 ==.
;	main.c:74: printf_tiny("\n\r Trying to go beyond that will give you an error.");
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$main.c$75$1_0$32 ==.
;	main.c:75: printf_tiny("\n\r if you want to print a character, we have an option for you.");
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$main.c$76$1_0$32 ==.
;	main.c:76: printf_tiny("\n\r As soon as you enter the program, the timer will start.");
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$main.c$77$1_0$32 ==.
;	main.c:77: printf_tiny("\n\r If you are here for the first time, The timer is stopped for now.");
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$main.c$78$1_0$32 ==.
;	main.c:78: printf_tiny("\n\r The timer is running continuously, if you want to print the character at timer's place, its impossible.");
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$main.c$79$1_0$32 ==.
;	main.c:79: printf_tiny("\n\r Press Enter to Continue");
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$main.c$80$1_0$32 ==.
;	main.c:80: getchar();
	lcall	_getchar
	C$main.c$81$1_0$32 ==.
;	main.c:81: }
	C$main.c$81$1_0$32 ==.
	XG$help$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;a                         Allocated with name '_main_a_65536_34'
;b                         Allocated with name '_main_b_65536_34'
;ch                        Allocated with name '_main_ch_65536_34'
;choice                    Allocated with name '_main_choice_65537_35'
;row_value                 Allocated with name '_main_row_value_65537_35'
;column1                   Allocated with name '_main_column1_65537_35'
;column2                   Allocated with name '_main_column2_65537_35'
;column_value              Allocated with name '_main_column_value_65537_35'
;------------------------------------------------------------
	G$main$0$0 ==.
	C$main.c$82$1_0$34 ==.
;	main.c:82: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	C$main.c$83$2_0$34 ==.
;	main.c:83: {   char a[]={"Ye Bik Gayi Hai gormint"};
	mov	dptr,#_main_a_65536_34
	mov	a,#0x59
	movx	@dptr,a
	mov	dptr,#(_main_a_65536_34 + 0x0001)
	mov	a,#0x65
	movx	@dptr,a
	mov	dptr,#(_main_a_65536_34 + 0x0002)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_main_a_65536_34 + 0x0003)
	mov	a,#0x42
	movx	@dptr,a
	mov	dptr,#(_main_a_65536_34 + 0x0004)
	mov	a,#0x69
	movx	@dptr,a
	mov	dptr,#(_main_a_65536_34 + 0x0005)
	mov	a,#0x6b
	movx	@dptr,a
	mov	dptr,#(_main_a_65536_34 + 0x0006)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_main_a_65536_34 + 0x0007)
	mov	a,#0x47
	movx	@dptr,a
	mov	dptr,#(_main_a_65536_34 + 0x0008)
	mov	a,#0x61
	movx	@dptr,a
	mov	dptr,#(_main_a_65536_34 + 0x0009)
	mov	a,#0x79
	movx	@dptr,a
	mov	dptr,#(_main_a_65536_34 + 0x000a)
	mov	a,#0x69
	movx	@dptr,a
	mov	dptr,#(_main_a_65536_34 + 0x000b)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_main_a_65536_34 + 0x000c)
	mov	a,#0x48
	movx	@dptr,a
	mov	dptr,#(_main_a_65536_34 + 0x000d)
	mov	a,#0x61
	movx	@dptr,a
	mov	dptr,#(_main_a_65536_34 + 0x000e)
	mov	a,#0x69
	movx	@dptr,a
	mov	dptr,#(_main_a_65536_34 + 0x000f)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_main_a_65536_34 + 0x0010)
	mov	a,#0x67
	movx	@dptr,a
	mov	dptr,#(_main_a_65536_34 + 0x0011)
	mov	a,#0x6f
	movx	@dptr,a
	mov	dptr,#(_main_a_65536_34 + 0x0012)
	mov	a,#0x72
	movx	@dptr,a
	mov	dptr,#(_main_a_65536_34 + 0x0013)
	mov	a,#0x6d
	movx	@dptr,a
	mov	dptr,#(_main_a_65536_34 + 0x0014)
	mov	a,#0x69
	movx	@dptr,a
	mov	dptr,#(_main_a_65536_34 + 0x0015)
	mov	a,#0x6e
	movx	@dptr,a
	mov	dptr,#(_main_a_65536_34 + 0x0016)
	mov	a,#0x74
	movx	@dptr,a
	mov	dptr,#(_main_a_65536_34 + 0x0017)
	clr	a
	movx	@dptr,a
	C$main.c$84$2_0$34 ==.
;	main.c:84: char b[]={"My Name is Nitik Gupta"};
	mov	dptr,#_main_b_65536_34
	mov	a,#0x4d
	movx	@dptr,a
	mov	dptr,#(_main_b_65536_34 + 0x0001)
	mov	a,#0x79
	movx	@dptr,a
	mov	dptr,#(_main_b_65536_34 + 0x0002)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_main_b_65536_34 + 0x0003)
	mov	a,#0x4e
	movx	@dptr,a
	mov	dptr,#(_main_b_65536_34 + 0x0004)
	mov	a,#0x61
	movx	@dptr,a
	mov	dptr,#(_main_b_65536_34 + 0x0005)
	mov	a,#0x6d
	movx	@dptr,a
	mov	dptr,#(_main_b_65536_34 + 0x0006)
	mov	a,#0x65
	movx	@dptr,a
	mov	dptr,#(_main_b_65536_34 + 0x0007)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_main_b_65536_34 + 0x0008)
	mov	a,#0x69
	movx	@dptr,a
	mov	dptr,#(_main_b_65536_34 + 0x0009)
	mov	a,#0x73
	movx	@dptr,a
	mov	dptr,#(_main_b_65536_34 + 0x000a)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_main_b_65536_34 + 0x000b)
	mov	a,#0x4e
	movx	@dptr,a
	mov	dptr,#(_main_b_65536_34 + 0x000c)
	mov	a,#0x69
	movx	@dptr,a
	mov	dptr,#(_main_b_65536_34 + 0x000d)
	mov	a,#0x74
	movx	@dptr,a
	mov	dptr,#(_main_b_65536_34 + 0x000e)
	mov	a,#0x69
	movx	@dptr,a
	mov	dptr,#(_main_b_65536_34 + 0x000f)
	mov	a,#0x6b
	movx	@dptr,a
	mov	dptr,#(_main_b_65536_34 + 0x0010)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_main_b_65536_34 + 0x0011)
	mov	a,#0x47
	movx	@dptr,a
	mov	dptr,#(_main_b_65536_34 + 0x0012)
	mov	a,#0x75
	movx	@dptr,a
	mov	dptr,#(_main_b_65536_34 + 0x0013)
	mov	a,#0x70
	movx	@dptr,a
	mov	dptr,#(_main_b_65536_34 + 0x0014)
	mov	a,#0x74
	movx	@dptr,a
	mov	dptr,#(_main_b_65536_34 + 0x0015)
	mov	a,#0x61
	movx	@dptr,a
	mov	dptr,#(_main_b_65536_34 + 0x0016)
	clr	a
	movx	@dptr,a
	C$main.c$86$1_0$34 ==.
;	main.c:86: milli=0,seconds=0,minutes=0;
	mov	dptr,#_milli
	movx	@dptr,a
	mov	dptr,#_seconds
	movx	@dptr,a
	mov	dptr,#_minutes
	movx	@dptr,a
	C$main.c$87$2_0$35 ==.
;	main.c:87: volatile uint8_t choice=1,row_value,column1,column2,column_value;
	mov	dptr,#_main_choice_65537_35
	inc	a
	movx	@dptr,a
	C$main.c$88$1_1$35 ==.
;	main.c:88: help();
	lcall	_help
	C$main.c$89$1_1$35 ==.
;	main.c:89: timer_init();
	lcall	_timer_init
	C$main.c$93$1_1$35 ==.
;	main.c:93: LCD_Init();
	lcall	_LCD_Init
	C$main.c$105$1_1$35 ==.
;	main.c:105: do
00130$:
	C$main.c$106$2_1$36 ==.
;	main.c:106: {   if(choice!=0)
	mov	dptr,#_main_choice_65537_35
	movx	a,@dptr
	jnz	00184$
	ljmp	00102$
00184$:
	C$main.c$107$3_1$37 ==.
;	main.c:107: {   printf_tiny("\n\r Your Options Are:");
	mov	a,#___str_12
	push	acc
	mov	a,#(___str_12 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$main.c$108$3_1$37 ==.
;	main.c:108: printf_tiny("\n\r 1. Print the character at the starting.");
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$main.c$109$3_1$37 ==.
;	main.c:109: printf_tiny("\n\r 2. Print the character at your place of choosing.");
	mov	a,#___str_14
	push	acc
	mov	a,#(___str_14 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$main.c$110$3_1$37 ==.
;	main.c:110: printf_tiny("\n\r 3. Reset The clock.");
	mov	a,#___str_15
	push	acc
	mov	a,#(___str_15 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$main.c$111$3_1$37 ==.
;	main.c:111: printf_tiny("\n\r 4. Stop The clock.");
	mov	a,#___str_16
	push	acc
	mov	a,#(___str_16 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$main.c$112$3_1$37 ==.
;	main.c:112: printf_tiny("\n\r 5. Restart The clock.");
	mov	a,#___str_17
	push	acc
	mov	a,#(___str_17 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$main.c$113$3_1$37 ==.
;	main.c:113: printf_tiny("\n\r 6. Clear the Screen.");
	mov	a,#___str_18
	push	acc
	mov	a,#(___str_18 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$main.c$114$3_1$37 ==.
;	main.c:114: printf_tiny("\n\r 7. Help Menu");
	mov	a,#___str_19
	push	acc
	mov	a,#(___str_19 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$main.c$115$3_1$37 ==.
;	main.c:115: printf_tiny("\n\r 8. Exit");
	mov	a,#___str_20
	push	acc
	mov	a,#(___str_20 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$main.c$116$3_1$37 ==.
;	main.c:116: printf_tiny("\n\r Enter your choice:");
	mov	a,#___str_21
	push	acc
	mov	a,#(___str_21 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
00102$:
	C$main.c$118$2_1$36 ==.
;	main.c:118: choice=0;
	mov	dptr,#_main_choice_65537_35
	clr	a
	movx	@dptr,a
	C$main.c$119$2_1$36 ==.
;	main.c:119: choice=getchar();
	lcall	_getchar
	mov	r6,dpl
	mov	dptr,#_main_choice_65537_35
	mov	a,r6
	movx	@dptr,a
	C$main.c$120$2_1$36 ==.
;	main.c:120: switch(choice)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x30,00185$
00185$:
	jnc	00186$
	ljmp	00131$
00186$:
	mov	a,r7
	add	a,#0xff - 0x38
	jnc	00187$
	ljmp	00131$
00187$:
	mov	a,r7
	add	a,#0xd0
	mov	r7,a
	add	a,#(00188$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r7
	add	a,#(00189$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00188$:
	.db	00131$
	.db	00104$
	.db	00105$
	.db	00122$
	.db	00123$
	.db	00124$
	.db	00125$
	.db	00126$
	.db	00127$
00189$:
	.db	00131$>>8
	.db	00104$>>8
	.db	00105$>>8
	.db	00122$>>8
	.db	00123$>>8
	.db	00124$>>8
	.db	00125$>>8
	.db	00126$>>8
	.db	00127$>>8
	C$main.c$124$3_1$38 ==.
;	main.c:124: case '1':   printf_tiny("\n\rEnter the character:");
00104$:
	mov	a,#___str_22
	push	acc
	mov	a,#(___str_22 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$main.c$125$3_1$38 ==.
;	main.c:125: ch=getchar();
	lcall	_getchar
	mov	r6,dpl
	C$main.c$126$3_1$38 ==.
;	main.c:126: printf_tiny("%c",ch);
	mov	ar5,r6
	mov	r7,#0x00
	push	ar6
	push	ar5
	push	ar7
	mov	a,#___str_23
	push	acc
	mov	a,#(___str_23 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	C$main.c$127$3_1$38 ==.
;	main.c:127: lcd_gotoxy(1,1);
	mov	dptr,#_lcd_gotoxy_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_lcd_gotoxy
	pop	ar6
	C$main.c$128$3_1$38 ==.
;	main.c:128: LCD_putch(ch);
	mov	dpl,r6
	lcall	_LCD_putch
	C$main.c$129$3_1$38 ==.
;	main.c:129: break;
	ljmp	00131$
	C$main.c$130$3_1$38 ==.
;	main.c:130: case '2':
00105$:
	C$main.c$131$3_1$38 ==.
;	main.c:131: printf_tiny("\n\rEnter the row:");
	mov	a,#___str_24
	push	acc
	mov	a,#(___str_24 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$main.c$132$3_1$38 ==.
;	main.c:132: do
00110$:
	C$main.c$134$4_1$39 ==.
;	main.c:134: row_value=getchar();
	lcall	_getchar
	mov	r6,dpl
	mov	dptr,#_main_row_value_65537_35
	mov	a,r6
	movx	@dptr,a
	C$main.c$135$4_1$39 ==.
;	main.c:135: if(row_value>'5' || row_value =='0')
	movx	a,@dptr
	add	a,#0xff - 0x35
	jc	00106$
	mov	dptr,#_main_row_value_65537_35
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x30,00111$
00106$:
	C$main.c$137$5_1$40 ==.
;	main.c:137: printf_tiny("\n\r Sorry wrong choice, Enter Again.");
	mov	a,#___str_25
	push	acc
	mov	a,#(___str_25 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
00111$:
	C$main.c$139$3_1$38 ==.
;	main.c:139: }while(!(row_value>'0' && row_value<'5'));
	mov	dptr,#_main_row_value_65537_35
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x30
	jnc	00110$
	mov	dptr,#_main_row_value_65537_35
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x35,00194$
00194$:
	jnc	00110$
	C$main.c$140$3_1$38 ==.
;	main.c:140: printf_tiny("%c",row_value);
	mov	dptr,#_main_row_value_65537_35
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	push	ar7
	push	ar6
	mov	a,#___str_23
	push	acc
	mov	a,#(___str_23 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	C$main.c$141$3_1$38 ==.
;	main.c:141: printf_tiny("\n\rEnter the column:");
	mov	a,#___str_26
	push	acc
	mov	a,#(___str_26 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$main.c$142$3_1$38 ==.
;	main.c:142: do
00119$:
	C$main.c$144$4_1$41 ==.
;	main.c:144: column1=getchar();
	lcall	_getchar
	mov	r6,dpl
	mov	dptr,#_main_column1_65537_35
	mov	a,r6
	movx	@dptr,a
	C$main.c$145$4_1$41 ==.
;	main.c:145: column1=column1-'0';
	movx	a,@dptr
	add	a,#0xd0
	movx	@dptr,a
	C$main.c$146$4_1$41 ==.
;	main.c:146: if(column1==1||column1==0)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00196$
	sjmp	00113$
00196$:
	mov	dptr,#_main_column1_65537_35
	movx	a,@dptr
	jnz	00114$
00113$:
	C$main.c$147$5_1$42 ==.
;	main.c:147: {   column2=getchar();
	lcall	_getchar
	mov	r6,dpl
	mov	dptr,#_main_column2_65537_35
	mov	a,r6
	movx	@dptr,a
	C$main.c$148$5_1$42 ==.
;	main.c:148: column2=column2-'0';
	movx	a,@dptr
	add	a,#0xd0
	movx	@dptr,a
	C$main.c$149$5_1$42 ==.
;	main.c:149: column_value=column1*10+column2;
	mov	dptr,#_main_column1_65537_35
	movx	a,@dptr
	mov	b,#0x0a
	mul	ab
	mov	r7,a
	mov	dptr,#_main_column2_65537_35
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_main_column_value_65537_35
	add	a,r7
	movx	@dptr,a
	sjmp	00115$
00114$:
	C$main.c$153$5_1$43 ==.
;	main.c:153: column2=0;
	mov	dptr,#_main_column2_65537_35
	clr	a
	movx	@dptr,a
	C$main.c$154$5_1$43 ==.
;	main.c:154: column_value=column1;
	mov	dptr,#_main_column1_65537_35
	movx	a,@dptr
	mov	dptr,#_main_column_value_65537_35
	movx	@dptr,a
00115$:
	C$main.c$158$4_1$41 ==.
;	main.c:158: if(column_value>16)
	mov	dptr,#_main_column_value_65537_35
	movx	a,@dptr
	add	a,#0xff - 0x10
	jnc	00120$
	C$main.c$160$5_1$44 ==.
;	main.c:160: printf_tiny("\n\r Sorry wrong choice, Enter Again.");
	mov	a,#___str_25
	push	acc
	mov	a,#(___str_25 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
00120$:
	C$main.c$162$3_1$38 ==.
;	main.c:162: }while((column_value>16));
	mov	dptr,#_main_column_value_65537_35
	movx	a,@dptr
	add	a,#0xff - 0x10
	jc	00119$
	C$main.c$163$3_1$38 ==.
;	main.c:163: printf_tiny("%d",column_value);
	mov	dptr,#_main_column_value_65537_35
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	push	ar7
	push	ar6
	mov	a,#___str_27
	push	acc
	mov	a,#(___str_27 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	C$main.c$164$3_1$38 ==.
;	main.c:164: printf_tiny("\n\rEnter the character:");
	mov	a,#___str_22
	push	acc
	mov	a,#(___str_22 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$main.c$165$3_1$38 ==.
;	main.c:165: ch=getchar();
	lcall	_getchar
	mov	r6,dpl
	C$main.c$166$3_1$38 ==.
;	main.c:166: printf_tiny("%c",ch);
	mov	ar5,r6
	mov	r7,#0x00
	push	ar6
	push	ar5
	push	ar7
	mov	a,#___str_23
	push	acc
	mov	a,#(___str_23 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	C$main.c$167$3_1$38 ==.
;	main.c:167: lcd_gotoxy(row_value-'0',column_value);
	mov	dptr,#_main_row_value_65537_35
	movx	a,@dptr
	add	a,#0xd0
	mov	r7,a
	mov	dptr,#_main_column_value_65537_35
	movx	a,@dptr
	mov	dptr,#_lcd_gotoxy_PARM_2
	movx	@dptr,a
	mov	dpl,r7
	lcall	_lcd_gotoxy
	pop	ar6
	C$main.c$168$3_1$38 ==.
;	main.c:168: LCD_putch(ch);
	mov	dpl,r6
	lcall	_LCD_putch
	C$main.c$169$3_1$38 ==.
;	main.c:169: break;
	C$main.c$171$3_1$38 ==.
;	main.c:171: case '3': milli=0,seconds=0,minutes=0;
	sjmp	00131$
00122$:
	mov	dptr,#_milli
	clr	a
	movx	@dptr,a
	mov	dptr,#_seconds
	movx	@dptr,a
	mov	dptr,#_minutes
	movx	@dptr,a
	C$main.c$172$3_1$38 ==.
;	main.c:172: printf_tiny("\n\r Clock Successfully Reset");
	mov	a,#___str_28
	push	acc
	mov	a,#(___str_28 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$main.c$173$3_1$38 ==.
;	main.c:173: break;
	C$main.c$174$3_1$38 ==.
;	main.c:174: case '4': TR0=0;
	sjmp	00131$
00123$:
;	assignBit
	clr	_TR0
	C$main.c$175$3_1$38 ==.
;	main.c:175: printf_tiny("\n\r LCD Cleared Successfully ");
	mov	a,#___str_29
	push	acc
	mov	a,#(___str_29 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$main.c$176$3_1$38 ==.
;	main.c:176: break;
	C$main.c$177$3_1$38 ==.
;	main.c:177: case '5':   TR0=1;
	sjmp	00131$
00124$:
;	assignBit
	setb	_TR0
	C$main.c$178$3_1$38 ==.
;	main.c:178: break;
	C$main.c$179$3_1$38 ==.
;	main.c:179: case '6' :  lcd_clear();
	sjmp	00131$
00125$:
	lcall	_lcd_clear
	C$main.c$180$3_1$38 ==.
;	main.c:180: break;
	C$main.c$181$3_1$38 ==.
;	main.c:181: case '7' :  help();
	sjmp	00131$
00126$:
	lcall	_help
	C$main.c$182$3_1$38 ==.
;	main.c:182: break;
	C$main.c$183$3_1$38 ==.
;	main.c:183: case '8': printf_tiny("\n\r Thank You for Participating");
	sjmp	00131$
00127$:
	mov	a,#___str_30
	push	acc
	mov	a,#(___str_30 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$main.c$187$1_1$35 ==.
;	main.c:187: }
00131$:
	C$main.c$188$1_1$35 ==.
;	main.c:188: }while(choice!='8');
	mov	dptr,#_main_choice_65537_35
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x38,00200$
	sjmp	00201$
00200$:
	ljmp	00130$
00201$:
	C$main.c$189$1_1$34 ==.
;	main.c:189: }
	C$main.c$189$1_1$34 ==.
	XG$main$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
Fmain$__str_0$0_0$0 == .
	.area CONST   (CODE)
___str_0:
	.db 0x0a
	.db 0x0d
	.ascii " Welcome to the World Of working(maybe) LCD."
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_1$0_0$0 == .
	.area CONST   (CODE)
___str_1:
	.db 0x0a
	.db 0x0d
	.ascii " There are some instructions to read before to proceed."
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_2$0_0$0 == .
	.area CONST   (CODE)
___str_2:
	.db 0x0a
	.db 0x0d
	.ascii " This lab was aimed to allow the students to learn the imple"
	.ascii "mentation of the LCD."
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_3$0_0$0 == .
	.area CONST   (CODE)
___str_3:
	.db 0x0a
	.db 0x0d
	.ascii " The LCD has 4 rows and 16 columns."
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_4$0_0$0 == .
	.area CONST   (CODE)
___str_4:
	.db 0x0a
	.db 0x0d
	.ascii " Trying to go beyond that will give you an error."
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_5$0_0$0 == .
	.area CONST   (CODE)
___str_5:
	.db 0x0a
	.db 0x0d
	.ascii " if you want to print a character, we have an option for you"
	.ascii "."
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_6$0_0$0 == .
	.area CONST   (CODE)
___str_6:
	.db 0x0a
	.db 0x0d
	.ascii " As soon as you enter the program, the timer will start."
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_7$0_0$0 == .
	.area CONST   (CODE)
___str_7:
	.db 0x0a
	.db 0x0d
	.ascii " If you are here for the first time, The timer is stopped fo"
	.ascii "r now."
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_8$0_0$0 == .
	.area CONST   (CODE)
___str_8:
	.db 0x0a
	.db 0x0d
	.ascii " The timer is running continuously, if you want to print the"
	.ascii " character at timer's place, its impossible."
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_9$0_0$0 == .
	.area CONST   (CODE)
___str_9:
	.db 0x0a
	.db 0x0d
	.ascii " Press Enter to Continue"
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_12$0_0$0 == .
	.area CONST   (CODE)
___str_12:
	.db 0x0a
	.db 0x0d
	.ascii " Your Options Are:"
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_13$0_0$0 == .
	.area CONST   (CODE)
___str_13:
	.db 0x0a
	.db 0x0d
	.ascii " 1. Print the character at the starting."
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_14$0_0$0 == .
	.area CONST   (CODE)
___str_14:
	.db 0x0a
	.db 0x0d
	.ascii " 2. Print the character at your place of choosing."
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_15$0_0$0 == .
	.area CONST   (CODE)
___str_15:
	.db 0x0a
	.db 0x0d
	.ascii " 3. Reset The clock."
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_16$0_0$0 == .
	.area CONST   (CODE)
___str_16:
	.db 0x0a
	.db 0x0d
	.ascii " 4. Stop The clock."
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_17$0_0$0 == .
	.area CONST   (CODE)
___str_17:
	.db 0x0a
	.db 0x0d
	.ascii " 5. Restart The clock."
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_18$0_0$0 == .
	.area CONST   (CODE)
___str_18:
	.db 0x0a
	.db 0x0d
	.ascii " 6. Clear the Screen."
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_19$0_0$0 == .
	.area CONST   (CODE)
___str_19:
	.db 0x0a
	.db 0x0d
	.ascii " 7. Help Menu"
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_20$0_0$0 == .
	.area CONST   (CODE)
___str_20:
	.db 0x0a
	.db 0x0d
	.ascii " 8. Exit"
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_21$0_0$0 == .
	.area CONST   (CODE)
___str_21:
	.db 0x0a
	.db 0x0d
	.ascii " Enter your choice:"
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_22$0_0$0 == .
	.area CONST   (CODE)
___str_22:
	.db 0x0a
	.db 0x0d
	.ascii "Enter the character:"
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_23$0_0$0 == .
	.area CONST   (CODE)
___str_23:
	.ascii "%c"
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_24$0_0$0 == .
	.area CONST   (CODE)
___str_24:
	.db 0x0a
	.db 0x0d
	.ascii "Enter the row:"
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_25$0_0$0 == .
	.area CONST   (CODE)
___str_25:
	.db 0x0a
	.db 0x0d
	.ascii " Sorry wrong choice, Enter Again."
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_26$0_0$0 == .
	.area CONST   (CODE)
___str_26:
	.db 0x0a
	.db 0x0d
	.ascii "Enter the column:"
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_27$0_0$0 == .
	.area CONST   (CODE)
___str_27:
	.ascii "%d"
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_28$0_0$0 == .
	.area CONST   (CODE)
___str_28:
	.db 0x0a
	.db 0x0d
	.ascii " Clock Successfully Reset"
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_29$0_0$0 == .
	.area CONST   (CODE)
___str_29:
	.db 0x0a
	.db 0x0d
	.ascii " LCD Cleared Successfully "
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_30$0_0$0 == .
	.area CONST   (CODE)
___str_30:
	.db 0x0a
	.db 0x0d
	.ascii " Thank You for Participating"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
Fmain$__xinit_count$0_0$0 == .
__xinit__count:
	.byte #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00, #0x00
Fmain$__xinit_flag$0_0$0 == .
__xinit__flag:
	.db #0x00	; 0
Fmain$__xinit_milli$0_0$0 == .
__xinit__milli:
	.db #0x00	; 0
Fmain$__xinit_seconds$0_0$0 == .
__xinit__seconds:
	.db #0x00	; 0
Fmain$__xinit_minutes$0_0$0 == .
__xinit__minutes:
	.db #0x00	; 0
	.area CABS    (ABS,CODE)
