algoritmo "semnome"
// Fun��o :
// Autor :
// Data : 09/10/2014
// Se��o de Declara��es 
var
num:vetor[1..100]de inteiro
i:inteiro
inicio
// Se��o de Comandos
para i de 1 ate 100 faca
     escreval("digite um numero inteiro")
       leia(num[i])
         se (num[i] mod 2)=1 entao
           escreval("0")
              senao
           escreval("1")
         fimse
fimpara
fimalgoritmo
