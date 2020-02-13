/* 	File Name: UART.c
	File Description: This c code contains the all the  functions definitions that are being used for the functionality of the UART.
	Author Name: Nitik Satish Gupta
*/
#include <mcs51/8051.h>
#include <mcs51/at89c51ed2.h>
#include <stdio.h>
#include "timer.h"
/*	Name: putchar
	Description: Function that will allow the transmission of characters
	Inputs: c-> Integer to be sent
	Returns: returning 1 after data is sent
*/
int putchar(int c)
{
        while(!TI);                         // checking the TI interrupt bit, when it sets, the data is sent
        TI=0;
        SBUF = c;
        return 1;
}
/*	Name: getchar
	Description: Function that will receive characters
	Inputs: None
	Returns: integer value received from the user
*/
int getchar()
{
    while(!RI)
    {
        time_show();
    };// checking the RI interrupt bit, when it sets, the data is received
    RI=0;
    return SBUF;
}
