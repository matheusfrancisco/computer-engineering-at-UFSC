algoritmo "passagem_valor"
var
x:inteiro
// passagem de parametro por valor...
procedimento proc(y:inteiro)
inicio
y <- y + 1
escreval("Y igual a ",y)
fimprocedimento

inicio
// Seção de Comandos 
x <- 1
escreval("Antes x = ",x)
proc(x)
// Percebam que o valor de x não mudou
escreval("Depois x = ",x)
fimalgoritmo
