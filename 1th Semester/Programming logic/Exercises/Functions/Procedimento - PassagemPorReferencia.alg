algoritmo "PassagemPorReferencia"
// Função :
// Autor :
// Data : 19/11/2014
// Seção de Declarações 
var
x, y: inteiro

procedimento soma (var a,b: inteiro)
var
   calculo: inteiro
inicio
   calculo := a + b
   escreval ("O valor da soma é: ", calculo)
   a:= 3
   b:= 4
fimprocedimento



inicio
// Seção de Comandos 
x:= 1
y:= 2
soma(x, y)
escreval ("Os Valores de x e y são: ", x, y)

fimalgoritmo
