####################################################################
# Mostra a compilação de um procedimento que não chama outro
####################################################################
# Trecho em C:
# int leaf_example (int g, int h, int i, int j) {
#    int f;
#    f = (g + h) - (i + j);
#    return f;

      .text   # segmento de código (programa)


main:    
       addi $t1, $zero, 1  # inicia reg. com valor diferente de 0
       addi $t0, $zero, 2  # inicia reg. com valor diferente de 0
       addi $s0, $zero, 3  # inicia reg. com valor diferente de 0

       addi $a0, $zero, 4  # inicializa 1º parâmetro (g)
       addi $a1, $zero, 3  # inicializa 2º parâmetro (h)
       addi $a2, $zero, 2  # inicializa 3º parâmetro (i)
       addi $a3, $zero, 1  # inicializa 4º parâmetro (j)

       jal leaf_example    # chama o procedimento

leaf_example:
       sub $sp, $sp, 12    # ajusta a pilha para 3 valores
       sw  $t1, 8($sp)     # salva o conteúdo de $t1
       sw  $t0, 4($sp)     # salva o conteúdo de $t0
       sw  $s0, 0($sp)     # salva o conteúdo de $s0

       add $t0, $a0, $a1   # $t0 = g + h
       add $t1, $a2, $a3   # $t1 = i + j
       sub $s0, $t0, $t1   # f = $t0 - $t1
       add $v0, $s0, $zero # return f

       lw  $s0, 0($sp)     # restaura $s0 da pilha
       lw  $t0, 4($sp)     # restaura $t0 da pilha
       lw  $t1, 8($sp)     # restaura $t1 da pilha
       add $sp, $sp, 12    # ajusta a pilha
       jr  $ra             # retorna do procedimento