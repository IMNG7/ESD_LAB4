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
	.globl _eereset
	.globl _get_block
	.globl _getstr_data
	.globl _getstr_addr
	.globl _getchar
	.globl _delay
	.globl _dummy_write
	.globl _dummy_read
	.globl _reeprom_seq
	.globl _reeprom
	.globl _weeprom
	.globl _printf_tiny
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
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
Lmain.main$choice$1_0$29==.
_main_choice_65536_29:
	.ds 1
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
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
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
;Allocation info for local variables in function 'help'
;------------------------------------------------------------
	G$help$0$0 ==.
	C$main.c$7$0_0$27 ==.
;	main.c:7: void help()
;	-----------------------------------------
;	 function help
;	-----------------------------------------
_help:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$main.c$10$1_0$27 ==.
;	main.c:10: printf_tiny("\n\rWelcome Teaching Assistant to the Demo of the I2C on the AT89C51 board ");
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$main.c$11$1_0$27 ==.
;	main.c:11: printf_tiny("\n\rBefore Starting the program, I have some rules for you");
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$main.c$12$1_0$27 ==.
;	main.c:12: printf_tiny("\n\r ->Please try to enter valid values, extensive testing hurts me a lot and might even break me.");
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$main.c$13$1_0$27 ==.
;	main.c:13: printf_tiny("\n\r ->Please make sure before entering a hex value don't add 0x before it.");
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$main.c$14$1_0$27 ==.
;	main.c:14: printf_tiny("\n\r ->As Described in the assignment, all values are in hexadecimal, any decimal entered will be treated as hex.");
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$main.c$15$1_0$27 ==.
;	main.c:15: printf_tiny("\n\r ->Please look at all the choices and give the choice number as described.");
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$main.c$16$1_0$27 ==.
;	main.c:16: printf_tiny("\n\r ->The Maximum address that can be entered is 7FF.");
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$main.c$17$1_0$27 ==.
;	main.c:17: printf_tiny("\n\r ->Please Enter the First Address greater than last address(duh!!).");
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$main.c$18$1_0$27 ==.
;	main.c:18: printf_tiny("\n\r ->I will try to give as many error condition as possible.");
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$main.c$19$1_0$27 ==.
;	main.c:19: printf_tiny("\n\r ->Enough Chit-Chat and lets start with the program.");
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$main.c$20$1_0$27 ==.
;	main.c:20: printf_tiny("\n\n\n\r \t\t\tPRESS ANY KEY TO CONTINUE");
	mov	a,#___str_10
	push	acc
	mov	a,#(___str_10 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$main.c$22$1_0$27 ==.
;	main.c:22: getchar();
	lcall	_getchar
	C$main.c$23$1_0$27 ==.
;	main.c:23: }
	C$main.c$23$1_0$27 ==.
	XG$help$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;choice                    Allocated with name '_main_choice_65536_29'
;Address1                  Allocated with name '_main_Address1_65536_29'
;Address2                  Allocated with name '_main_Address2_65536_29'
;Data                      Allocated with name '_main_Data_65536_29'
;block                     Allocated with name '_main_block_65536_29'
;DataR                     Allocated with name '_main_DataR_65536_29'
;------------------------------------------------------------
	G$main$0$0 ==.
	C$main.c$24$1_0$29 ==.
;	main.c:24: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	C$main.c$29$1_0$29 ==.
;	main.c:29: help();
	lcall	_help
	C$main.c$30$1_0$29 ==.
;	main.c:30: do
00115$:
	C$main.c$32$2_0$30 ==.
;	main.c:32: printf_tiny("\n\n\n\r So, Your Choices for the Program are:");
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$main.c$33$2_0$30 ==.
;	main.c:33: printf_tiny("\n\r1.Write a Byte value in the EEPROM.");
	mov	a,#___str_12
	push	acc
	mov	a,#(___str_12 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$main.c$34$2_0$30 ==.
;	main.c:34: printf_tiny("\n\r2.Read a Byte value in the EEPROM.");
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$main.c$35$2_0$30 ==.
;	main.c:35: printf_tiny("\n\r3.Dump the values in the EEPROM between the given addresses using Sequential Read.");
	mov	a,#___str_14
	push	acc
	mov	a,#(___str_14 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$main.c$36$2_0$30 ==.
;	main.c:36: printf_tiny("\n\r4.Reset the EEPROM.");
	mov	a,#___str_15
	push	acc
	mov	a,#(___str_15 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$main.c$37$2_0$30 ==.
;	main.c:37: printf_tiny("\n\r5.Help Menu.");
	mov	a,#___str_16
	push	acc
	mov	a,#(___str_16 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$main.c$38$2_0$30 ==.
;	main.c:38: printf_tiny("\n\r6.Exit the program");
	mov	a,#___str_17
	push	acc
	mov	a,#(___str_17 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$main.c$39$2_0$30 ==.
;	main.c:39: printf_tiny("\n\rEnter the valid choice:");
	mov	a,#___str_18
	push	acc
	mov	a,#(___str_18 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$main.c$40$2_0$30 ==.
;	main.c:40: choice=getchar();
	lcall	_getchar
	mov	r6,dpl
	mov	dptr,#_main_choice_65536_29
	mov	a,r6
	movx	@dptr,a
	C$main.c$41$2_0$30 ==.
;	main.c:41: switch(choice)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x31,00167$
	sjmp	00101$
00167$:
	cjne	r7,#0x32,00168$
	ljmp	00105$
00168$:
	cjne	r7,#0x33,00169$
	ljmp	00106$
00169$:
	cjne	r7,#0x34,00170$
	ljmp	00110$
00170$:
	cjne	r7,#0x35,00171$
	ljmp	00111$
00171$:
	cjne	r7,#0x36,00172$
	ljmp	00114$
00172$:
	ljmp	00113$
	C$main.c$43$3_0$31 ==.
;	main.c:43: case '1' :
00101$:
	C$main.c$44$3_0$31 ==.
;	main.c:44: printf_tiny("\n\r Enter the Address where the Data is to be Stored:");
	mov	a,#___str_19
	push	acc
	mov	a,#(___str_19 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$main.c$45$3_0$31 ==.
;	main.c:45: Address1=getstr_addr();
	lcall	_getstr_addr
	mov	r6,dpl
	mov	r7,dph
	C$main.c$46$3_0$31 ==.
;	main.c:46: block=get_block();
	push	ar7
	push	ar6
	lcall	_get_block
	mov	r4,dpl
	mov	r5,dph
	C$main.c$47$3_0$31 ==.
;	main.c:47: printf_tiny("\n\r Enter the Data to be stored:");
	push	ar5
	push	ar4
	mov	a,#___str_20
	push	acc
	mov	a,#(___str_20 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$main.c$48$3_0$31 ==.
;	main.c:48: Data=getstr_data();
	lcall	_getstr_data
	mov	r2,dpl
	mov	r3,dph
	C$main.c$49$3_0$31 ==.
;	main.c:49: dummy_write(0,0);
	mov	dptr,#_dummy_write_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0000
	push	ar3
	push	ar2
	lcall	_dummy_write
	C$main.c$50$3_0$31 ==.
;	main.c:50: delay();
	lcall	_delay
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	C$main.c$51$3_0$31 ==.
;	main.c:51: weeprom(block,Address1,Data);
	mov	ar7,r2
	mov	dptr,#_weeprom_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	dptr,#_weeprom_PARM_3
	mov	a,r7
	movx	@dptr,a
	mov	dpl,r4
	push	ar6
	push	ar4
	push	ar3
	push	ar2
	lcall	_weeprom
	C$main.c$52$3_0$31 ==.
;	main.c:52: dummy_read();
	lcall	_dummy_read
	C$main.c$53$3_0$31 ==.
;	main.c:53: delay();
	lcall	_delay
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar6
	C$main.c$54$3_0$31 ==.
;	main.c:54: DataR=reeprom(block,Address1);
	mov	dptr,#_reeprom_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	dpl,r4
	push	ar3
	push	ar2
	lcall	_reeprom
	mov	r7,dpl
	pop	ar2
	pop	ar3
	mov	r6,#0x00
	C$main.c$55$3_0$31 ==.
;	main.c:55: if(DataR==Data)
	mov	a,r7
	cjne	a,ar2,00103$
	mov	a,r6
	cjne	a,ar3,00103$
	C$main.c$57$4_0$32 ==.
;	main.c:57: printf_tiny("\n\r Data Entered Successfully.");
	mov	a,#___str_21
	push	acc
	mov	a,#(___str_21 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	ljmp	00114$
00103$:
	C$main.c$62$4_0$33 ==.
;	main.c:62: printf_tiny("\n\r Data Writing Failed.");
	mov	a,#___str_22
	push	acc
	mov	a,#(___str_22 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$main.c$64$3_0$31 ==.
;	main.c:64: break;
	ljmp	00114$
	C$main.c$65$3_0$31 ==.
;	main.c:65: case '2' :  printf_tiny("\n\r Enter the Address where the Data is to be Searched:");
00105$:
	mov	a,#___str_23
	push	acc
	mov	a,#(___str_23 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$main.c$66$3_0$31 ==.
;	main.c:66: Address1=getstr_addr();
	lcall	_getstr_addr
	mov	r6,dpl
	mov	r7,dph
	C$main.c$67$3_0$31 ==.
;	main.c:67: block=get_block();
	push	ar7
	push	ar6
	lcall	_get_block
	mov	r4,dpl
	mov	r5,dph
	C$main.c$68$3_0$31 ==.
;	main.c:68: dummy_read();
	push	ar5
	push	ar4
	lcall	_dummy_read
	C$main.c$69$3_0$31 ==.
;	main.c:69: delay();
	lcall	_delay
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	C$main.c$70$3_0$31 ==.
;	main.c:70: Data=reeprom(block,Address1);
	mov	dptr,#_reeprom_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	dpl,r4
	lcall	_reeprom
	mov	r7,dpl
	mov	r6,#0x00
	C$main.c$71$3_0$31 ==.
;	main.c:71: printf_tiny("\n\rData=%x",Data);
	push	ar7
	push	ar6
	mov	a,#___str_24
	push	acc
	mov	a,#(___str_24 >> 8)
	push	acc
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	C$main.c$72$3_0$31 ==.
;	main.c:72: break;
	ljmp	00114$
	C$main.c$73$3_0$31 ==.
;	main.c:73: case '3' :  printf_tiny("\n\rEnter the First Address:");
00106$:
	mov	a,#___str_25
	push	acc
	mov	a,#(___str_25 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$main.c$74$3_0$31 ==.
;	main.c:74: Address1=getstr_addr();
	lcall	_getstr_addr
	mov	r6,dpl
	mov	r7,dph
	C$main.c$75$3_0$31 ==.
;	main.c:75: block=get_block();
	push	ar7
	push	ar6
	lcall	_get_block
	mov	r4,dpl
	mov	r5,dph
	C$main.c$76$3_0$31 ==.
;	main.c:76: printf_tiny("\n\rEnter the Last Address:");
	push	ar5
	push	ar4
	mov	a,#___str_26
	push	acc
	mov	a,#(___str_26 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$main.c$77$3_0$31 ==.
;	main.c:77: Address2=getstr_addr();
	lcall	_getstr_addr
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	C$main.c$78$3_0$31 ==.
;	main.c:78: if(Address1>=Address2)
	clr	c
	mov	a,r6
	subb	a,r2
	mov	a,r7
	subb	a,r3
	jc	00108$
	C$main.c$80$4_0$34 ==.
;	main.c:80: printf_tiny("\n\r Sorry, The First Address is greater than or equal to last address,Please select the Option Again.");
	mov	a,#___str_27
	push	acc
	mov	a,#(___str_27 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	sjmp	00114$
00108$:
	C$main.c$84$4_0$35 ==.
;	main.c:84: dummy_read();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_dummy_read
	C$main.c$85$4_0$35 ==.
;	main.c:85: delay();
	lcall	_delay
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	C$main.c$86$4_0$35 ==.
;	main.c:86: reeprom_seq(block,Address1,Address2);
	mov	dptr,#_reeprom_seq_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_reeprom_seq_PARM_3
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	lcall	_reeprom_seq
	C$main.c$88$3_0$31 ==.
;	main.c:88: break;
	C$main.c$89$3_0$31 ==.
;	main.c:89: case '4' :  eereset();
	sjmp	00114$
00110$:
	lcall	_eereset
	C$main.c$90$3_0$31 ==.
;	main.c:90: printf_tiny("\n\rReset Successfully");
	mov	a,#___str_28
	push	acc
	mov	a,#(___str_28 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$main.c$91$3_0$31 ==.
;	main.c:91: break;
	C$main.c$92$3_0$31 ==.
;	main.c:92: case '5' :  help();
	sjmp	00114$
00111$:
	lcall	_help
	C$main.c$93$3_0$31 ==.
;	main.c:93: break;
	C$main.c$95$3_0$31 ==.
;	main.c:95: default  :  printf_tiny("\n\rWrong Choice Selected Please Enter Again");
	sjmp	00114$
00113$:
	mov	a,#___str_29
	push	acc
	mov	a,#(___str_29 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$main.c$97$2_0$30 ==.
;	main.c:97: }
00114$:
	C$main.c$98$2_0$30 ==.
;	main.c:98: printf_tiny("\n\n\n\r \t\t\t\t\tPRESS ANY KEY TO CONTINUE");
	mov	a,#___str_30
	push	acc
	mov	a,#(___str_30 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$main.c$99$2_0$30 ==.
;	main.c:99: getchar();
	lcall	_getchar
	C$main.c$100$1_0$29 ==.
;	main.c:100: }while(choice!='7');
	mov	dptr,#_main_choice_65536_29
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x37,00176$
	sjmp	00177$
00176$:
	ljmp	00115$
00177$:
	C$main.c$101$1_0$29 ==.
;	main.c:101: printf_tiny("\n\r Thank you for your patience and Handling. Please visit again.");
	mov	a,#___str_31
	push	acc
	mov	a,#(___str_31 >> 8)
	push	acc
	lcall	_printf_tiny
	dec	sp
	dec	sp
	C$main.c$102$1_0$29 ==.
;	main.c:102: while(1);
00119$:
	sjmp	00119$
	C$main.c$103$1_0$29 ==.
;	main.c:103: }
	C$main.c$103$1_0$29 ==.
	XG$main$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
Fmain$__str_0$0_0$0 == .
	.area CONST   (CODE)
___str_0:
	.db 0x0a
	.db 0x0d
	.ascii "Welcome Teaching Assistant to the Demo of the I2C on the AT8"
	.ascii "9C51 board "
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_1$0_0$0 == .
	.area CONST   (CODE)
___str_1:
	.db 0x0a
	.db 0x0d
	.ascii "Before Starting the program, I have some rules for you"
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_2$0_0$0 == .
	.area CONST   (CODE)
___str_2:
	.db 0x0a
	.db 0x0d
	.ascii " ->Please try to enter valid values, extensive testing hurts"
	.ascii " me a lot and might even break me."
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_3$0_0$0 == .
	.area CONST   (CODE)
___str_3:
	.db 0x0a
	.db 0x0d
	.ascii " ->Please make sure before entering a hex value don't add 0x"
	.ascii " before it."
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_4$0_0$0 == .
	.area CONST   (CODE)
___str_4:
	.db 0x0a
	.db 0x0d
	.ascii " ->As Described in the assignment, all values are in hexadec"
	.ascii "imal, any decimal entered will be treated as hex."
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_5$0_0$0 == .
	.area CONST   (CODE)
___str_5:
	.db 0x0a
	.db 0x0d
	.ascii " ->Please look at all the choices and give the choice number"
	.ascii " as described."
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_6$0_0$0 == .
	.area CONST   (CODE)
___str_6:
	.db 0x0a
	.db 0x0d
	.ascii " ->The Maximum address that can be entered is 7FF."
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_7$0_0$0 == .
	.area CONST   (CODE)
___str_7:
	.db 0x0a
	.db 0x0d
	.ascii " ->Please Enter the First Address greater than last address("
	.ascii "duh!!)."
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_8$0_0$0 == .
	.area CONST   (CODE)
___str_8:
	.db 0x0a
	.db 0x0d
	.ascii " ->I will try to give as many error condition as possible."
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_9$0_0$0 == .
	.area CONST   (CODE)
___str_9:
	.db 0x0a
	.db 0x0d
	.ascii " ->Enough Chit-Chat and lets start with the program."
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_10$0_0$0 == .
	.area CONST   (CODE)
___str_10:
	.db 0x0a
	.db 0x0a
	.db 0x0a
	.db 0x0d
	.ascii " "
	.db 0x09
	.db 0x09
	.db 0x09
	.ascii "PRESS ANY KEY TO CONTINUE"
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_11$0_0$0 == .
	.area CONST   (CODE)
___str_11:
	.db 0x0a
	.db 0x0a
	.db 0x0a
	.db 0x0d
	.ascii " So, Your Choices for the Program are:"
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_12$0_0$0 == .
	.area CONST   (CODE)
___str_12:
	.db 0x0a
	.db 0x0d
	.ascii "1.Write a Byte value in the EEPROM."
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_13$0_0$0 == .
	.area CONST   (CODE)
___str_13:
	.db 0x0a
	.db 0x0d
	.ascii "2.Read a Byte value in the EEPROM."
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_14$0_0$0 == .
	.area CONST   (CODE)
___str_14:
	.db 0x0a
	.db 0x0d
	.ascii "3.Dump the values in the EEPROM between the given addresses "
	.ascii "using Sequential Read."
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_15$0_0$0 == .
	.area CONST   (CODE)
___str_15:
	.db 0x0a
	.db 0x0d
	.ascii "4.Reset the EEPROM."
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_16$0_0$0 == .
	.area CONST   (CODE)
___str_16:
	.db 0x0a
	.db 0x0d
	.ascii "5.Help Menu."
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_17$0_0$0 == .
	.area CONST   (CODE)
___str_17:
	.db 0x0a
	.db 0x0d
	.ascii "6.Exit the program"
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_18$0_0$0 == .
	.area CONST   (CODE)
___str_18:
	.db 0x0a
	.db 0x0d
	.ascii "Enter the valid choice:"
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_19$0_0$0 == .
	.area CONST   (CODE)
___str_19:
	.db 0x0a
	.db 0x0d
	.ascii " Enter the Address where the Data is to be Stored:"
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_20$0_0$0 == .
	.area CONST   (CODE)
___str_20:
	.db 0x0a
	.db 0x0d
	.ascii " Enter the Data to be stored:"
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_21$0_0$0 == .
	.area CONST   (CODE)
___str_21:
	.db 0x0a
	.db 0x0d
	.ascii " Data Entered Successfully."
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_22$0_0$0 == .
	.area CONST   (CODE)
___str_22:
	.db 0x0a
	.db 0x0d
	.ascii " Data Writing Failed."
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_23$0_0$0 == .
	.area CONST   (CODE)
___str_23:
	.db 0x0a
	.db 0x0d
	.ascii " Enter the Address where the Data is to be Searched:"
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_24$0_0$0 == .
	.area CONST   (CODE)
___str_24:
	.db 0x0a
	.db 0x0d
	.ascii "Data=%x"
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_25$0_0$0 == .
	.area CONST   (CODE)
___str_25:
	.db 0x0a
	.db 0x0d
	.ascii "Enter the First Address:"
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_26$0_0$0 == .
	.area CONST   (CODE)
___str_26:
	.db 0x0a
	.db 0x0d
	.ascii "Enter the Last Address:"
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_27$0_0$0 == .
	.area CONST   (CODE)
___str_27:
	.db 0x0a
	.db 0x0d
	.ascii " Sorry, The First Address is greater than or equal to last a"
	.ascii "ddress,Please select the Option Again."
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_28$0_0$0 == .
	.area CONST   (CODE)
___str_28:
	.db 0x0a
	.db 0x0d
	.ascii "Reset Successfully"
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_29$0_0$0 == .
	.area CONST   (CODE)
___str_29:
	.db 0x0a
	.db 0x0d
	.ascii "Wrong Choice Selected Please Enter Again"
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_30$0_0$0 == .
	.area CONST   (CODE)
___str_30:
	.db 0x0a
	.db 0x0a
	.db 0x0a
	.db 0x0d
	.ascii " "
	.db 0x09
	.db 0x09
	.db 0x09
	.db 0x09
	.db 0x09
	.ascii "PRESS ANY KEY TO CONTINUE"
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_31$0_0$0 == .
	.area CONST   (CODE)
___str_31:
	.db 0x0a
	.db 0x0d
	.ascii " Thank you for your patience and Handling. Please visit agai"
	.ascii "n."
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
