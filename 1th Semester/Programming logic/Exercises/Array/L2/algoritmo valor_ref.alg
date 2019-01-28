algoritmo "passagem_valor"
var
x:inteiro
// passagem de parametro por referencia...
// Uso da palavra VAR antes do nome do parametro
procedimento proc(var y:inteiro)
inicio
y <- y + 1
escreval("Y igual a ",y)
fimprocedimento

inicio
// Seção de Comandos 
x <- 1
escreval("Antes x = ",x)
proc(x)
escreval("Depois x = ",x)
fimalgoritmo
