/* 	File Name: main.C
	File Description: This C code is uploaded to 89C51 to create a menu driven program that will ask the user to communicate with the EEPROM chip, like
                       to write a value, read a value, and dumping the hex value and resetting the EEPROM.
	Author Name: Nitik Satish Gupta
	Credits For I2C code: http://www.dl9sec.de/prj_sdccokr.html
    Credits for Help: Dominic Doty, Tanmay Chaturvedi, Rakesh Kumar, Abhijeet Shrivastava, Jerome Hittle
*/
#include <stdint.h>
#include <stdio.h>
#include "I2C_Functions.h"
#include "Functions.h"
/*	Name: help
	Description: help menu for the user
	Inputs: none
	Returns: void
*/
void help()
{

    printf_tiny("\n\rWelcome Teaching Assistant to the Demo of the I2C on the AT89C51 board ");
    printf_tiny("\n\rBefore Starting the program, I have some rules for you");
    printf_tiny("\n\r ->Please try to enter valid values, extensive testing hurts me a lot and might even break me.");
    printf_tiny("\n\r ->Please make sure before entering a hex value don't add 0x before it.");
    printf_tiny("\n\r ->As Described in the assignment, all values are in hexadecimal, any decimal entered will be treated as hex.");
    printf_tiny("\n\r ->Please look at all the choices and give the choice number as described.");
    printf_tiny("\n\r ->The Maximum address that can be entered is 7FF.");
    printf_tiny("\n\r ->Please Enter the First Address greater than last address(duh!!).");
    printf_tiny("\n\r ->I will try to give as many error condition as possible.");
    printf_tiny("\n\r ->Enough Chit-Chat and lets start with the program.");
    printf_tiny("\n\n\n\r \t\t\tPRESS ANY KEY TO CONTINUE");

    getchar();
}
/*	Name: main
	Description: the main function where the program will start its execution, it contains the menu for the user to start the program, all the
                 initialization functions and the other I2C functions are being called here.
	Inputs: none
	Returns: void
*/
void main(void)
{
    //int *b=NULL;
    volatile uint8_t choice;
    uint16_t Address1,Address2,Data,block,DataR;
    help();
    do
    {
        printf_tiny("\n\n\n\r So, Your Choices for the Program are:");
        printf_tiny("\n\r1.Write a Byte value in the EEPROM.");
        printf_tiny("\n\r2.Read a Byte value in the EEPROM.");
        printf_tiny("\n\r3.Dump the values in the EEPROM between the given addresses using Sequential Read.");
        printf_tiny("\n\r4.Reset the EEPROM.");
        printf_tiny("\n\r5.Help Menu.");
        printf_tiny("\n\r6.Exit the program");
        printf_tiny("\n\rEnter the valid choice:");
        choice=getchar();
        switch(choice)
        {
            case '1' :
                        printf_tiny("\n\r Enter the Address where the Data is to be Stored:");
                        Address1=getstr_addr();
                        block=get_block();
                        printf_tiny("\n\r Enter the Data to be stored:");
                        Data=getstr_data();
                        dummy_write(0,0);
                        delay();
                        weeprom(block,Address1,Data);
                        dummy_read();
                        delay();
                        DataR=reeprom(block,Address1);
                        if(DataR==Data)
                        {
                                printf_tiny("\n\r Data Entered Successfully.");

                        }
                        else
                        {
                                printf_tiny("\n\r Data Writing Failed.");
                        }
                        break;
            case '2' :  printf_tiny("\n\r Enter the Address where the Data is to be Searched:");
                        Address1=getstr_addr();
                        block=get_block();
                        dummy_read();
                        delay();
                        Data=reeprom(block,Address1);
                        printf_tiny("\n\rData=%x",Data);
                        break;
            case '3' :  printf_tiny("\n\rEnter the First Address:");
                        Address1=getstr_addr();
                        block=get_block();
                        printf_tiny("\n\rEnter the Last Address:");
                        Address2=getstr_addr();
                        if(Address1>=Address2)
                        {
                            printf_tiny("\n\r Sorry, The First Address is greater than or equal to last address,Please select the Option Again.");
                        }
                        else
                        {
                            dummy_read();
                            delay();
                            reeprom_seq(block,Address1,Address2);
                        }
                        break;
            case '4' :  eereset();
                        printf_tiny("\n\rReset Successfully");
                        break;
            case '5' :  help();
                        break;
            case '6' :  break;
            default  :  printf_tiny("\n\rWrong Choice Selected Please Enter Again");
                        break;
        }
        printf_tiny("\n\n\n\r \t\t\t\t\tPRESS ANY KEY TO CONTINUE");
    getchar();
    }while(choice!='7');
    printf_tiny("\n\r Thank you for your patience and Handling. Please visit again.");
    while(1);
}
