#include <16F877a.H>  
#include <LCD.c>
#use delay(clock=4000000) 


// pinos de dados do LCD
#define D0 PIN_D0
#define D1 PIN_D1
#define D2 PIN_D2
#define D3 PIN_D3

#define LCD_RS PIN_C5
#define LCD_RW PIN_C6
#define LCD_E PIN_C7

// pinos do ultrassonico
#define Trigger PIN_B1
#define Echo PIN_B1


#define high 1
#define low 0


#int_ext
void trata_interrupt() {

  if(input(S_carro) == 1) {
     if(input(S_trem) == 1) {
        while(input(S_trem) == 1) {} // enquanto estiver pressionado
        output_high(semaforo);
     } else {
         output_high(semaforo);
         while(input(S_carro) == 1 && input(S_trem) == 0){}
         output_low(semaforo);
     }
  }
  output_low(semaforo);

}

void main(void) 
{ 

  set_tris_d(0b00000000);


  enable_interrupts(GLOBAL | int_ext);
  
	lcd_init(); // inicia o LCD  

	while(1) {    
	

	}
}
