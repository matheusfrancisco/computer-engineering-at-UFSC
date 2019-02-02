#Projete e escreva um programa em assembly para ARM que conte o número de palavras
#em uma string ASCII terminada com caractere NULL. Assuma que todas as palavras são
#separadas por um caracter de espaço em branco do ASCII (0x20) e que na string existem
#apenas caracteres alfa-numéricos.

.data   
string: .asciiz "Matheus M B" 		#A frase contem 3 palavras

.text

main:
	la $t0, string 			#carrega string no registrador t0

	li $s0, 0x00000020 		# espaço em hex
	li $s1, 0		 	#inicializa o registrador s1 com zero
cont:       
	lb $t2, 0($t0) 			#carrega o primeiro byte da string em t0
	beqz $t2, end			#se t2 == 0 va para o fim
	beq $s0, $t2  s 		# se s0 é igual a t2 eu vou para soma
re:
	add $t0, $t0, 1			 #incrementa o endereço   vai para proxima posicao do vetor 
	 
	j cont 				 #termina o loop
s:
	add $s1, $s1, 1 		#soma 1 no caso de encontrar espaco
	j re 				#retorna ao ponto do loop
		
end:
	add $s1, $s1, 1 		#acrescenta a ultima palavra o total de palavras esta armazenado em s1
