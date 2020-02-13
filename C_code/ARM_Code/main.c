/*****************************************************************************
*
* Copyright (C) 2013 - 2017 Texas Instruments Incorporated - http://www.ti.com/
*
* Redistribution and use in source and binary forms, with or without
* modification, are permitted provided that the following conditions
* are met:
*
* * Redistributions of source code must retain the above copyright
*   notice, this list of conditions and the following disclaimer.
*
* * Redistributions in binary form must reproduce the above copyright
*   notice, this list of conditions and the following disclaimer in the
*   documentation and/or other materials provided with the
*   distribution.
*
* * Neither the name of Texas Instruments Incorporated nor the names of
*   its contributors may be used to endorse or promote products derived
*   from this software without specific prior written permission.
*
* THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
* "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
* LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
* A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
* OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
* SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
* LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
* DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
* THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
* (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
* OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*
******************************************************************************
*
* MSP432 empty main.c template
*
******************************************************************************/

#include "msp.h"
#include <stdio.h>
char a[4];
void stringprint(char prt[])
{   uint8_t i=0;
    while(prt[i]!='\0')         // printing the string value
    {
          EUSCI_A0->TXBUF=(prt[i]);
          while(!(EUSCI_A0->IFG & EUSCI_A_IFG_TXIFG));
          i++;
    }
}
/*  Name: dyctochar
    Description:  Changing the duty cycle to string
    Inputs: prt-> duty cycle to be converted
    Returns: none.
*/
void dyctochar(uint16_t duty)
{
    a[3]='\0';              // changing the dutycyle value to string
    a[2]=' ';
    a[1]=(duty%10)+'0';
    duty=duty/10;
    a[0]=(duty%10)+'0';
}
void TA0_0_IRQHandler(void)     // IRQ handler for Transmit uart
{
  TIMER_A0->CCTL[0] &= ~TIMER_A_CCTLN_CCIFG;
  P2->OUT = BIT0;
}
void TA0_N_IRQHandler(void) {       // IRQ handler for Receive uart
  TIMER_A0->CCTL[1] &= ~TIMER_A_CCTLN_CCIFG;
  P2->OUT = ~BIT0;
}
/*  Name: Uart_Init()
    Description:  Initializing the uart port for use
    Inputs: none
    Returns: none.
*/
void Uart_init()            // UART Initialization
{
    CS->KEY = CS_KEY_VAL;                   // Unlock CS module for register access
        CS->CTL0 = 0;                           // Reset tuning parameters
        CS->CTL0 = CS_CTL0_DCORSEL_3;           // Set DCO to 12MHz (nominal, center of 8-16MHz range)
        CS->CTL1 = CS_CTL1_SELA_2 |             // Select ACLK = REFO
                CS_CTL1_SELS_3 |                // SMCLK = DCO
                CS_CTL1_SELM_3;                 // MCLK = DCO
        CS->KEY = 0;                            // Lock CS module from unintended accesses

        // Configure UART pins
        P1->SEL0 |= BIT2 | BIT3;                // set 2-UART pin as secondary function

        // Configure UART
        EUSCI_A0->CTLW0 |= EUSCI_A_CTLW0_SWRST; // Put eUSCI in reset
        EUSCI_A0->CTLW0 = EUSCI_A_CTLW0_SWRST | // Remain eUSCI in reset
                EUSCI_B_CTLW0_SSEL__SMCLK;      // Configure eUSCI clock source for SMCLK
        // Baud Rate calculation
        // 12000000/(16*9600) = 78.125
        // Fractional portion = 0.125
        // User's Guide Table 21-4: UCBRSx = 0x10
        // UCBRFx = int ( (78.125-78)*16) = 2
        EUSCI_A0->BRW = 6;                     // 12000000/16/115200
        EUSCI_A0->MCTLW = (8 << EUSCI_A_MCTLW_BRF_OFS) |
                EUSCI_A_MCTLW_OS16;
        EUSCI_A0->CTLW0 &= ~EUSCI_A_CTLW0_SWRST; // Initialize eUSCI
        EUSCI_A0->IFG &= ~EUSCI_A_IFG_RXIFG;    // Clear eUSCI RX interrupt flag
        EUSCI_A0->IE |= EUSCI_A_IE_RXIE;        // Enable USCI_A0 RX interrupt

}
void RTC_Init()
{
    // Configure RTC
        RTCCTL0_H = RTCKEY_H ;                 // Unlock RTC key protected registers
        RTCCTL0_L |= RTCTEVIE ;
        RTCCTL0_L &= ~(RTCTEVIFG);
        RTCCTL1 = RTCHOLD ;
        // RTC enable, BCD mode, RTC hold
        // enable RTC read ready interrupt
        // enable RTC time event interrupt

        RTCYEAR = 0x2010;                         // Year = 0x2010
        RTCMON = 0x4;                             // Month = 0x04 = April
        RTCDAY = 0x05;                            // Day = 0x05 = 5th
        RTCDOW = 0x01;                            // Day of week = 0x01 = Monday
        RTCHOUR = 0x00;                           // Hour = 0x10
        RTCMIN = 0x00;                            // Minute = 0x32
        RTCSEC = 0x00;                            // Seconds = 0x45

        RTCADOWDAY = 0x2;                         // RTC Day of week alarm = 0x2
        RTCADAY = 0x20;                           // RTC Day Alarm = 0x20
        RTCAHOUR = 0x10;                          // RTC Hour Alarm
        RTCAMIN = 0x23;                           // RTC Minute Alarm

        RTCCTL1 &= ~(RTCHOLD);                    // Start RTC calendar mode

        RTCCTL0_H = 0;                            // Lock the RTC registers

}
int main(void)
{   uint32_t RTCprev;
    WDTCTL = WDTPW | WDTHOLD;               // Stop WDT
    Uart_init();
    RTC_Init();
    /* Configure P1.0 LED */
    P1DIR |= BIT0 ;
    P1OUT &= ~( BIT0 );

    /* Enable all SRAM bank retentions prior to going to LPM3 (Deep-sleep) */
    SYSCTL->SRAM_BANKRET |= SYSCTL_SRAM_BANKRET_BNK7_RET;

    __enable_interrupt();
    NVIC->ISER[0] = 1 << ((RTC_C_IRQn - 16) & 31);
    NVIC->ISER[0]=1<<((TA0_0_IRQn)&31);
    NVIC->ISER[0]=1<<((TA0_N_IRQn)&31);
    SCB->SCR|=SCB_SCR_SLEEPONEXIT_Msk;
    RTCprev=RTCSEC;
      while (1)
      {     if(RTCprev!=RTCSEC)
          {  RTCprev=RTCSEC;
             stringprint("\n\r");
             dyctochar(RTCHOUR);
             stringprint(a);
             stringprint(":");
             dyctochar(RTCMIN);
             stringprint(a);
             stringprint(":");
             dyctochar(RTCSEC);
             stringprint(a);
          }
      }
}

// RTC interrupt service routine

void RtcIsrHandler(void)
{
    if (RTCCTL0 & RTCTEVIFG)
    {
        P1OUT ^= BIT0;
        RTCCTL0_H = RTCKEY_H ;
        RTCCTL0_L &= ~RTCTEVIFG;
        RTCCTL0_H = 0;
    }
}
