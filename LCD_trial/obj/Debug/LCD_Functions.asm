;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.0 #11195 (MINGW64)
;--------------------------------------------------------
	.module LCD_Functions
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _row_pos
	.globl _column_pos
	.globl _lcd_gotoxy_PARM_2
	.globl _DR_READ
	.globl _DR_WRITE
	.globl _BF_Read
	.globl _IR_Write
	.globl _lcdbusywait
	.globl _delay
	.globl _LCD_Init
	.globl _LCD_putch
	.globl _LCD_putstr
	.globl _lcd_clear
	.globl _lcd_gotoaddr
	.globl _lcd_gotoxy
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
G$IR_Write$0_0$0 == 0xf000
_IR_Write	=	0xf000
G$BF_Read$0_0$0 == 0xf200
_BF_Read	=	0xf200
G$DR_WRITE$0_0$0 == 0xf100
_DR_WRITE	=	0xf100
G$DR_READ$0_0$0 == 0xf300
_DR_READ	=	0xf300
LLCD_Functions.delay$time$1_0$25==.
_delay_time_65536_25:
	.ds 4
LLCD_Functions.delay$i$1_0$26==.
_delay_i_65536_26:
	.ds 4
LLCD_Functions.delay$n$1_0$26==.
_delay_n_65536_26:
	.ds 4
LLCD_Functions.LCD_putch$ch$1_0$33==.
_LCD_putch_ch_65536_33:
	.ds 1
LLCD_Functions.LCD_putstr$str$1_0$35==.
_LCD_putstr_str_65536_35:
	.ds 2
LLCD_Functions.lcd_gotoaddr$addr$1_0$41==.
_lcd_gotoaddr_addr_65536_41:
	.ds 1
LLCD_Functions.lcd_gotoxy$column$1_0$43==.
_lcd_gotoxy_PARM_2:
	.ds 1
LLCD_Functions.lcd_gotoxy$row$1_0$43==.
_lcd_gotoxy_row_65536_43:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
G$column_pos$0_0$0==.
_column_pos::
	.ds 2
G$row_pos$0_0$0==.
_row_pos::
	.ds 2
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
;Allocation info for local variables in function 'lcdbusywait'
;------------------------------------------------------------
	G$lcdbusywait$0$0 ==.
	C$LCD_Functions.c$29$0_0$24 ==.
;	LCD_Functions.c:29: void lcdbusywait(void)
;	-----------------------------------------
;	 function lcdbusywait
;	-----------------------------------------
_lcdbusywait:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$LCD_Functions.c$31$1_0$24 ==.
;	LCD_Functions.c:31: while(BF_Read & 0x80);
00101$:
	mov	dptr,#_BF_Read
	movx	a,@dptr
	jb	acc.7,00101$
	C$LCD_Functions.c$33$1_0$24 ==.
;	LCD_Functions.c:33: }
	C$LCD_Functions.c$33$1_0$24 ==.
	XG$lcdbusywait$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;time                      Allocated with name '_delay_time_65536_25'
;i                         Allocated with name '_delay_i_65536_26'
;n                         Allocated with name '_delay_n_65536_26'
;------------------------------------------------------------
	G$delay$0$0 ==.
	C$LCD_Functions.c$39$1_0$27 ==.
;	LCD_Functions.c:39: void delay(uint32_t time)
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	dptr,#_delay_time_65536_25
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	C$LCD_Functions.c$41$2_0$27 ==.
;	LCD_Functions.c:41: volatile uint32_t i = 0;
	mov	dptr,#_delay_i_65536_26
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$LCD_Functions.c$42$2_0$27 ==.
;	LCD_Functions.c:42: volatile uint32_t n = 0;
	mov	dptr,#_delay_n_65536_26
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$LCD_Functions.c$43$2_0$27 ==.
;	LCD_Functions.c:43: for(i=0;i<time;i++)
	mov	dptr,#_delay_i_65536_26
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_delay_time_65536_25
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
00107$:
	mov	dptr,#_delay_i_65536_26
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
	clr	c
	mov	a,r0
	subb	a,r4
	mov	a,r1
	subb	a,r5
	mov	a,r2
	subb	a,r6
	mov	a,r3
	subb	a,r7
	jnc	00109$
	C$LCD_Functions.c$45$4_0$29 ==.
;	LCD_Functions.c:45: for(n=0;n<127;n++)
	mov	dptr,#_delay_n_65536_26
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00104$:
	mov	dptr,#_delay_n_65536_26
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
	clr	c
	mov	a,r0
	subb	a,#0x7f
	mov	a,r1
	subb	a,#0x00
	mov	a,r2
	subb	a,#0x00
	mov	a,r3
	subb	a,#0x00
	jnc	00108$
	mov	dptr,#_delay_n_65536_26
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
	mov	dptr,#_delay_n_65536_26
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
	sjmp	00104$
00108$:
	C$LCD_Functions.c$43$2_0$27 ==.
;	LCD_Functions.c:43: for(i=0;i<time;i++)
	mov	dptr,#_delay_i_65536_26
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
	mov	dptr,#_delay_i_65536_26
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
	ljmp	00107$
00109$:
	C$LCD_Functions.c$50$2_0$27 ==.
;	LCD_Functions.c:50: }
	C$LCD_Functions.c$50$2_0$27 ==.
	XG$delay$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_Init'
;------------------------------------------------------------
	G$LCD_Init$0$0 ==.
	C$LCD_Functions.c$56$2_0$32 ==.
;	LCD_Functions.c:56: void LCD_Init(void)
;	-----------------------------------------
;	 function LCD_Init
;	-----------------------------------------
_LCD_Init:
	C$LCD_Functions.c$60$1_0$32 ==.
;	LCD_Functions.c:60: delay(15);
	mov	dptr,#(0x0f&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
	C$LCD_Functions.c$61$1_0$32 ==.
;	LCD_Functions.c:61: IR_Write = LCD_Function_set;
	mov	dptr,#_IR_Write
	mov	a,#0x38
	movx	@dptr,a
	C$LCD_Functions.c$63$1_0$32 ==.
;	LCD_Functions.c:63: delay(5);
	mov	dptr,#(0x05&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
	C$LCD_Functions.c$64$1_0$32 ==.
;	LCD_Functions.c:64: IR_Write = LCD_Function_set;
	mov	dptr,#_IR_Write
	mov	a,#0x38
	movx	@dptr,a
	C$LCD_Functions.c$66$1_0$32 ==.
;	LCD_Functions.c:66: delay(1);
	mov	dptr,#(0x01&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay
	C$LCD_Functions.c$67$1_0$32 ==.
;	LCD_Functions.c:67: IR_Write = LCD_Function_set;
	mov	dptr,#_IR_Write
	mov	a,#0x38
	movx	@dptr,a
	C$LCD_Functions.c$69$1_0$32 ==.
;	LCD_Functions.c:69: lcdbusywait();
	lcall	_lcdbusywait
	C$LCD_Functions.c$71$1_0$32 ==.
;	LCD_Functions.c:71: IR_Write = LCD_Function_set;
	mov	dptr,#_IR_Write
	mov	a,#0x38
	movx	@dptr,a
	C$LCD_Functions.c$73$1_0$32 ==.
;	LCD_Functions.c:73: lcdbusywait();
	lcall	_lcdbusywait
	C$LCD_Functions.c$75$1_0$32 ==.
;	LCD_Functions.c:75: IR_Write = LCD_display_off;
	mov	dptr,#_IR_Write
	mov	a,#0x08
	movx	@dptr,a
	C$LCD_Functions.c$77$1_0$32 ==.
;	LCD_Functions.c:77: lcdbusywait();
	lcall	_lcdbusywait
	C$LCD_Functions.c$79$1_0$32 ==.
;	LCD_Functions.c:79: IR_Write = LCD_display_on;
	mov	dptr,#_IR_Write
	mov	a,#0x0e
	movx	@dptr,a
	C$LCD_Functions.c$81$1_0$32 ==.
;	LCD_Functions.c:81: lcdbusywait();
	lcall	_lcdbusywait
	C$LCD_Functions.c$83$1_0$32 ==.
;	LCD_Functions.c:83: IR_Write = LCD_entrymode_set;
	mov	dptr,#_IR_Write
	mov	a,#0x06
	movx	@dptr,a
	C$LCD_Functions.c$85$1_0$32 ==.
;	LCD_Functions.c:85: lcdbusywait();
	lcall	_lcdbusywait
	C$LCD_Functions.c$87$1_0$32 ==.
;	LCD_Functions.c:87: IR_Write = LCD_Clearscreen;
	mov	dptr,#_IR_Write
	mov	a,#0x01
	movx	@dptr,a
	C$LCD_Functions.c$88$1_0$32 ==.
;	LCD_Functions.c:88: }
	C$LCD_Functions.c$88$1_0$32 ==.
	XG$LCD_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_putch'
;------------------------------------------------------------
;ch                        Allocated with name '_LCD_putch_ch_65536_33'
;------------------------------------------------------------
	G$LCD_putch$0$0 ==.
	C$LCD_Functions.c$95$1_0$34 ==.
;	LCD_Functions.c:95: void LCD_putch(__xdata uint8_t ch)
;	-----------------------------------------
;	 function LCD_putch
;	-----------------------------------------
_LCD_putch:
	mov	a,dpl
	mov	dptr,#_LCD_putch_ch_65536_33
	movx	@dptr,a
	C$LCD_Functions.c$97$1_0$34 ==.
;	LCD_Functions.c:97: lcdbusywait();
	lcall	_lcdbusywait
	C$LCD_Functions.c$98$1_0$34 ==.
;	LCD_Functions.c:98: DR_WRITE=ch;
	mov	dptr,#_LCD_putch_ch_65536_33
	movx	a,@dptr
	mov	dptr,#_DR_WRITE
	movx	@dptr,a
	C$LCD_Functions.c$99$1_0$34 ==.
;	LCD_Functions.c:99: }
	C$LCD_Functions.c$99$1_0$34 ==.
	XG$LCD_putch$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_putstr'
;------------------------------------------------------------
;str                       Allocated with name '_LCD_putstr_str_65536_35'
;------------------------------------------------------------
	G$LCD_putstr$0$0 ==.
	C$LCD_Functions.c$106$1_0$36 ==.
;	LCD_Functions.c:106: void LCD_putstr(__xdata uint8_t * str)
;	-----------------------------------------
;	 function LCD_putstr
;	-----------------------------------------
_LCD_putstr:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_LCD_putstr_str_65536_35
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$LCD_Functions.c$108$1_0$36 ==.
;	LCD_Functions.c:108: while(*str!='\0')
	mov	dptr,#_LCD_putstr_str_65536_35
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00103$:
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	jnz	00121$
	ljmp	00111$
00121$:
	C$LCD_Functions.c$110$2_0$37 ==.
;	LCD_Functions.c:110: lcdbusywait();
	push	ar7
	push	ar6
	lcall	_lcdbusywait
	pop	ar6
	pop	ar7
	C$LCD_Functions.c$111$2_0$37 ==.
;	LCD_Functions.c:111: LCD_putch(*str++);
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#_LCD_putstr_str_65536_35
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	push	ar7
	push	ar6
	lcall	_LCD_putch
	pop	ar6
	pop	ar7
	C$LCD_Functions.c$112$2_0$37 ==.
;	LCD_Functions.c:112: column_pos++;
	mov	dptr,#_column_pos
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_column_pos
	mov	a,#0x01
	add	a,r4
	movx	@dptr,a
	clr	a
	addc	a,r5
	inc	dptr
	movx	@dptr,a
	C$LCD_Functions.c$113$2_0$37 ==.
;	LCD_Functions.c:113: if(column_pos==16)
	mov	dptr,#_column_pos
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	cjne	r4,#0x10,00103$
	cjne	r5,#0x00,00103$
	C$LCD_Functions.c$115$3_0$38 ==.
;	LCD_Functions.c:115: row_pos++;
	mov	dptr,#_row_pos
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_row_pos
	mov	a,#0x01
	add	a,r4
	movx	@dptr,a
	clr	a
	addc	a,r5
	inc	dptr
	movx	@dptr,a
	C$LCD_Functions.c$116$3_0$38 ==.
;	LCD_Functions.c:116: column_pos=0;
	mov	dptr,#_column_pos
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$LCD_Functions.c$117$3_0$38 ==.
;	LCD_Functions.c:117: lcd_gotoxy(row_pos,column_pos);
	mov	dptr,#_row_pos
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	dptr,#_column_pos
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	dptr,#_lcd_gotoxy_PARM_2
	mov	a,r3
	movx	@dptr,a
	mov	dpl,r4
	push	ar7
	push	ar6
	lcall	_lcd_gotoxy
	pop	ar6
	pop	ar7
	ljmp	00103$
00111$:
	mov	dptr,#_LCD_putstr_str_65536_35
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$LCD_Functions.c$120$1_0$36 ==.
;	LCD_Functions.c:120: }
	C$LCD_Functions.c$120$1_0$36 ==.
	XG$LCD_putstr$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_clear'
;------------------------------------------------------------
	G$lcd_clear$0$0 ==.
	C$LCD_Functions.c$127$1_0$40 ==.
;	LCD_Functions.c:127: void lcd_clear(void)
;	-----------------------------------------
;	 function lcd_clear
;	-----------------------------------------
_lcd_clear:
	C$LCD_Functions.c$129$1_0$40 ==.
;	LCD_Functions.c:129: lcdbusywait();
	lcall	_lcdbusywait
	C$LCD_Functions.c$130$1_0$40 ==.
;	LCD_Functions.c:130: IR_Write=LCD_Clearscreen;
	mov	dptr,#_IR_Write
	mov	a,#0x01
	movx	@dptr,a
	C$LCD_Functions.c$131$1_0$40 ==.
;	LCD_Functions.c:131: }
	C$LCD_Functions.c$131$1_0$40 ==.
	XG$lcd_clear$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_gotoaddr'
;------------------------------------------------------------
;addr                      Allocated with name '_lcd_gotoaddr_addr_65536_41'
;------------------------------------------------------------
	G$lcd_gotoaddr$0$0 ==.
	C$LCD_Functions.c$132$1_0$42 ==.
;	LCD_Functions.c:132: void lcd_gotoaddr(unsigned char addr)
;	-----------------------------------------
;	 function lcd_gotoaddr
;	-----------------------------------------
_lcd_gotoaddr:
	mov	a,dpl
	mov	dptr,#_lcd_gotoaddr_addr_65536_41
	movx	@dptr,a
	C$LCD_Functions.c$134$1_0$42 ==.
;	LCD_Functions.c:134: lcdbusywait();
	lcall	_lcdbusywait
	C$LCD_Functions.c$135$1_0$42 ==.
;	LCD_Functions.c:135: IR_Write=addr|0x80;
	mov	dptr,#_lcd_gotoaddr_addr_65536_41
	movx	a,@dptr
	mov	dptr,#_IR_Write
	orl	a,#0x80
	movx	@dptr,a
	C$LCD_Functions.c$136$1_0$42 ==.
;	LCD_Functions.c:136: }
	C$LCD_Functions.c$136$1_0$42 ==.
	XG$lcd_gotoaddr$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_gotoxy'
;------------------------------------------------------------
;column                    Allocated with name '_lcd_gotoxy_PARM_2'
;row                       Allocated with name '_lcd_gotoxy_row_65536_43'
;------------------------------------------------------------
	G$lcd_gotoxy$0$0 ==.
	C$LCD_Functions.c$137$1_0$44 ==.
;	LCD_Functions.c:137: void lcd_gotoxy(unsigned char row,unsigned char column)
;	-----------------------------------------
;	 function lcd_gotoxy
;	-----------------------------------------
_lcd_gotoxy:
	mov	a,dpl
	mov	dptr,#_lcd_gotoxy_row_65536_43
	movx	@dptr,a
	C$LCD_Functions.c$138$1_0$44 ==.
;	LCD_Functions.c:138: {   column_pos=column;
	mov	dptr,#_lcd_gotoxy_PARM_2
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_column_pos
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	C$LCD_Functions.c$139$1_0$44 ==.
;	LCD_Functions.c:139: row_pos=row;
	mov	dptr,#_lcd_gotoxy_row_65536_43
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_row_pos
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	C$LCD_Functions.c$140$1_0$44 ==.
;	LCD_Functions.c:140: switch(row)
	cjne	r6,#0x01,00125$
	sjmp	00101$
00125$:
	cjne	r6,#0x02,00126$
	sjmp	00102$
00126$:
	cjne	r6,#0x03,00127$
	sjmp	00103$
00127$:
	C$LCD_Functions.c$142$2_0$45 ==.
;	LCD_Functions.c:142: case 1: lcd_gotoaddr(column);
	cjne	r6,#0x04,00107$
	sjmp	00104$
00101$:
	mov	dpl,r7
	lcall	_lcd_gotoaddr
	C$LCD_Functions.c$143$2_0$45 ==.
;	LCD_Functions.c:143: break;
	C$LCD_Functions.c$144$2_0$45 ==.
;	LCD_Functions.c:144: case 2: lcd_gotoaddr(40+column);
	sjmp	00107$
00102$:
	mov	ar6,r7
	mov	a,#0x28
	add	a,r6
	mov	dpl,a
	lcall	_lcd_gotoaddr
	C$LCD_Functions.c$145$2_0$45 ==.
;	LCD_Functions.c:145: break;
	C$LCD_Functions.c$146$2_0$45 ==.
;	LCD_Functions.c:146: case 3: lcd_gotoaddr(15+column);
	sjmp	00107$
00103$:
	mov	ar6,r7
	mov	a,#0x0f
	add	a,r6
	mov	dpl,a
	lcall	_lcd_gotoaddr
	C$LCD_Functions.c$147$2_0$45 ==.
;	LCD_Functions.c:147: break;
	C$LCD_Functions.c$148$2_0$45 ==.
;	LCD_Functions.c:148: case 4: lcd_gotoaddr(80+column);
	sjmp	00107$
00104$:
	mov	a,#0x50
	add	a,r7
	mov	dpl,a
	lcall	_lcd_gotoaddr
	C$LCD_Functions.c$152$1_0$44 ==.
;	LCD_Functions.c:152: }
00107$:
	C$LCD_Functions.c$153$1_0$44 ==.
;	LCD_Functions.c:153: }
	C$LCD_Functions.c$153$1_0$44 ==.
	XG$lcd_gotoxy$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
FLCD_Functions$__xinit_column_pos$0_0$0 == .
__xinit__column_pos:
	.byte #0x00, #0x00	; 0
FLCD_Functions$__xinit_row_pos$0_0$0 == .
__xinit__row_pos:
	.byte #0x00, #0x00	; 0
	.area CABS    (ABS,CODE)
