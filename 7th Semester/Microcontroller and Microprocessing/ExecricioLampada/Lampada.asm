
#include <p16f88.inc>

cblock 0X20
DATO1
DATO2
DATO3
CONTA
ENDC
    __CONFIG _CONFIG1, _CP_OFF & _LVP_OFF & _BODEN_ON & _MCLR_ON & _PWRTE_ON & _WDT_OFF & _XT_OSC

		org		00
		goto	INICIO
		org		05		;salva o vetor de interrução
RETARDO						;subrutina de retardo de 1s.
		movlw	.60
		movwf	DATO1
TRES	
		movlw	.70
		movwf	DATO2
DOS
		movlw	.78
		movwf	DATO3
UNO
		decfsz	DATO3, 1
		goto	UNO
		decfsz	DATO2, 1
		goto	DOS
		decfsz	DATO1, 1
		goto	TRES	
		return
SALIDA						;subrutina para ativar a baliza (retardo de 10s 
		movlw	.10			;antes de ativar a baliza)
		movwf	CONTA			;isso  no caso em que seja o propietario que entrou
		call	RETARDO		
		decfsz	CONTA, 1
		goto	$-2
		bsf		PORTB,4
		movlw	.6			;pasados os 10s ativo alarme por 30 seg
		movwf	CONTA
		call	RETARDO
		decfsz	CONTA, 1	
		goto	$-2
		bcf		PORTB,4		; concluidos os 30s volta para ciclo (se a chave abrir volta para o ciclo)
		goto	CICLO
INICIO
		banksel	TRISB			;pula para o banco1
		clrf	ANSEL			;configura as entradas e saidas como digitais
		movlw	b'00000111'		;configuro B0 a B5
		movwf	TRISB
		banksel	PORTB			;retorno banco 0				;
		bcf	PORTB,3			;coloco em 0 a saida 5
		
CICLO
		btfss	PORTB,2
		goto	OPCAO_2
		btfss	PORTB,1
		goto	OPCAO_2
		btfsc	PORTB,0
		goto	OPCAO_2
		goto LIGA_LED

OPCAO_2
		btfss	PORTB,2
		goto	OPCAO_3
		btfsc	PORTB,1
		goto	OPCAO_3
		btfss	PORTB,0
		goto	OPCAO_3
		goto LIGA_LED

OPCAO_3
		btfsc	PORTB,2
		goto	CICLO
		btfss	PORTB,1
		goto	CICLO
		btfss	PORTB,0
		goto	CICLO
		goto LIGA_LED

		goto	CICLO
LIGA_LED
		bsf	PORTB, 3
		goto 	CICLO
end

















				; ElE PISCA se ap