algoritmo "busca menor valor"
var
vet : vetor [1..10] de inteiro
a, b: inteiro
inicio
      para a de 1 ate 10 faca
                escreva("Digite os números do vetor:")
                leia(vet[a])
      fimpara
      
           escreval("Qual b deseja buscar?")
           leia (b)
           
      para a de 1 ate 10 faca
                se (b = vet[a]) entao
                    escreval ("o b esta na posição:", a)
                fimse
      fimpara

fimalgoritmo




