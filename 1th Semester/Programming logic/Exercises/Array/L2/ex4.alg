algoritmo "semnome"
// Fun��o :
// Autor :
// Data : 09/10/2014
// Se��o de Declara��es 
var
 num : vetor[1..5] de inteiro
 i: inteiro
 m: real
inicio
  m<-0
  Para i de 1 ate 5 passo 1 faca
  escreva("digite um numero:")
   leia(num[i])
   m <- m + num[i]
  fimpara
  m <- m/5
  para i de 1 ate 5 faca
   se (num[i]) > m entao
      escreval(num[i])
fimse
fimpara
fimalgoritmo
