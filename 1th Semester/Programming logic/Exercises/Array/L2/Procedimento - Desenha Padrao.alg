algoritmo "Desenha Padrao"
// Fun��o :
// Autor :
// Data : 19/11/2014
// Se��o de Declara��es 
var
numero: inteiro

procedimento DesenharPadrao(n:inteiro)

var
i,j: inteiro
inicio

para i de 1 ate n faca
  para j de 1 ate n faca
     escreva ("* ")
  fimpara
 escreval
 fimpara

fimprocedimento


inicio
// Se��o de Comandos 
escreva ("Digite um Valor: ")
leia (numero)
DesenharPadrao(numero)

fimalgoritmo
