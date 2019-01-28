algoritmo "semnome"
// Função :
// Autor :
// Data : 28/11/2014
// Seção de Declarações 
var
vet: vetor[1..10] de inteiro
i : inteiro
funcao inverte() : caracter
  var
   j, aux :inteiro
  inicio
    para i de 1 ate 10 faca
      para j de i ate 10  faca
        aux <- vet[j]
        vet[j]<- vet[i]
        vet[i]<- aux
      fimpara
    fimpara
    para i de 1 ate 10 faca
       escreval("O vetor na forma  invertida é:",vet[i])
    fimpara
 retorne("  ")
fimfuncao

inicio
// Seção de Comandos 
     para i de 1 ate 10 faca
       escreva(" Digie a posicao,",i," do vetor :")
         leia(vet[i])
     fimpara
     escreva(inverte())
     
fimalgoritmo
