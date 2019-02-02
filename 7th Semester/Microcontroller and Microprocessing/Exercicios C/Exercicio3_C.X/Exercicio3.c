/*
 * File:   newmainex3.c
 * Author: Matheus
 *
 *  Created on October 1, 2017, 4:01 PM
 */


#include <xc.h>

#define _XTAL_FREQ 4000000


void setup();

void main(void) {
    setup();
    if(PORTAbits.RA0 == 1 && PORTAbits.RA1 == 1){
    __delay_ms(10);
    PORTBbits.RB0 = 1;
    __delay_ms(2000);
    PORTBbits.RB0 = 0;
    __delay_ms(3000);
    }else{
        PORTB = 0x00;
    }
    return;
}

void setup(){
    //Saidas
    TRISB = 0x00;
    
    __delay_ms(20);
    //Entradas
    TRISAbits.TRISA0 = 1;
    TRISAbits.TRISA1 = 1;
    __delay_ms(20);
}

