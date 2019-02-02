##################################################################################
# Mostra a compilação de um comando de desvio condicional (if-then-else) com else
##################################################################################
# Trecho em C:
# if (i==j)
#     f = g + h;
# else
#     f = g - h;

      .text   # segmento de código (programa)
main:    
      bne $s3, $s4, Else   # se i!=j goto Else
      add $s0, $s1, $s2    # f = g + h
      j   Exit             # goto Exit
Else: sub $s0, $s1, $s2    # f = g - h
Exit: nop 