algoritmo "semnome"
// Fun��o :
// Autor :
// Data : 28/11/2014
// Se��o de Declara��es
var
a, b, c , x1, x2: real

// INICIO FUNCAO //
funcao raizes() : caracter
var
delta :real
inicio
delta <- b*b -4*a*c
se delta = 0 entao
   x1<- -b/2*a
   escreval("a raize � ",x1)
senao
   se delta > 0 entao
      x1 <- (-b + raizq(delta))/2*a
      x2 <- (-b - raizq(delta))/2*a
      escreval("as raizes s�o,",x1,"e",x2,"")
   senao

      se delta < 0 entao
         escreval("n�o existe raiz real as raizes s�o complexas")
      fimse
   fimse
fimse
retorne("  ")
fimfuncao
//  FIM FUNCAO  //




inicio
// Se��o de Comandos
escreva("Digite a vari�vel a: ")
leia(a)
escreva("Digite a vari�vel b: ")
leia(b)
escreva("Digite a vari�vel c: ")
leia(c)

se a = 0 entao
   repita
      escreva("N�o � permitido coeficiente angular igual a zero , digite outro valor de a:")
      leia(a)
   ate a <> 0
fimse

escreval(raizes())

fimalgoritmo
