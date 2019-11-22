#include <mcs51/8051.h>
#include <mcs51/at89c51ed2.h>
void uartinit()
{
   TMOD = 0x20;
   SCON = 0x50;
   TH1 = 0xFD;
   TR1 =1;
}
int putchar(int c)
{
        while(!TI);                         // checking the TI interrupt bit, when it sets, the data is sent
        TI=0;
        SBUF = c;
        return 1;
}
int getchar()
{
    while(!RI);
                        // checking the RI interrupt bit, when it sets, the data is received
    RI=0;
    return SBUF;
}
