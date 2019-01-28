algoritmo "Media"
var
matriz : vetor [1..5,1..3] de inteiro
a, b, s: inteiro
media : real

inicio
      para a de 1 ate 5 faca
           para b de 1 ate 3 faca
                escreva("Digite os números da matriz: [", a, ",", b, "] ")
                leia(matriz[a,b])
           fimpara
      fimpara
      
        para a de 1 ate 5 faca
             para b de 1 ate 3 faca
                  s <- s + matriz[a,b]
             fimpara
        fimpara
             media <- s / 15
                    escreval("a média é:", media)

fimalgoritmo




