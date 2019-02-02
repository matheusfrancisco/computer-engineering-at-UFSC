#INCLUDE <P16F628A.INC>	
	__CONFIG  _BODEN_ON & _CP_OFF & _PWRTE_ON & _WDT_OFF & _LVP_OFF & _MCLRE_ON & _XT_OSC

#DEFINE	BANK0	BCF STATUS,RP0	
#DEFINE	BANK1	BSF STATUS,RP0	

	ORG	0x00	
	GOTO	INICIO

	ORG	0x04		
	RETFIE			
;* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
;*                        ROTINA DE DELAY                          *
;* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
CBLOCK	0X20			

		TEMPO1
		TEMPO0			

	ENDC

DELAY
	MOVWF	TEMPO1			
	MOVLW	.1000
	MOVWF	TEMPO0			

	CLRWDT				
	DECFSZ	TEMPO0,F		
	GOTO	$-2			
					
	DECFSZ	TEMPO1,F		
	GOTO	$-6			
					
RETURN	
                  
;* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
	
INICIO
	BANK0			
	MOVLW	B'00000111'
	MOVWF	CMCON		

	BANK1		
	MOVLW	B'00000000'
	MOVWF	TRISA		
	MOVLW	B'00000000'
	MOVWF	TRISB		
	MOVLW	B'10000000'
	MOVWF	OPTION_REG									
	MOVLW	B'00000000'
	MOVWF	INTCON	
	BANK0		
;* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
;*                     ROTINA PRINCIPAL                            *
;* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
MAIN
	MOVLW	B'11111111'
	MOVWF	PORTB
	CALL	DELAY
	MOVLW	B'00000000'
	MOVWF	PORTB
	CALL	DELAY
GOTO MAIN

;* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
;*                       FIM DO PROGRAMA                           *
;* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

	END	

