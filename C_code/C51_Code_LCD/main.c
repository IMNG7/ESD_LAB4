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
void timer0_ISR() __interrupt(1)    // Interrupt Service Routing of the Timer 0
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
/* Name: time_show()
 Description: Calculates and shows the time at the bottom right corner of the LCD.
  Inputs: none
 Returns: void
.*/
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
        if(seconds==60)         //minute increments after every 60 seconds
        {
            minutes++;
            seconds=0;
        }
        hours=minutes/60;
        lcd_gotoxy(4,8);
        inttostr(minutes);      //converting to string and display
        inttostr(seconds);
        inttostr(milli);
    }
}
/* Name: help()
 Description: contains all the print statements for the help of the user
  Inputs: none
 Returns: void
.*/
void help()
{
    printf_tiny("\n\r Welcome to the World Of working(maybe) LCD.");
    printf_tiny("\n\r There are some instructions to read before to proceed.");
    printf_tiny("\n\r This lab was aimed to allow the students to learn the implementation of the LCD.");
    printf_tiny("\n\r The LCD has 4 rows and 16 columns.");
    printf_tiny("\n\r Trying to go beyond that will give you an error.");
    printf_tiny("\n\r if you want to print a character, we have an option for you.");
    printf_tiny("\n\r As soon as you enter the program, the timer will start.");
    printf_tiny("\n\r If you are here for the first time, The timer is stopped for now.");
    printf_tiny("\n\r The timer is running continuously, if you want to print the character at timer's place, its impossible.");
    printf_tiny("\n\r Press Enter to Continue");
    getchar();
}
void main(void)
{   char a[]={"Ye Bik Gayi Hai gormint"};
    char b[]={"My Name is Nitik Gupta"};
    char ch;
    milli=0,seconds=0,minutes=0;
    volatile uint8_t choice=1,row_value,column1,column2,column_value;
    help();
    timer_init();
    LCD_Init();
    time_show();
    do
    {   if(choice!=0)                                                           //Menu for the program
        {   printf_tiny("\n\r Your Options Are:");
            printf_tiny("\n\r 1. Print the character at the starting.");
            printf_tiny("\n\r 2. Print the character at your place of choosing.");
            printf_tiny("\n\r 3. Reset The clock.");
            printf_tiny("\n\r 4. Stop The clock.");
            printf_tiny("\n\r 5. Restart The clock.");
            printf_tiny("\n\r 6. Clear the Screen.");
            printf_tiny("\n\r 7. DDRAM Dump");
            printf_tiny("\n\r 8. CG7RAM Dump");
            printf_tiny("\n\r 9. Help Menu");
            printf_tiny("\n\r 10. Exit");
            printf_tiny("\n\r Enter your choice:");
        }
        choice=0;
        choice=getchar()-'0';
        if(choice==1)                                   //To getting the value till 10, if greater then return 0 for choice
        {   printf_tiny("%d",choice);
            volatile uint8_t choice1=getchar();
            if(choice1=='0')
            {   printf("%c",choice1);
                choice=10;
            }
            else if(choice1==13)
            { choice=1;
            }
            else
            {   choice=0;
            }
        }
        switch(choice)                  //Menu Driven
        {
             case 0:
                        break;
            case 1:   printf_tiny("\n\rEnter the character:");
                        ch=getchar();
                        printf_tiny("%c",ch);
                        lcd_gotoxy(1,1);
                        LCD_putch(ch);
                        break;
            case 2:     printf_tiny("\n\rEnter the row:");
                        do
                        {
                            row_value=getchar();
                            if(row_value>'5' || row_value =='0')
                            {
                                printf_tiny("\n\r Sorry wrong choice, Enter Again.");
                            }
                        }while(!(row_value>'0' && row_value<'5'));
                        printf_tiny("%c",row_value);
                        printf_tiny("\n\rEnter the column:");
                        do
                        {
                            column1=getchar();
                            column1=column1-'0';
                            if(column1==1||column1==0)
                            {   column2=getchar();
                                column2=column2-'0';
                                column_value=column1*10+column2;
                            }
                            else
                            {
                                column2=0;
                                column_value=column1;
                            }
                            if(column_value>16)
                            {
                                printf_tiny("\n\r Sorry wrong choice, Enter Again.");
                            }
                        }while((column_value>16));
                        printf_tiny("%d",column_value);
                        printf_tiny("\n\rEnter the character:");
                        ch=getchar();
                        printf_tiny("%c",ch);
                        lcd_gotoxy(row_value-'0',column_value);
                        LCD_putch(ch);
                        break;
            case 3:     milli=0,seconds=0,minutes=0;
                        printf_tiny("\n\r Clock Successfully Reset");
                        break;
            case 4:     TR0=0;
                        printf_tiny("\n\r Timer Stopped Successfully");
                        break;
            case 5:     TR0=1;
                        printf_tiny("\n\r Timer Started Successfully");
                        break;
            case 6 :    lcd_clear;
                        printf_tiny("\n\r LCD Cleared Successfully ");
                        break;
            case 7 :    lcdbusywait();
                        ddram_dump();
                        break;
            case 8 :
                        break;
            case 9 :    help();
                        break;
            case 10:    printf_tiny("\n\r Thank you and visit again");
                        break;
            default :
                        break;
        }
    }while(choice!=10);
}

