# Exercicio 2 Escreva um programa em linguagem assembly para ARM que pega um número de nove
# bits armazenado no registrador R0 e conta quantos bits 1 tem o número, armazenando o
# resultado em R1 e conta o número de 0 no registrador R0, armazenando o resultado no
# registrador R2.
# Matheus Machado
#
#
main:
 	addi $t0, $zero, 0   # t0 = 0
	addi $t1, $zero, 0   # t1 = 0
 
 	#inicializa os contadores
	addi $s0, $zero, 170 	# 170(10101010) é adicionado no s0
	andi $s4, $s0, 1  	#compara o bit em $s0 com 1 e salva em $s4 ( and '1 e o valor do bit de s0) , assim s4 = 0
	sra  $s0, $s0, 1	#desloca para direita > 1 bit e salva em $s0 .. numero 85(1010101)
	add $t1, $s4, $t1       #  add t1 = 0
	#fim da primeira "iteração"
	
	andi $s4, $s0, 1 #compara o bit em $s0 com 1 e salva em $s4 numero 85(1010101) s4 = 1
	sra  $s0, $s0, 1 #desloca para direita > 1 bit e salva em $s0 numero 42(101010)
	add $t1, $s4, $t1 # add t1 = 1
	
	
	andi $s4, $s0, 1 #compara o bit em $s0 com 1 e salva em $s4  42(101010) s4 = 0
	sra  $s0, $s0, 1 #desloca para direita > 1 bit e salva em $s0  21(10101)
	add $t1, $s4, $t1 #  t1 = 1+0=1
	#fim
	
	andi $s4, $s0, 1 #compara o bit em $s0 com 1 e salva em $s4 21(10101) s4 = 1
	sra  $s0, $s0, 1 #desloca para direita > 1 bit e salva em $s0  10(1010) 
	add $t1, $s4, $t1 # t1 = 1+1 = 2
	#fim
	 
	andi $s4, $s0, 1 #compara o bit em $s0 com 1 e salva em $s4 10(1010)  s4 =0
	sra  $s0, $s0, 1 #desloca para direita > 1 bit e salva em $s0 s0  5(101)
	add $t1, $s4, $t1 #t1 = 2+0
	#fim
	
	andi $s4, $s0, 1 #compara o bit em $s0 com 1 e salva em $s4   ,s4 =1
	sra  $s0, $s0, 1 #desloca para direita > 1 bit e salva em $s0 2(10)
	add $t1, $s4, $t1 # t = 2+1 =3
	#fim
	
	andi $s4, $s0, 1 #compara o bit em $s0 com 1 e salva em $s4 ,s4 =0
	sra  $s0, $s0, 1 #desloca para direita > 1 bit e salva em $s0 1(1)
	add $t1, $s4, $t1 # t=0
	#fim
	
	andi $s4, $s0, 1 #compara o bit em $s0 com 1 e salva em $s4 
	sra  $s0, $s0, 1 #desloca para direita > 1 bit e salva em $s0   0(0)
	add $t1, $s4, $t1
	#fim
	andi $s4, $s0, 1 #compara o bit em $s0 com 1 e salva em $s4
	sra  $s0, $s0, 1 #desloca para direita > 1 bit e salva em $s0 0(0)
	add $t1, $s4, $t1
	#fim
	addi $s0, $zero, 9 #seta $t1 para ter contador 9
	sub $t0, $s0, $t1 #subtrai 9 da qtde de $s1 (1) e salva em $s2