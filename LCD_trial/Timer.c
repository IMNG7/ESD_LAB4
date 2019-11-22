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
void timer_init()
{
  //IEN0 |= 0x82;
    TMOD|=0x01;
    //TMOD&=0xF1;
    TH0=0x4B;
    TL0=0xFC;
    TR0=1;
    ET0|=1;
    EA|=1;
}

void inttostr(uint8_t a)
{   unsigned char b[3],i=2,j;
    while(a!=0)
    {   i--;
        b[i]=(a%10)+'0';
        a=a/10;
    }
    for(j=0;j<i;j++)
    {   b[j]='0';
    }
    lcdbusywait();
    LCD_putstr(b);
    lcdbusywait();
    DR_WRITE=':';
}
