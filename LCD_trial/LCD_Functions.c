/* 	File Name: Functions.c
	File Description: This c code contains the all the other functions definitions that are being used for the functionality of the program.
	Author Name: Nitik Satish Gupta
*/
#include "LCD_Functions.h"
#include <stdio.h>
/// Address for Instruction Register Write
__xdata __at (0xF000) volatile unsigned char IR_Write;
/// Address for Busy Flag Read
__xdata __at (0xF200) volatile unsigned char BF_Read;
/// Address for Data Register Write
__xdata __at (0xF100) volatile unsigned char DR_WRITE;
/// Address for Data Register Read
__xdata __at (0xF300) volatile unsigned char DR_READ;
volatile uint16_t column_pos=0;
volatile uint16_t row_pos=0;
#define LCD_unlock (0x30)
#define LCD_Function_set (0x38)
#define LCD_display_off (0x08)
#define LCD_display_on (0x0E)
#define LCD_entrymode_set (0x06)
#define LCD_Clearscreen (0x01)
/* Name: lcdbusywait()
 Description: Polls the LCD busy flag. Function does not return
 until the LCD controller is ready to accept another command.
 Inputs: none
 Returns: void
*/
void lcdbusywait(void)
{   //volatile uint32_t n;
    while(BF_Read & 0x80);
    //for(n=0;n<127;n++);
}
/*	Name: delay
	Description: creates a delay for around 1000 cycles.
	Inputs: none
	Returns: void
*/
void delay(uint32_t time)
{
   volatile uint32_t i = 0;
   volatile uint32_t n = 0;
   for(i=0;i<time;i++)
   {
       for(n=0;n<127;n++)
       {
           ;
       }
   }
}
/* Name: lcdinit()
 Description: Initializes the LCD
 Inputs: none
 Returns: void
*/
void LCD_Init(void)
{
    ///POWER ON
    ///15ms delay
    delay(15);
    IR_Write = LCD_Function_set;
    ///4.1ms delay
    delay(5);
    IR_Write = LCD_Function_set;
    ///100uS delay
    delay(1);
    IR_Write = LCD_Function_set;
    /// Poll for BF
    lcdbusywait();
    //delay(100);
    IR_Write = LCD_Function_set;
    /// Poll for BF
    lcdbusywait();
    //delay(100);
    IR_Write = LCD_display_off;
    /// Poll for BF
    lcdbusywait();
    //delay(100);
    IR_Write = LCD_display_on;
    /// Poll for BF
    lcdbusywait();
    //delay(100);
    IR_Write = LCD_entrymode_set;
    /// Poll for BF
    lcdbusywait();
    //delay(100);
    IR_Write = LCD_Clearscreen;
}
/*
 Name: LCD_putch()
 Description: Writes the specified character to the current LCD cursor position.
 Inputs: uint8_t character to be inserted
 Outputs:None
*/
void LCD_putch(__xdata uint8_t ch)
{
    lcdbusywait();
    DR_WRITE=ch;
}
/*
 Name: LCD_putstr()
 Description: Writes the character string to the current LCD cursor position.
 Inputs: uint8_t string pointer to be inserted
 Outputs:None
*/
void LCD_putstr(__xdata uint8_t * str)
{
    while(*str!='\0')
    {
        lcdbusywait();
        LCD_putch(*str++);
        column_pos++;
        if(column_pos==16)
        {
            row_pos++;
            column_pos=0;
            lcd_gotoxy(row_pos,column_pos);
        }
    }
}
/*
 Name: lcdclear()
 Description: Clears the LCD using the HD44780 Clear display instruction.
 Inputs: none
 Returns: void
*/
void lcd_clear(void)
{
    lcdbusywait();
    IR_Write=LCD_Clearscreen;
}
void lcd_gotoaddr(unsigned char addr)
{
    lcdbusywait();
    IR_Write=addr|0x80;
}
void lcd_gotoxy(unsigned char row,unsigned char column)
{   column_pos=column;
    row_pos=row;
    switch(row)
    {
    case 1: lcd_gotoaddr(column);
            break;
    case 2: lcd_gotoaddr(63+column);
            break;
    case 3: lcd_gotoaddr(15+column);
            break;
    case 4: lcd_gotoaddr(80+column);
            break;
    default:
            break;
    }
}
