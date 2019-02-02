
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
		movlw	b'001111'		;configuro B0 a B3 como IN e B4 e B5 como saidas
		movwf	TRISB
		banksel	PORTB			;retorno banco 0				;
		bcf		PORTB,4		;coloco em 0 a saida 4
		bcf		PORTB,5		;coloco em 0 a saida 4
		btfsc	PORTB,0			;pergunta se a alarme foi ativada (Se tiver 0  pula linha) se eu mudar paara ss dai não precisa apertar
		goto	$-1			;se não volta a perguntar
		movlw	.2			;se foi ativada a alarme carrega o registro w com 30 TROQUEI PARA 2 para debugar
		movwf	CONTA			;contador para 30s (tempo para sair)
		bsf		PORTB,5		;ativa o led conetado em B5
		call	RETARDO			;llama a retardo de 1s
		bcf		PORTB,5		;apaga o led conetado em B5
		call	RETARDO			;llama a retardo de 1s
		decfsz	CONTA			;matem ligando e desligando o led 30 veces
		goto	$-5			;tempo para sair
CICLO
		btfss	PORTB,1			;pergunta se sensor B1 foi ativado (btfss se ta positivo pula linha)
		goto	SALIDA			;se foi ativado vai para saida
		btfss	PORTB,2			;si não, pergunta se sensor B2 foi ativado
		goto	SALIDA			;se foi ativado vai para saida
		goto	CICLO			;se não, volta a perguntar
		end				; ElE PISCA se ap