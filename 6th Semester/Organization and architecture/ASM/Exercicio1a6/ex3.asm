#Objetivo:
#Projete e escreva um programa em assembly para ARM que reverte os bits em um
#registrador, de modo que o conteúdo d 31 , d 30 , ... , d 1 , d 0 de tal registrador seja
#apresentado na seguinte sequência: d 0 , d 1 , ... , d 30 , d 31 .
#O seu programa não pode usar nenhuma instrução de desvio (branch). Apenas aritmética,
#lógica e instruções de deslocamentos.
#Utilize o aplicativo μVision5 para implementar e depurar o programa. O programa final
#deve ser postado em uma tarefa do Moodle.
#Matheus Machado
.data

Array_A: .word 1, 1, 1, 1, 1, 0, 0, 0, 0

	.text
	
main:
	la   $s0, Array_A #carrega a palavra para o registrador
	
	lw $t0, 0($s0)
	lw $t1, 32($s0) 
	sw $t0, 32($s0)
	sw $t1, 0($s0)
	
	lw $t0, 4($s0)
	lw $t1, 28($s0) 
	sw $t0, 28($s0)
	sw $t1, 4($s0)
	
	lw $t0, 8($s0)
	lw $t1, 24($s0) 
	sw $t0, 24($s0)
	sw $t1, 8($s0)
	
	lw $t0, 12($s0)
	lw $t1, 20($s0) 
	sw $t0, 20($s0)
	sw $t1, 12($s0)