.data
vetorX: .asciiz "111111"
numerosDe1: .word 0
.text
.globl start
.ent start
start:
lb $t1, vetorX($t0) 	# LER A STRING BIT A BIT
addi $t0,$t0,1 		# SOMA+1 AO INDEXADOR
beq $t0,64, done 	# DA QUESTAO> dimensão do vetor sala é sempre 64 beq $t1, 49, cont # SE O BIT == 1, SOMA +1
bne $t1, 49, start	# SENAO REINICIA.end startcont:
addi $t4,$t4,1 		# SOMA SIMPLES
j start 		# GOTO TO START######################################
done:
sw $t4, numerosDe1 # SALVA O CONTEUDO
# EXIT
li $v0, 10
syscall
