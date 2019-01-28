algoritmo "semnome"
// Função :
// Autor :
// Data : 28/11/2014
// Seção de Declarações
var
vet: vetor[1..10] de inteiro
i, op :inteiro
funcao crescente() :caracter
var
j , aux : inteiro
inicio
para i de 1 ate 10 faca
   para j de i ate 10 faca
      se vet[i] > vet[j] entao
         aux<- vet[j]
         vet[j]<- vet[i]
         vet[i]<- aux
      fimse
   fimpara
fimpara
para i de 1 ate 10 faca
   escreval(" o vetor na ordem crescente é:",vet[i])
fimpara
retorne("  ")
fimfuncao
funcao decrescente() : caracter
var
j , aux : inteiro
inicio
para i de 1 ate 10 faca
   para j de i ate 10 faca
      se vet[i] < vet[j] entao
         aux<- vet[j]
         vet[j]<- vet[i]
         vet[i]<- aux
      fimse
   fimpara
fimpara
para i de 1 ate 10 faca
   escreval(" o vetor na ordem decrescente é:",vet[i])
fimpara
retorne("  ")
fimfuncao

inicio
// Seção de Comandos
para i de 1 ate 10 faca
   escreval("escreva o vetor :")
   leia(vet[i])
fimpara
repita
escreva("escolha operação, 1 , 2 ,3 ou 0:")
leia(op)
se op = 1 entao
   escreval(crescente())
senao
   se op = 2 entao
      escreval(decrescente())
   senao
      se op = 3 entao
         para i  de 1 ate 10 faca
            escreval(vet[i])
         fimpara
      senao
         se op = 0 entao
            escreval("TCHAUUUUUUUUUUU")
         fimse
      fimse
   fimse
fimse
ate op = 0

fimalgoritmo
