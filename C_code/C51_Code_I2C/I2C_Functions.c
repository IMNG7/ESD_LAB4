/* 	File Name: I2C_Functions.c
	File Description: This C code contains the all the I2C functions that are being used for the functionality of the program.
	Author Name: Nitik Satish Gupta
*/
#include "I2C_Functions.h"
#include "mcs51/at89c51ed2.h"
#include <stdint.h>
#include <stdio.h>
#define SDA (P1_7)
#define SCK (P1_6)
//bit SCK=P1_7;
//* Function Name: char weeprom (char page, char address)
//* Function Description: write routine for I2C EEPROM
//* Input parameters:
//* - char page: number of 256 bytes block to use
//* - char address: position inside the 256 bytes block
//* Output parameters:
//* - char with the data from memory
void weeprom (char page, char address, char datum)
{
	char WRCMD; // auxiliary storage to build the write command
	page = page << 1; // move A0, A1 & A2 to their positions
	page = page & 0xFE; // clear r/w bit
	WRCMD = page | 0xA0; // build the write command
	outs (WRCMD); // send the write command with start condition
	out (address); // send address
	out (datum); // send data
	stop (); // send stop condition
}
//* Function Name: char reeprom (char page, char address)
//* Function Description: read routine for I2C EEPROM
//* Input parameters:
//* - char page: number of 256 bytes block to use
//* - char address: position inside the 256 bytes block
//* Output parameters:
//* - char with the data from memory
char reeprom (char page, char address)
{
	char aux; // auxiliary storage
	char WRCMD; // aux. storage for the write command (to send the add.)
	aux = page; // preparing the write command
	aux = aux << 1; // move A0, A1 & A2 to their positions
	aux = aux & 0xFE; // clear r/w bit
	WRCMD = aux | 0xA0; // build the write command
	outs (WRCMD); // send the write command with start condition
	out (address); // send address
	aux = read (WRCMD); // send read command and receive data
	return (aux); // return solicited data
}

//* Function Name: char read (char readcmd)
//* Function Description: reads 1 byte from current memory position
//* Input parameters:
//* - char readcmd: read command byte with A0, A1 & A2 embedded
//* Output parameters:
//* - char with current address data
char read (char readcmd)
{
	char RDCMD; // auxiliary storage to build the read command
	char aux; // auxiliary storage
	RDCMD = readcmd | 0x01; // set r/w bit
	outs (RDCMD); // send read command with start condition
	aux = in(); // read current position
	stop (); // send stop condition
	return (aux); // return current position data
}

//* Function Name: void outs (char datum)
//* Function Description: sends to memory the input parameter with a
//*                       start condition
//* Input parameters:
//* - char datum: data byte to send to the memory
//* Output parameters: NONE
void outs (char datum)
{
	char i; // index
	char aux; // auxiliary storage
	SDA = 1; // set port pin SDA to insure data is HI
	SCK = 1; // set port pin SCK to insure clock is HI
__asm
	nop
	nop
	nop
	nop
	nop
__endasm;
	SDA = 0; // start condition, data = 0
__asm
	nop
	nop
	nop
	nop
	nop
__endasm;

	SCK = 0; // clock = 0
/*
The data on the line must be changed only when clock is low
*/


	for (i = 0; i < 8; i++) // bit shifting cycle
	{
		aux = datum & 0x80; // check MSB bit
		if (aux == 0) // MSB = 0
			SDA = 0; // then SDA = 0
		else
			SDA = 1; // else MSB =1, then SDA = 1
		SCK = 1; // clock = 1

//Why is SCK being toggled here?
//perhaps so that noise cannot be confused as data
// or maybe to produce the extra clock pulse at the end of the loop
__asm
		nop
		nop
		nop
		nop
		nop
__endasm;

//Why is SCK being toggled here?

		SCK = 0; // clock = 0
		datum = datum << 1; // rotate for next bit
	}

	SDA = 1; // set port pin for ack
//The slave will pull down the SDA to generate an ACK, however the SDA is already pulled-up by a resistor?
__asm
	nop
	nop
	nop
__endasm;
	SCK = 1; // clock ack
__asm
	nop
	nop
	nop
	nop
	nop
__endasm;
	SCK = 0; // clock = 0
}
//* Function Name: void out (char datum)
//* Function Description: sends to memory the input parameter without a
//*                       start condition
//* Input parameters:
//* - char datum: data byte to send to the memory
//* Output parameters: NONE
void out (char datum)
{
	char i; // index
	char aux; // auxiliary storage
	for (i = 0; i < 8; i++) // bit shifting cycle
	{
		aux = datum & 0x80; // check MSB bit
		if (aux == 0) // MSB = 0
			SDA = 0; // then SDA = 0
		else
			SDA = 1; // else MSB = 1, the SDA = 1
		SCK = 1; // clock = 1
__asm
		nop
		nop
		nop
		nop
		nop
__endasm;
		SCK = 0; // clock = 0
		datum = datum << 1; // rotate for next bit
	}
	SDA = 1; // set port pin for ack
__asm
	nop
	nop
	nop
__endasm;
	SCK = 1; // clock ack
__asm
	nop
	nop
	nop
	nop
	nop
__endasm;
	SCK = 0; // clock = 0
}

//* Function Name: char in (void)
//* Function Description: receives a byte from memory
//* Input parameters: NONE
//* Output parameters:
//* - char with the byte received from memory
char in (void)
{
	char i; // index
	char aux = 0; // auxiliary storage
	SDA = 1; // insure port pin = 1 for input
	for (i = 0; i < 8; i++) // bit shifting cycle
	{
		SCK = 0; // clock = 0
__asm
		nop
		nop
		nop
		nop
		nop
		nop
__endasm;
		SCK = 1; // clock = 1
		aux = aux << 1; // load bit position
		if (SDA) // check SDA data from port pin
			aux = aux | 0x01; // if port pin = 1, set LSB (bit position)
		else
			aux = aux & 0xFE; // else port pin = ,clear LSB (bit position)
	}
	SCK = 0; // clock = 0
	return (aux); // return data received
}
//* Function Name: void stop (void)
//* Function Description: send stop condition
//* Input parameters: NONE
//* Output parameters: NONE
void stop (void)
{
	SDA = 0; // stop condition, data = 0
__asm
	nop
	nop
	nop
	nop
	nop
__endasm;
	SCK = 1; // clock = 1
__asm
	nop
	nop
	nop
	nop
	nop
__endasm;
	SDA = 1; // data = 1
}
//* Function Name: void start (void)
//* Function Description: send start condition
//* Input parameters: NONE
//* Output parameters: NONE
void start(void)
{
    SDA=1;
    SCK = 1;
    __asm
	nop
	nop
	nop
	nop
	nop
__endasm;
    SDA=0;	 // clock = 1
__asm
	nop
	nop
	nop
	nop
	nop
__endasm;
	SCK = 0; // data = 1
}
//* Function Name: void eereset (void)
//* Function Description: send reset condition
//* Input parameters: NONE
//* Output parameters: NONE
void eereset()
{
    start();
    for(uint8_t i=0;i<9;i++)
    {   SDA=1;
    SCK=1;
    __asm
	nop
	nop
	nop
	nop
	nop
    __endasm;
    SCK=0;
    }
    start();
    stop();
}
//* Function Name: void ack (void)
//* Function Description: send ack condition
//* Input parameters: NONE
//* Output parameters: NONE
void ack(void)
{
   SDA = 0; // 8051 Pulls SDA low to ACK
    __asm
    nop
    nop
    nop
__endasm;
    SCK = 1; // clock ack
__asm
    nop
    nop
    nop
    nop
    nop
__endasm;
    SCK = 0; // clock = 0
    SDA = 1; // Pulling it back up now
}
/*	Name: delay1
	Description: create a delay of certain time
	Inputs: none
	Returns: none
*/
void delay1()
{   uint16_t i=0;
    while(i!=1000)
    {
        ++i;
    }
}
//* Function Name:reeprom_seq
//* Function Description: sequential read routine for I2C EEPROM
//* Input parameters:
//* - char block: number of 256 bytes block to use
//* - char Start_address: Start position inside the 256 bytes block to read
//* - char End_address: End position inside the 256 bytes block to read
//* Output parameters:
//* - None
void reeprom_seq(uint16_t block,int Start_Address,int End_Address)
{
    volatile uint8_t a=Start_Address%16;
    uint8_t b=End_Address%16;
    volatile uint16_t i,res=0,j;
    volatile char aux; // auxiliary storage
	volatile char WRCMD; // aux. storage for the write command (to send the add.)
    Start_Address=Start_Address-a;
    End_Address=End_Address+16-b;
    aux = block; // preparing the write command
	aux = aux << 1; // move A0, A1 & A2 to their positions
	aux = aux & 0xFE; // clear r/w bit
	WRCMD = aux | 0xA0; // build the write command
	outs(WRCMD); // send the write command with start condition
	out(Start_Address); // send address
    aux = aux << 1; // move A0, A1 & A2 to their positions
    aux = aux & 0xFE; // clear r/w bit
    WRCMD = aux | 0xA1; // Make R/W = 1 ///There is another start in outs
    outs(WRCMD); // send the write command with start condition/// Pulling up SCK
    delay1();
    i=Start_Address;
     while(i!=End_Address)
    {   if(i%(0x100)==0)        // For Proper display format
        {
            printf_tiny("\n\r    ");
            printf_tiny("\n\r********************************************************************");
            printf_tiny("\n\rAddr");
            printf_tiny("                               DATA");
            printf_tiny("\n\r********************************************************************\n\r");
             for(j=0;j<16;j++)
            {
                if(j==0)
                {
                    printf_tiny("       ",j);
                }
            printf_tiny("%x   ",j);
            }
        }
        if(i%16==0)
        {   if(i==0)
            {
                printf("\n\r0x00%x:",i);
            }
            else if(i<(0x100))
            {
                printf("\n\r0x0%x:",i);
            }
            else
            {
                printf("\n\r0x%x:",i);
            }
        }
        aux=in();
        ack();          // According to the datasheet, give an acknowledgement after each read.
        delay1();       // Let the Program to empty buffer
        if(aux<0x10)       // For Proper display format
        {
            printf("0%x  ",aux);
        }
        else
        {
            printf("%x  ",aux);
        }

        i++;
    }
    stop();
}
/*	Name: dummy_read
	Description: create a dummy read for correct operation of I2C
	Inputs: none
	Returns: none
*/
void dummy_read()
{
    reeprom(0x00,0x00);
}
/*	Name: dummy_write
	Description: create a dummy write for correct operation of I2C
	Inputs: none
	Returns: none
*/
void dummy_write(uint16_t block,uint16_t Address)
{
    weeprom(block,Address,0x00);
}
