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
         resultado <- "�mpar"
      fimse
      retorne resultado
fimfuncao
//------------------------------------------------

inicio
      escreva("Digite um n�mero: ")
      leia(numero)
      escreva("O n�mero ", numero, " � ", par_ou_impar(numero))
fimalgoritmo
