/* 	File Name: main.C
	File Description: This C code is uploaded to 89C51 to create the functionality of the LCD.
	Author Name: Nitik Satish Gupta
    Credits for Help: Dominic Doty, Tanmay Chaturvedi, Rakesh Kumar, Abhijeet Shrivastava.
*/
#include <mcs51/8051.h>
#include <mcs51/at89c51ed2.h>
#include <stdint.h>
#include <stdio.h>
#include "LCD_Functions.h"
#include "UART.h"
#include "timer.h"
volatile uint64_t count=0;
volatile uint8_t flag=0;
volatile uint8_t milli=0,seconds=0,minutes=0,hours;
/// Address for Instruction Register Write
__xdata __at (0xF000) volatile unsigned char IR_Write;
/// Address for Busy Flag Read
__xdata __at (0xF200) volatile unsigned char BF_Read;
/// Address for Data Register Write
__xdata __at (0xF100) volatile unsigned char DR_WRITE;
/// Address for Data Register Read
__xdata __at (0xF300) volatile unsigned char DR_READ;
void timer0_ISR() __interrupt(1)
{   EA=0;
    TR0=0;
    TF0=0;
    TH0=0x4B;
    TL0=0xFC;
    P1_1=!P1_1;
    TR0=1;
    EA=1;
    count++;
    if(count%2==0)
    {
        flag=1;
        count=0;
    }
    else
    {
        flag=0;
    }
}
void inttostr(uint8_t a)
{   unsigned char b[3],i=2,j;
    while(a!=0)
    {   i--;
        b[i]=(a%10)+'0';
        a=a/10;
    }
    printf_tiny("\n\r");
    for(j=0;j<i;j++)
    {   b[j]='0';
    }
    lcdbusywait();
    LCD_putstr(b);
    lcdbusywait();
    DR_WRITE=':';
}
void time_show()
{
    if(flag==1)
    {
        flag=0;
        milli++;
        if(milli==10)
        {
            seconds++;
            milli=0;
        }
        if(seconds==60)
        {
            minutes++;
            seconds=0;
        }
        hours=minutes/60;
        lcd_gotoxy(4,6);
        inttostr(hours);
        inttostr(minutes);
        inttostr(seconds);
        inttostr(milli);
    }
}
void main(void)
{   char a[]={"Ye Bik Gayi Hai gormint"};
    char b[]={"Nitik"};
    milli=0,seconds=0,minutes=0;
    timer_init();
    printf_tiny("\n\rNitik");
    delay(100);
   // Insert code
    LCD_Init();
    printf_tiny("\n\r Hello World");
    delay(100);
    //lcdbusywait();
    //lcdbusywait();
    DR_WRITE='A';
    lcd_clear();
    lcd_gotoxy(1,0);
    LCD_putstr(a);
    lcd_gotoxy(4,6);
    LCD_putstr(b);
   while(1)
   {
       time_show();
   };
}

