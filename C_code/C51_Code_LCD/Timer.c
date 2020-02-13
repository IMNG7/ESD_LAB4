/* 	File Name: Timer.c
	File Description: This c code contains the all the  functions definitions that are being used for the functionality of the Timer.
	Author Name: Nitik Satish Gupta
*/
#include "timer.h"
#include <mcs51/8051.h>
#include <mcs51/at89c51ed2.h>
#include "LCD_Functions.h"
/// Address for Instruction Register Write
__xdata __at (0xF000) volatile unsigned char IR_Write;
/// Address for Busy Flag Read
__xdata __at (0xF200) volatile unsigned char BF_Read;
/// Address for Data Register Write
__xdata __at (0xF100) volatile unsigned char DR_WRITE;
/// Address for Data Register Read
__xdata __at (0xF300) volatile unsigned char DR_READ;
/* Name: timer_init()
 Description: Initializes the timer 0 to work in interrupt mode at the overflow, will interrupt in every 50ms.
  Inputs: none
 Returns: void
.*/
void timer_init()
{
  //IEN0 |= 0x82;
    TMOD|=0x01;
    //TMOD&=0xF1;
    TH0=0x4B;       // timer values for getting overflow in 50ms
    TL0=0xFC;
    TR0=1;          //starting timer
    ET0|=1;         //starting timer interrupt
    EA|=1;          //Enabling the interrupt
}
/* Name: inttostr
 Description: Function to convert the time in integer into string for the display of time
  Inputs: Integer to convert to string
 Returns: void
.*/
void inttostr(uint8_t a)
{   unsigned char b[3],i=2,j;
    while(a!=0)
    {   i--;
        b[i]=(a%10)+'0';        //Start from the last and go till first
        a=a/10;
    }
    for(j=0;j<i;j++)
    {   b[j]='0';               // give the first few values zero
    }
    lcdbusywait();
    LCD_putstr(b);
    lcdbusywait();
    DR_WRITE=':';
}
