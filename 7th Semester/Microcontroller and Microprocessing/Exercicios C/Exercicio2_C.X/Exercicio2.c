/*
 * File:   exercicio2.c
 * Author: Matheus Machado
 *
 * Created on October 1, 2017, 4:01 PM
 */


#include <xc.h>
#include <htc.h>

#define _XTAL_FREQ 1000000

void setup();

void main(void) {
    setup();
    __delay_ms(10);
    while(1)
    {
            if(PORTCbits.RC0 != 0){
            PORTB = 0x00;  //Zero PORTB
            __delay_ms(1000);
            PORTBbits.RB0 = 1;
            __delay_ms(1000);
            PORTBbits.RB0 = 0;
     
      
            PORTBbits.RB1 = 1;
            __delay_ms(1000);
            PORTBbits.RB1 = 0;    
     
     
            PORTBbits.RB2 = 1;
            __delay_ms(1000);
            PORTBbits.RB2 = 0;
       
            PORTBbits.RB3 = 1;
            __delay_ms(1000);
            PORTBbits.RB3 = 0;    
            }
            else
            {
            PORTB = 0x00;  //Zero PORTB
            __delay_ms(1000);
            PORTBbits.RB3 = 1;
            __delay_ms(1000);
            PORTBbits.RB3 = 0;  
                 
            PORTBbits.RB2 = 1;
            __delay_ms(1000);
            PORTBbits.RB2 = 0;
            
            PORTBbits.RB1 = 1;
            __delay_ms(1000);
            PORTBbits.RB1 = 0;    
            
            PORTBbits.RB0 = 1;
            __delay_ms(1000);
            PORTBbits.RB0 = 0;
     
      
     
     
       
            }
}

        
    
    return;
}
void setup()
{
    TRISBbits.TRISB0 = 0;
    TRISBbits.TRISB1 = 0;
    TRISBbits.TRISB2 = 0;
    TRISBbits.TRISB3 = 0;
    __delay_ms(10);
}