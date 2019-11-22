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
        lcd_gotoxy(4,5);
        inttostr(hours);
        inttostr(minutes);
        inttostr(seconds);
        inttostr(milli);
    }
}
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
//    printf_tiny("\n\rNitik");
//    delay(100);
//   // Insert code
    LCD_Init();
//    printf_tiny("\n\r Hello World");
//    delay(100);
//        lcd_gotoaddr(66);
//        LCD_putch('a');
//    //lcdbusywait();
//    //lcdbusywait();
//    lcd_clear();
//    lcd_gotoxy(1,0);
//    LCD_putstr(a);
//    lcd_gotoxy(4,0);
//    LCD_putstr(b);
    do
    {   if(choice!=0)
        {   printf_tiny("\n\r Your Options Are:");
            printf_tiny("\n\r 1. Print the character at the starting.");
            printf_tiny("\n\r 2. Print the character at your place of choosing.");
            printf_tiny("\n\r 3. Reset The clock.");
            printf_tiny("\n\r 4. Stop The clock.");
            printf_tiny("\n\r 5. Restart The clock.");
            printf_tiny("\n\r 6. Clear the Screen.");
            printf_tiny("\n\r 7. Help Menu");
            printf_tiny("\n\r 8. Exit");
            printf_tiny("\n\r Enter your choice:");
        }
        choice=0;
        choice=getchar();
        switch(choice)
        {
             case '0':
                        break;
            case '1':   printf_tiny("\n\rEnter the character:");
                        ch=getchar();
                        printf_tiny("%c",ch);
                        lcd_gotoxy(1,1);
                        LCD_putch(ch);
                        break;
            case '2':
                        printf_tiny("\n\rEnter the row:");
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

            case '3': milli=0,seconds=0,minutes=0;
                        printf_tiny("\n\r Clock Successfully Reset");
                        break;
            case '4': TR0=0;
                        printf_tiny("\n\r LCD Cleared Successfully ");
                        break;
            case '5':   TR0=1;
                        break;
            case '6' :  lcd_clear();
                        break;
            case '7' :  help();
                        break;
            case '8': printf_tiny("\n\r Thank You for Participating");
                        break;
            default :
                        break;
        }
    }while(choice!='8');
}

