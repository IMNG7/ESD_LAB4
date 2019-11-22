/* 	File Name: LCD_Functions.h
	File Description: This h code contains the all the other functions declaration that are being used for the functionality of the program.
	Author Name: Nitik Satish Gupta
*/
#include <stdint.h>
void LCD_Init(void);
void lcdbusywait(void);
void LCD_putch(__xdata uint8_t ch);
void LCD_putstr(__xdata uint8_t * str);
void lcd_clear(void);
void delay(uint32_t time);
void lcd_gotoaddr(unsigned char addr);
void lcd_gotoxy(unsigned char row,unsigned char column);
