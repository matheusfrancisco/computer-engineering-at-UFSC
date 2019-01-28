algoritmo "EXEMPLO_VARIAVEIS"
var
x : real
i : inteiro

Procedimento  PROC()
var y:logico
inicio
x <- x * 4
i <- i + 4
y <- x=i
se (y) entao
   escreval("X = I")
senao
   escreval("X <> I")
fimse
fimprocedimento

inicio
x <- 2
i <- 10
PROC()
fimalgoritmo
