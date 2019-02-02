
/*---------------------------------   ENUNCIADO    --------------------------------------

Desenvolva um sistema embarcado(hardware e software) para controle de uma cancela 
para passagem de trem. Uma sa�da determinar� cancela aberta ou fechada e sensores 
na cancela garantem a posi��o dela.Um sensor de presen�a de autom�vel faz a cancela 
abrir e depois fecha. Um outro sensor de trem detecta a presen�a do mesmo e n�o 
deixa abrir a cancela mesmo com a presen�a de carro.(usar interrup��o)

-----------------------------------------------------------------------------------------*/

//--------------------------------     INCLUDES     -------------------------------------//
#include <main.h>


//---------------------     VARI�VEIS GLOBAIS E CONSTANTES     --------------------------//
const int SENSOR_TREM				= PIN_B0;	// Sensor de presen�a do trem
const int SENSOR_AUTO				= PIN_B1;	// Sensor de presen�a de autom�veis
const int SENSOR_CANCELA_FECHADA	= PIN_B2;	// Sensor de cancela fechada
const int SENSOR_CANCELA_ABERTA		= PIN_B3;	// Sensor de cancela aberta
const int SAIDA_FECHANDO			= PIN_B4;	// Sa�da de motor em estado 'fechando'
const int SAIDA_ABRINDO				= PIN_B5;	// Sa�da de motor em estado 'abrindo'
const int SAIDA_SOM					= PIN_B6;	// Sa�da de som
int1 flag, auto_cross;

//----------------------	Controle de Interrup��o	Externa    -------------------------//
#INT_ext
void trata_INT_ext() {
	while (input(SENSOR_TREM) == 0){
		flag = 1;					// Indicador de interrupicaoo   	
	   	
		output_high(SAIDA_SOM);		// Aviso sonoro de trem se aproximando.
	   	
		// Caso um autom�vel esteja cruzando a ferrovia, espera antes de fechar a cancela.
		if (auto_cross == 1) {
			delay_ms(20000);
		}
	   	
   	
		while (input(SENSOR_CANCELA_FECHADA) == 1) {
			output_low(SAIDA_ABRINDO);
			output_high(SAIDA_FECHANDO);
		}
	   	
		output_low(SAIDA_FECHANDO);	// Apaga a luz que indica a a��o de fechamento da cancela.
	   	
		delay_ms(10000);		   	
		output_low(SAIDA_SOM);		// Para o alerta sonoro.
	}
}


//----------------------------      PRINCIPAL     -------------------------------//
void main() {
   	
	port_b_pullups (true);

	// Configura��o das interrupicoees
	enable_interrupts (global);			// Global
    enable_interrupts (INT_ext);		// Externa
    ext_INT_edge (H_to_L);				// Habilita Falling edge como disparador de interrupicoeso*/
    
    // Inicializaicao das saidas.
    output_low(SAIDA_ABRINDO);
    output_low(SAIDA_FECHANDO);
    output_low(SAIDA_SOM);
    
    // laco de repeticao infinito
    while (true) {
		flag = 0;
	   	
		// Caso tenha um automovel em frente a cancela
		if (input (SENSOR_AUTO) == 0 && flag == 0) {
		   	
			if (input(SENSOR_CANCELA_ABERTA) == 1 && flag == 0) {
				output_high(SAIDA_ABRINDO); // aciona a luz e o motor de abrindo simultaneamente.
				output_low(SAIDA_FECHANDO); // apaga a luz de fechando.
		   	
				while(input(SENSOR_CANCELA_ABERTA) == 1 && flag == 0); // Enquanto nivel estiver totalmente aberto, espera.
			   	
				output_low(SAIDA_ABRINDO); // desliga a luz e o motor de abrindo simultaneamente.
			}
		   	
			if (flag == 0) {
			    auto_cross = 1;			// Diz que est�ver passando um carro.
				delay_ms(10000);		// O automovel passa e espera enquanto isso.
			   	
				auto_cross = 0;			// Indica que nivel h� mais nenhum automovel atravessando.
			   	
				// Caso a cancela já não esteja fechada.
				if ((input(SENSOR_CANCELA_FECHADA) == 1) && (flag == 0)) {
					output_low(SAIDA_ABRINDO); 
					output_high(SAIDA_FECHANDO); 
					// Fechamento da cancela
					while ((input(SENSOR_CANCELA_FECHADA) == 1) && (flag == 0));
				}
			   	
				output_low(SAIDA_FECHANDO); // Apaga a luz de fechando e desliga o motor.
			}
		}
	}
}
