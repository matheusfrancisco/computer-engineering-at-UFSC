
/*---------------------------------   ENUNCIADO    --------------------------------------

Desenvolva um sistema embarcado(hardware e software) para controle de uma cancela 
para passagem de trem. Uma saída determinará cancela aberta ou fechada e sensores 
na cancela garantem a posição dela.Um sensor de presença de automóvel faz a cancela 
abrir e depois fecha. Um outro sensor de trem detecta a presença do mesmo e não 
deixa abrir a cancela mesmo com a presença de carro.(usar interrupção)

-----------------------------------------------------------------------------------------*/

//--------------------------------     INCLUDES     -------------------------------------//
#include <main.h>


//---------------------     VARIï¿½VEIS GLOBAIS E CONSTANTES     --------------------------//
const int SENSOR_TREM				= PIN_B0;	// Sensor de presenï¿½a do trem
const int SENSOR_AUTO				= PIN_B1;	// Sensor de presenï¿½a de automï¿½veis
const int SENSOR_CANCELA_FECHADA	= PIN_B2;	// Sensor de cancela fechada
const int SENSOR_CANCELA_ABERTA		= PIN_B3;	// Sensor de cancela aberta
const int SAIDA_FECHANDO			= PIN_B4;	// Saï¿½da de motor em estado 'fechando'
const int SAIDA_ABRINDO				= PIN_B5;	// Saï¿½da de motor em estado 'abrindo'
const int SAIDA_SOM					= PIN_B6;	// Saï¿½da de som
int1 flag, auto_cross;

//----------------------	Controle de Interrupção	Externa    -------------------------//
#INT_ext
void trata_INT_ext() {
	while (input(SENSOR_TREM) == 0){
		flag = 1;					// Indicador de interrupicaoo   	
	   	
		output_high(SAIDA_SOM);		// Aviso sonoro de trem se aproximando.
	   	
		// Caso um automï¿½vel esteja cruzando a ferrovia, espera antes de fechar a cancela.
		if (auto_cross == 1) {
			delay_ms(20000);
		}
	   	
   	
		while (input(SENSOR_CANCELA_FECHADA) == 1) {
			output_low(SAIDA_ABRINDO);
			output_high(SAIDA_FECHANDO);
		}
	   	
		output_low(SAIDA_FECHANDO);	// Apaga a luz que indica a aï¿½ï¿½o de fechamento da cancela.
	   	
		delay_ms(10000);		   	
		output_low(SAIDA_SOM);		// Para o alerta sonoro.
	}
}


//----------------------------      PRINCIPAL     -------------------------------//
void main() {
   	
	port_b_pullups (true);

	// Configuração das interrupicoees
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
			    auto_cross = 1;			// Diz que estïver passando um carro.
				delay_ms(10000);		// O automovel passa e espera enquanto isso.
			   	
				auto_cross = 0;			// Indica que nivel hï¿½ mais nenhum automovel atravessando.
			   	
				// Caso a cancela jÃ¡ nÃ£o esteja fechada.
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
