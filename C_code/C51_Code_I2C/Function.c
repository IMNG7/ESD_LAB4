/* 	File Name: Functions.c
	File Description: This c code contains the all the other functions definitions that are being used for the functionality of the program.
	Author Name: Nitik Satish Gupta
*/
#include <mcs51/8051.h>
#include <mcs51/at89c51ed2.h>
#include <stdint.h>
#include <stdio.h>
#include "I2C_Functions.h"
volatile uint8_t block;         // Stores the block value
volatile uint8_t page;          // Stores the page value
/*	Name: delay
	Description: creates a delay for around 1000 cycles.
	Inputs: none
	Returns: void
*/
void delay()
{   uint16_t i=0;
    while(i!=1000)
    {
        ++i;
    }
}
/*	Name: strtola
	Description: String to long integer converter
	Inputs: q-> pointer to the string
	Returns: res-> The resultant 16 bit integer
*/
uint16_t strtola(int *q)
{   volatile uint8_t i=0,a;
    __data uint16_t res=0;
    page=0;
    do
    {   if(*q>='A' && *q <='F')
        {
            a=*q-55;            // Converting A to F to 10 to 15
        }
        else if(*q>='a' && *q<='f')
        {
            a=*q-87;             // Converting a to f to 10 to 15
        }
        else if(*q>='0' && *q<='9')
        {
            a=*q-'0';            // Converting ASCII to Numbers
        }
        else
        {
            a=0;
        }
        if(i==0)
        {
            block=a;            //Storing the first digit as block
        }
        if(i>0)
        {
            page=(page*16)+a;   // storing the next 2 as page

        }
        res=(res*16)+a;   // Logic from C99 basic itoa function
        *q++;
        i++;
    }while(*q!=13);
    return res;
}
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
    while(!RI);
                        // checking the RI interrupt bit, when it sets, the data is received
    RI=0;
    return SBUF;
}
/*	Name: getstr_addr
	Description: Function that will receiving a string of address and handles the error
	Inputs: None
	Returns: integer value received for the address
*/
uint16_t getstr_addr()
{   //uint8_t comp=0;
    volatile int buffer_char[5]={0},i=0;
    uint16_t res;
    volatile uint8_t comp=0;
    do
    {
        do
            {
                buffer_char[i]=getchar();
                if((buffer_char[i]>='0' && buffer_char[i]<='9')||(buffer_char[i]>='a' && buffer_char[i]<='f')||(buffer_char[i]>='A' && buffer_char[i]<='F'))    // Checking for valid input
                {
                    printf_tiny("%c",buffer_char[i]);     //Getting the string value of characters one by one through uart.
                    i++;
                }
                else if((buffer_char[i]==13))       //checking for enter key
                {
                    printf_tiny("%c",buffer_char[i]);
                }
                else
                {
                    printf_tiny("\n\rInvalid Input, Please enter The whole string Again.");
                    printf_tiny("\n\rEnter the Address:");
                    i=0;
                }
                if(i==3)
                {
                    break;
                }
            }while(buffer_char[i]!=13);
            if(i==3)            // For handling more than 3 digit error
            {
                    printf_tiny("\n\rCan't Add more than 3 digits.");
                    buffer_char[i]=13;
            }
            else if(i<3)            // for getting the block and page number if user inputs less than 3 digits, will get block =0
            {   uint8_t j=3;
                while(j-i!=0)
                {
                    for(uint8_t k=3;k>0;k--)
                    {
                        buffer_char[k]=buffer_char[k-1];
                    }
                    j--;
                }
                for(j=0;j<3-i;j++)
                {
                    buffer_char[j]=0;
                }
                printf_tiny("\n\r");
            }
    res=strtola(buffer_char);
    if(res<=0x7FF)      // checking for Address limit 7FF
        comp=1;
    else
    {
        printf_tiny("\n\r Address beyond the limit, Please enter the Address again(the address should be between 000-7FF):.");
        i=0;
        comp=0;
    }
    }while(comp!=1);
    return res;
}
/*	Name: getstr_data
	Description: Function that will receiving a string of data and handles the error
	Inputs: None
	Returns: integer value received for the data
*/
uint16_t getstr_data()
{
    int buffer_char[5],i=0,res=1;
        do
            {
                buffer_char[i]=getchar();
                if((buffer_char[i]>='0' && buffer_char[i]<='9')||) // Checking for valid input
                {
                    printf_tiny("%c",buffer_char[i]);     //Getting the string value of characters one by one through uart.
                    i++;
                }
                else if((buffer_char[i]==13))           //checking for enter key
                {
                    printf_tiny("%c",buffer_char[i]);
                }
                else
                {
                    printf_tiny("\n\rInvalid Input, Please enter The whole string Again.");
                    printf_tiny("\n\rEnter the Data:");
                    i=0;
                }
                if(i==2)        // For handling more than 2 digit error
                {
                    break;
                }
            }while(buffer_char[i]!=13);
            if(i==2)
            {
                    printf_tiny("\n\rCan't Add more than 2 digits.");
                    buffer_char[i]=13;
            }
    res=strtola(buffer_char);
    return res;
}
/*	Name: get_block
	Description: Function return the block value for the further calculations
	Inputs: None
	Returns: integer value received for the block
*/
uint16_t get_block()
{
    return block;
}
