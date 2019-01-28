algoritmo "busca menor valor"
var
vet : vetor [1..10] de inteiro
a, b: inteiro
inicio
      para a de 1 ate 10 faca
                escreva("Digite os números do vetor:")
                leia(vet[a])
      fimpara
            b <- vet[1]
      para a de 2 ate 10 faca
                se (b > vet[a]) entao
                   b <- vet[a]
                fimse
      fimpara
       escreval ("o b número é:", b)
fimalgoritmo




