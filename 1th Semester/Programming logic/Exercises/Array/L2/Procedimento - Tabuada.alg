algoritmo "semnome"
// Fun��o :
// Autor :
// Data : 19/11/2014
// Se��o de Declara��es 
var
numero: inteiro

procedimento Tabuada (valor: inteiro)

var
   i: inteiro

inicio
    escreval("*** Tabuada de ", valor, " ***")
    para i de 1 ate 10 faca
         escreval (valor, " *", i, " = ", valor*i)
    fimpara
fimprocedimento

inicio
// Se��o de Comandos 
escreva ("Digite um N�mero: ")
leia (numero)
Tabuada(numero)

fimalgoritmo
