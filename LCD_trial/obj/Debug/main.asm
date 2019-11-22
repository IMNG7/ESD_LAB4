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
	.globl _time_show
	.globl _inttostr
	.globl _timer0_ISR
	.globl _timer_init
	.globl _lcd_gotoxy
	.globl _delay
	.globl _lcd_clear
	.globl _LCD_putstr
	.globl _lcdbusywait
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
Lmain.inttostr$a$1_0$27==.
_inttostr_a_65536_27:
	.ds 1
Lmain.inttostr$b$1_0$28==.
_inttostr_b_65536_28:
	.ds 3
Lmain.main$a$1_0$37==.
_main_a_65536_37:
	.ds 24
Lmain.main$b$1_0$37==.
_main_b_65536_37:
	.ds 6
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
	C$main.c$24$0_0$24 ==.
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
	C$main.c$25$1_0$24 ==.
;	main.c:25: {   EA=0;
;	assignBit
	clr	_EA
	C$main.c$26$1_0$24 ==.
;	main.c:26: TR0=0;
;	assignBit
	clr	_TR0
	C$main.c$27$1_0$24 ==.
;	main.c:27: TF0=0;
;	assignBit
	clr	_TF0
	C$main.c$28$1_0$24 ==.
;	main.c:28: TH0=0x4B;
	mov	_TH0,#0x4b
	C$main.c$29$1_0$24 ==.
;	main.c:29: TL0=0xFC;
	mov	_TL0,#0xfc
	C$main.c$30$1_0$24 ==.
;	main.c:30: P1_1=!P1_1;
	cpl	_P1_1
	C$main.c$31$1_0$24 ==.
;	main.c:31: TR0=1;
;	assignBit
	setb	_TR0
	C$main.c$32$1_0$24 ==.
;	main.c:32: EA=1;
;	assignBit
	setb	_EA
	C$main.c$33$1_0$24 ==.
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
	C$main.c$34$1_0$24 ==.
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
	C$main.c$36$2_0$25 ==.
;	main.c:36: flag=1;
	mov	dptr,#_flag
	mov	a,#0x01
	movx	@dptr,a
	C$main.c$37$2_0$25 ==.
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
	C$main.c$41$2_0$26 ==.
;	main.c:41: flag=0;
	mov	dptr,#_flag
	clr	a
	movx	@dptr,a
00104$:
	C$main.c$43$1_0$24 ==.
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
	C$main.c$43$1_0$24 ==.
	XG$timer0_ISR$0$0 ==.
	reti
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'inttostr'
;------------------------------------------------------------
;a                         Allocated with name '_inttostr_a_65536_27'
;b                         Allocated with name '_inttostr_b_65536_28'
;i                         Allocated with name '_inttostr_i_65536_28'
;j                         Allocated with name '_inttostr_j_65536_28'
;------------------------------------------------------------
	G$inttostr$0$0 ==.
	C$main.c$44$1_0$28 ==.
;	main.c:44: void inttostr(uint8_t a)
;	-----------------------------------------
;	 function inttostr
;	-----------------------------------------
_inttostr:
	mov	a,dpl
	mov	dptr,#_inttostr_a_65536_27
	movx	@dptr,a
	C$main.c$46$2_0$29 ==.
;	main.c:46: while(a!=0)
	mov	r7,#0x02
00101$:
	mov	dptr,#_inttostr_a_65536_27
	movx	a,@dptr
	mov	r6,a
	movx	a,@dptr
	jz	00103$
	C$main.c$47$2_0$29 ==.
;	main.c:47: {   i--;
	dec	r7
	C$main.c$48$2_0$29 ==.
;	main.c:48: b[i]=(a%10)+'0';
	mov	a,r7
	add	a,#_inttostr_b_65536_28
	mov	r4,a
	clr	a
	addc	a,#(_inttostr_b_65536_28 >> 8)
	mov	r5,a
	mov	r3,#0x00
	mov	dptr,#__modsint_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	__modsint
	mov	r1,dpl
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	mov	a,#0x30
	add	a,r1
	mov	dpl,r4
	mov	dph,r5
	movx	@dptr,a
	C$main.c$49$1_0$28 ==.
;	main.c:49: a=a/10;
	mov	dptr,#__divsint_PARM_2
	mov	a,#0x0a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r3
	lcall	__divsint
	mov	r5,dpl
	mov	r6,dph
	pop	ar7
	mov	dptr,#_inttostr_a_65536_27
	mov	a,r5
	movx	@dptr,a
	sjmp	00101$
00103$:
	C$main.c$51$1_0$28 ==.
;	main.c:51: printf_tiny("\n\r");
	push	ar7
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar7
	C$main.c$52$3_0$31 ==.
;	main.c:52: for(j=0;j<i;j++)
	mov	r6,#0x00
00106$:
	clr	c
	mov	a,r6
	subb	a,r7
	jnc	00104$
	C$main.c$53$3_0$31 ==.
;	main.c:53: {   b[j]='0';
	mov	a,r6
	add	a,#_inttostr_b_65536_28
	mov	dpl,a
	clr	a
	addc	a,#(_inttostr_b_65536_28 >> 8)
	mov	dph,a
	mov	a,#0x30
	movx	@dptr,a
	C$main.c$52$2_0$30 ==.
;	main.c:52: for(j=0;j<i;j++)
	inc	r6
	sjmp	00106$
00104$:
	C$main.c$55$1_0$28 ==.
;	main.c:55: lcdbusywait();
	lcall	_lcdbusywait
	C$main.c$56$1_0$28 ==.
;	main.c:56: LCD_putstr(b);
	mov	dptr,#_inttostr_b_65536_28
	lcall	_LCD_putstr
	C$main.c$57$1_0$28 ==.
;	main.c:57: lcdbusywait();
	lcall	_lcdbusywait
	C$main.c$58$1_0$28 ==.
;	main.c:58: DR_WRITE=':';
	mov	dptr,#_DR_WRITE
	mov	a,#0x3a
	movx	@dptr,a
	C$main.c$59$1_0$28 ==.
;	main.c:59: }
	C$main.c$59$1_0$28 ==.
	XG$inttostr$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'time_show'
;------------------------------------------------------------
	G$time_show$0$0 ==.
	C$main.c$60$1_0$32 ==.
;	main.c:60: void time_show()
;	-----------------------------------------
;	 function time_show
;	-----------------------------------------
_time_show:
	C$main.c$62$1_0$32 ==.
;	main.c:62: if(flag==1)
	mov	dptr,#_flag
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00121$
	sjmp	00122$
00121$:
	ljmp	00107$
00122$:
	C$main.c$64$2_0$33 ==.
;	main.c:64: flag=0;
	mov	dptr,#_flag
	clr	a
	movx	@dptr,a
	C$main.c$65$2_0$33 ==.
;	main.c:65: milli++;
	mov	dptr,#_milli
	movx	a,@dptr
	inc	a
	movx	@dptr,a
	C$main.c$66$2_0$33 ==.
;	main.c:66: if(milli==10)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x0a,00102$
	C$main.c$68$3_0$34 ==.
;	main.c:68: seconds++;
	mov	dptr,#_seconds
	movx	a,@dptr
	inc	a
	movx	@dptr,a
	C$main.c$69$3_0$34 ==.
;	main.c:69: milli=0;
	mov	dptr,#_milli
	clr	a
	movx	@dptr,a
00102$:
	C$main.c$71$2_0$33 ==.
;	main.c:71: if(seconds==60)
	mov	dptr,#_seconds
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x3c,00104$
	C$main.c$73$3_0$35 ==.
;	main.c:73: minutes++;
	mov	dptr,#_minutes
	movx	a,@dptr
	inc	a
	movx	@dptr,a
	C$main.c$74$3_0$35 ==.
;	main.c:74: seconds=0;
	mov	dptr,#_seconds
	clr	a
	movx	@dptr,a
00104$:
	C$main.c$76$2_0$33 ==.
;	main.c:76: hours=minutes/60;
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
	C$main.c$77$2_0$33 ==.
;	main.c:77: lcd_gotoxy(4,6);
	mov	dptr,#_lcd_gotoxy_PARM_2
	mov	a,#0x06
	movx	@dptr,a
	mov	dpl,#0x04
	lcall	_lcd_gotoxy
	C$main.c$78$2_0$33 ==.
;	main.c:78: inttostr(hours);
	mov	dptr,#_hours
	movx	a,@dptr
	mov	dpl,a
	lcall	_inttostr
	C$main.c$79$2_0$33 ==.
;	main.c:79: inttostr(minutes);
	mov	dptr,#_minutes
	movx	a,@dptr
	mov	dpl,a
	lcall	_inttostr
	C$main.c$80$2_0$33 ==.
;	main.c:80: inttostr(seconds);
	mov	dptr,#_seconds
	movx	a,@dptr
	mov	dpl,a
	lcall	_inttostr
	C$main.c$81$2_0$33 ==.
;	main.c:81: inttostr(milli);
	mov	dptr,#_milli
	movx	a,@dptr
	mov	dpl,a
	lcall	_inttostr
00107$:
	C$main.c$83$1_0$32 ==.
;	main.c:83: }
	C$main.c$83$1_0$32 ==.
	XG$time_show$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;a                         Allocated with name '_main_a_65536_37'
;b                         Allocated with name '_main_b_65536_37'
;------------------------------------------------------------
	G$main$0$0 ==.
	C$main.c$84$1_0$37 ==.
;	main.c:84: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	C$main.c$85$2_0$37 ==.
;	main.c:85: {   char a[]={"Ye Bik Gayi Hai gormint"};
	mov	dptr,#_main_a_65536_37
	mov	a,#0x59
	movx	@dptr,a
	mov	dptr,#(_main_a_65536_37 + 0x0001)
	mov	a,#0x65
	movx	@dptr,a
	mov	dptr,#(_main_a_65536_37 + 0x0002)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_main_a_65536_37 + 0x0003)
	mov	a,#0x42
	movx	@dptr,a
	mov	dptr,#(_main_a_65536_37 + 0x0004)
	mov	a,#0x69
	movx	@dptr,a
	mov	dptr,#(_main_a_65536_37 + 0x0005)
	mov	a,#0x6b
	movx	@dptr,a
	mov	dptr,#(_main_a_65536_37 + 0x0006)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_main_a_65536_37 + 0x0007)
	mov	a,#0x47
	movx	@dptr,a
	mov	dptr,#(_main_a_65536_37 + 0x0008)
	mov	a,#0x61
	movx	@dptr,a
	mov	dptr,#(_main_a_65536_37 + 0x0009)
	mov	a,#0x79
	movx	@dptr,a
	mov	dptr,#(_main_a_65536_37 + 0x000a)
	mov	a,#0x69
	movx	@dptr,a
	mov	dptr,#(_main_a_65536_37 + 0x000b)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_main_a_65536_37 + 0x000c)
	mov	a,#0x48
	movx	@dptr,a
	mov	dptr,#(_main_a_65536_37 + 0x000d)
	mov	a,#0x61
	movx	@dptr,a
	mov	dptr,#(_main_a_65536_37 + 0x000e)
	mov	a,#0x69
	movx	@dptr,a
	mov	dptr,#(_main_a_65536_37 + 0x000f)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_main_a_65536_37 + 0x0010)
	mov	a,#0x67
	movx	@dptr,a
	mov	dptr,#(_main_a_65536_37 + 0x0011)
	mov	a,#0x6f
	movx	@dptr,a
	mov	dptr,#(_main_a_65536_37 + 0x0012)
	mov	a,#0x72
	movx	@dptr,a
	mov	dptr,#(_main_a_65536_37 + 0x0013)
	mov	a,#0x6d
	movx	@dptr,a
	mov	dptr,#(_main_a_65536_37 + 0x0014)
	mov	a,#0x69
	movx	@dptr,a
	mov	dptr,#(_main_a_65536_37 + 0x0015)
	mov	a,#0x6e
	movx	@dptr,a
	mov	dptr,#(_main_a_65536_37 + 0x0016)
	mov	a,#0x74
	movx	@dptr,a
	mov	dptr,#(_main_a_65536_37 + 0x0017)
	clr	a
	movx	@dptr,a
	C$main.c$86$2_0$37 ==.
;	main.c:86: char b[]={"Nitik"};
	mov	dptr,#_main_b_65536_37
	mov	a,#0x4e
	movx	@dptr,a
	mov	dptr,#(_main_b_65536_37 + 0x0001)
	mov	a,#0x69
	movx	@dptr,a
	mov	dptr,#(_main_b_65536_37 + 0x0002)
	mov	a,#0x74
	movx	@dptr,a
	mov	dptr,#(_main_b_65536_37 + 0x0003)
	mov	a,#0x69
	movx	@dptr,a
	mov	dptr,#(_main_b_65536_37 + 0x0004)
	mov	a,#0x6b
	movx	@dptr,a
	mov	dptr,#(_main_b_65536_37 + 0x0005)
	clr	a
	movx	@dptr,a
	C$main.c$87$1_0$37 ==.
;	main.c:87: milli=0,seconds=0,minutes=0;
	mov	dptr,#_milli
	movx	@dptr,a
	mov	dptr,#_seconds
	movx	@dptr,a
	mov	dptr,#_minutes
	movx	@dptr,a
	C$main.c$88$1_0$37 ==.
;	main.c:88: timer_init();
	lcall	_timer_init
	C$main.c$89$1_0$37 ==.
;	main.c:89: printf_tiny("\n\rNitik");
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$main.c$90$1_0$37 ==.
;	main.c:90: delay(100);
	mov	dptr,#(0x64&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
	C$main.c$92$1_0$37 ==.
;	main.c:92: LCD_Init();
	lcall	_LCD_Init
	C$main.c$93$1_0$37 ==.
;	main.c:93: printf_tiny("\n\r Hello World");
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$main.c$94$1_0$37 ==.
;	main.c:94: delay(100);
	mov	dptr,#(0x64&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
	C$main.c$97$1_0$37 ==.
;	main.c:97: DR_WRITE='A';
	mov	dptr,#_DR_WRITE
	mov	a,#0x41
	movx	@dptr,a
	C$main.c$98$1_0$37 ==.
;	main.c:98: lcd_clear();
	lcall	_lcd_clear
	C$main.c$99$1_0$37 ==.
;	main.c:99: lcd_gotoxy(1,0);
	mov	dptr,#_lcd_gotoxy_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_lcd_gotoxy
	C$main.c$100$1_0$37 ==.
;	main.c:100: LCD_putstr(a);
	mov	dptr,#_main_a_65536_37
	lcall	_LCD_putstr
	C$main.c$101$1_0$37 ==.
;	main.c:101: lcd_gotoxy(4,6);
	mov	dptr,#_lcd_gotoxy_PARM_2
	mov	a,#0x06
	movx	@dptr,a
	mov	dpl,#0x04
	lcall	_lcd_gotoxy
	C$main.c$102$1_0$37 ==.
;	main.c:102: LCD_putstr(b);
	mov	dptr,#_main_b_65536_37
	lcall	_LCD_putstr
	C$main.c$103$1_0$37 ==.
;	main.c:103: while(1)
00102$:
	C$main.c$105$2_0$38 ==.
;	main.c:105: time_show();
	lcall	_time_show
	sjmp	00102$
	C$main.c$107$1_0$37 ==.
;	main.c:107: }
	C$main.c$107$1_0$37 ==.
	XG$main$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
Fmain$__str_0$0_0$0 == .
	.area CONST   (CODE)
___str_0:
	.db 0x0a
	.db 0x0d
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_3$0_0$0 == .
	.area CONST   (CODE)
___str_3:
	.db 0x0a
	.db 0x0d
	.ascii "Nitik"
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_4$0_0$0 == .
	.area CONST   (CODE)
___str_4:
	.db 0x0a
	.db 0x0d
	.ascii " Hello World"
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
