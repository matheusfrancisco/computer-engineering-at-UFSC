####################################################################
# Mostra a compilação de uma chamada simples de procedimento que
# não usa a pilha
####################################################################
# Trecho em C:
# int leaf_example (int g, int h, int i, int j) {
#    int f;
#    
#    f = (g + h) - (i + j);
#    return f;
 	.data
      .text   # segmento de código (programa)
      

main:    

       addi $a0, $zero, 4   # inicializa 1º parâmetro (g)
       addi $a1, $zero, 3   # inicializa 2º parâmetro (h)
       addi $a2, $zero, 2   # inicializa 3º parâmetro (i)
       addi $a3, $zero, 1   # inicializa 4º parâmetro (j)
       jal leaf_example     # chama o procedimento

       nop                  # não faz nada. $v0 tem o resultado do procedimento

leaf_example:
       add $v0, $a0, $a1   # $v0 = g + h
       add $v1, $a2, $a3   # $v1 = i + j
       sub $v0, $v0, $v1   # f = $t0 - $t1
       jr  $ra             # retorna do procedimento

  
