algoritmo "PassagemPorReferencia"
// Fun��o :
// Autor :
// Data : 19/11/2014
// Se��o de Declara��es 
var
x, y: inteiro

procedimento soma (var a,b: inteiro)
var
   calculo: inteiro
inicio
   calculo := a + b
   escreval ("O valor da soma �: ", calculo)
   a:= 3
   b:= 4
fimprocedimento



inicio
// Se��o de Comandos 
x:= 1
y:= 2
soma(x, y)
escreval ("Os Valores de x e y s�o: ", x, y)

fimalgoritmo
