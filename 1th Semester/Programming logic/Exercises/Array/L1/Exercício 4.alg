algoritmo "Numeros maiores que 5"
var
matriz : vetor [1..6,1..2] de inteiro
a, b,n : inteiro
inicio
      para a de 1 ate 6 faca
           para b de 1 ate 2 faca
                escreva("Digite os números da matriz: [", a, ",", b, "] ")
                leia(matriz[a,b])
           fimpara
      fimpara
      
      para a de 1 ate 6 faca
             para b de 1 ate 2 faca
                  se (matriz [a, b] >5 ) entao
                    n <- n + 1
                  fimse
             fimpara
      fimpara
      escreval ("na matriz existem", n, "  numeros maiores que 5")

fimalgoritmo



