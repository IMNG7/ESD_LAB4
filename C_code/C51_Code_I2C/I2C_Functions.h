/* 	File Name: I2C_Functions.h
	File Description: This h code contains the all the I2C functions declaration that are being used for the functionality of the program.
	Author Name: Nitik Satish Gupta
*/
#include <stdint.h>
void weeprom (char page, char address, char datum);
char reeprom (char page, char address);
char read (char readcmd);
void outs (char datum);
void out (char datum);
char in (void);
void stop (void);
void reeprom_seq(uint16_t block,int Start_Address,int End_Address);
void Seq_Read(uint16_t Start_Address,uint16_t End_Address);
void dummy_read();
void dummy_write(uint16_t block,uint16_t Address);
