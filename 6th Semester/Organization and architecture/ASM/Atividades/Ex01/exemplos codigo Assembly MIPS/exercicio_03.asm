###############################################################################
# Exerc�cio 03 - Patterson pag. 65
# Mostra a compila��o de um comando de desvio condicional (if-then) simples
###############################################################################
# Trecho em C:
# if (i!=j)
# f = g + h;
# f = f - i; // tamb�m poderia ser escrito assim: f -= i;
#
.text # segmento de c�digo (programa)
main:
beq $s3, $s4, L1 # se i==j goto L1
add $s0, $s1, $s2 # f = g + h
L1: sub $s0, $s0, $s3 # f = f � I

