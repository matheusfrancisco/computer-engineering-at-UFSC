algoritmo "Par_Impar"
var
numero: inteiro

//------------------------------------------------
funcao par_ou_impar(num: inteiro): caracter
var
resultado: caracter

inicio
      se (num % 2 = 0) entao
         resultado <- "par"
      senao
         resultado <- "ímpar"
      fimse
      retorne resultado
fimfuncao
//------------------------------------------------

inicio
      escreva("Digite um número: ")
      leia(numero)
      escreva("O número ", numero, " é ", par_ou_impar(numero))
fimalgoritmo
