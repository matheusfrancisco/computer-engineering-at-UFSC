algoritmo "semnome"
// Função :
// Autor :
// Data : 19/11/2014
// Seção de Declarações 
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
// Seção de Comandos 
escreva ("Digite um Número: ")
leia (numero)
Tabuada(numero)

fimalgoritmo
