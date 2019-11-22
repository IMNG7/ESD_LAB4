#include "timer.h"
#include <mcs51/8051.h>
#include <mcs51/at89c51ed2.h>
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

