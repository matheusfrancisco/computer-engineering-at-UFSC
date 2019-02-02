####################################################################
# Mostra a compilação de um comando de atribuição em C usando Array
####################################################################
# Trecho em C:
#
# A[12] = h + A[8]

     .data    # segmento de dados

# definição do array A. Coloca os valores de A[0]=0 até A[15]=150 na memória
Array_A: .word 0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110, 120, 130, 140, 150

     .text   # segmento de código (programa)
main:     

     la   $s3, Array_A     # como o exercício assume que o endereço-base de A[]
                           # está em $s3, foi incluída esta instrução
     lw   $t0, 32($s3)     # $t0 = A[8]
     add  $t0, $s2, $t0    # $t0 = $t0 + h
     sw   $t0, 48($s3)     # A[12] = $t0