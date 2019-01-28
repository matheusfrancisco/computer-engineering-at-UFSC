algoritmo "Desenha Padrao"
// Função :
// Autor :
// Data : 19/11/2014
// Seção de Declarações 
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
// Seção de Comandos 
escreva ("Digite um Valor: ")
leia (numero)
DesenharPadrao(numero)

fimalgoritmo
