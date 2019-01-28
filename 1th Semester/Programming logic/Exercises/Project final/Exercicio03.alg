algoritmo "semnome"
// Função :
// Autor :
// Data : 28/11/2014
// Seção de Declarações
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
   escreval("a raize é ",x1)
senao
   se delta > 0 entao
      x1 <- (-b + raizq(delta))/2*a
      x2 <- (-b - raizq(delta))/2*a
      escreval("as raizes são,",x1,"e",x2,"")
   senao

      se delta < 0 entao
         escreval("não existe raiz real as raizes são complexas")
      fimse
   fimse
fimse
retorne("  ")
fimfuncao
//  FIM FUNCAO  //




inicio
// Seção de Comandos
escreva("Digite a variável a: ")
leia(a)
escreva("Digite a variável b: ")
leia(b)
escreva("Digite a variável c: ")
leia(c)

se a = 0 entao
   repita
      escreva("Não é permitido coeficiente angular igual a zero , digite outro valor de a:")
      leia(a)
   ate a <> 0
fimse

escreval(raizes())

fimalgoritmo
