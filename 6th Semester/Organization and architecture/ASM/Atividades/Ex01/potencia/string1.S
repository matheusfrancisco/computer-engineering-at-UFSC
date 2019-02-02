
.global main


main:

	nop				# lê a base em a0
					# lê o expoente em a1

	addi $s0, $a0, 0
	addi $s1, $zero, 1


multiplica:
	mul $s0, $s0, $a0
	addi $s1, $s1, 1
	blt $s1, $a1, multiplica

	nop				# mostra o resultado em s0

	j main






