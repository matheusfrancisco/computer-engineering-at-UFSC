algoritmo "Funcao PRIMO"

var
n : inteiro

//---------------------------------------
// Inicio da funcao
funcao primo(num:inteiro):logico
var
k,c : inteiro
inicio
c <- 0
para k de 1 ate num faca
   se ((num % k) = 0) entao
      c <- c + 1
   fimse
fimpara
se (c <= 2) entao
   retorne verdadeiro
senao
   retorne falso
fimse
fimfuncao

//---------------------------------------
// Inicio do programa
inicio
n <- 10
enquanto n > 0 faca
   escreval("Digite um numero: ")
   leia(n)
   se (n > 0) entao
      se primo(n) entao
         escreval("Numero PRIMO!")
      senao
         escreval("Numero nao eh PRIMO!")
      fimse
   fimse
fimenquanto
escreval("")
escreval("")
escreval("Tchau!!!")
fimalgoritmo

