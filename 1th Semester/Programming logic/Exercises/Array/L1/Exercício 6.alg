algoritmo "Diagonal principal"
var
matriz : vetor [1..3,1..3] de inteiro
a, b, s: inteiro


inicio
      para a de 1 ate 3 faca
           para b de 1 ate 3 faca
                escreva("Digite os números da matriz: [", a, ",", b, "] ")
                leia(matriz[a,b])
           fimpara
      fimpara
      
        para a de 1 ate 3 faca
             para b de 1 ate 3 faca
                  se a=b entao
                    s <- s + (matriz[a,b])
                  fimse
             fimpara
        fimpara
        escreval("A s da diagonal principal é:", s)

fimalgoritmo




