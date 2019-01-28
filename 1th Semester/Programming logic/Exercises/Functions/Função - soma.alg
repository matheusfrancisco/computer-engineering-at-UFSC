algoritmo "EquaçãSoma"
var
   a, b, c, delta, x1, x2: REAL
   op: caracter
//-----------------------------------------------
funcao calcula_soma(): REAL
var
   delta : REAL
   op: caracter
inicio

      se (op == +) entao

      delta := a + b
      RETORNE delta
      fimse
fimfuncao
//-----------------------------------------------

inicio
      ESCREVA ("Informe o valor de A: ")
      LEIA (a)
      ESCREVA ("Informe o valor de B: ")
      LEIA (b)
      ESCREVA ("Informe a operação: ")
      LEIA (op)


      delta := calcula_soma()

      escreval("Valor da Soma: ", delta)



fimalgoritmo
