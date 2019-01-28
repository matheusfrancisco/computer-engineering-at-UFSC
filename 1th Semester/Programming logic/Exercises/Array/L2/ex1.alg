algoritmo "semnome"
// Função :
// Autor :
// Data : 09/10/2014
// Seção de Declarações 
var
vet : vetor[1..5] de inteiro
vet2 : vetor[1..5] de inteiro
vet3 : vetor[1..5] de inteiro
x ,y ,i : inteiro
inicio
// Seção de Comandos
 para i de 1 ate 5 passo 1 faca
  escreval("digite o valor 1:")
  leia(vet[i])
  escreval("digite o valor 2:")
  leia(vet2[i])
  vet3[i] <- vet[i] + vet2[i]
  escreval(vet3[i])
  fimpara
fimalgoritmo
