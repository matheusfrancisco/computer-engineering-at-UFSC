####################################################################
# Mostra a compila��o de um comando de atribui��o em C usando Array
####################################################################
# Trecho em C:
#
# A[12] = h + A[8]
.data # segmento de dados
# defini��o do array A. Coloca os valores de A[0]=0 at� A[15]=150 na mem�ria
Array_A: .word 0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110, 120, 130, 140, 150
.text # segmento de c�digo (programa)
main:
la $s3, Array_A # como o exerc�cio assume que o endere�o-base de A[]
sw 64($s3)
# est� em $s3, foi inclu�da esta instru��o
