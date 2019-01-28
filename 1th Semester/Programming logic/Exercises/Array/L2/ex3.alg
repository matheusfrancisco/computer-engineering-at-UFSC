algoritmo "semnome"
// Função :
// Autor :
// Data : 09/10/2014
// Seção de Declarações 
var
 num : vetor[0..10] de inteiro
 i: inteiro
 m: real
inicio
  m<-0
  Para i de 0 ate 10 passo 1 faca
  escreva("digite numero :")
   leia(num[i])
   m <- m + num[i]
  fimpara
  m <- m/10
  para i de 0 ate 10 faca
   se (num[i]) < m entao
      escreva (num[i])
   fimse
  fimpara
fimalgoritmo
