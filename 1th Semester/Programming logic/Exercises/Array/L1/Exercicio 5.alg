algoritmo "Matriz^3"
var
matriz : vetor [1..4,1..4] de inteiro
matriz2 : vetor [1..4,1..4] de real
a, b: inteiro
inicio
      para a de 1 ate 4 faca
           para b de 1 ate 4 faca
                escreva("Digite os números da matriz: [", a, ",",  b, "] ")
                leia(matriz[a,b])
           fimpara
      fimpara
      para a de 1 ate 4 faca
           para b de 1 ate 4 faca
                 matriz2[a,b] <- matriz[a,b]^3
                  escreva (matriz2[a,b]:8)
           fimpara
                  escreval("")
      fimpara


fimalgoritmo
