algoritmo "Procedimento"
// Fun��o :
// Autor :
// Data : 19/11/2014
// Se��o de Declara��es 
var
numero: inteiro

procedimento Dobro(valor:inteiro)
var
   total: inteiro
   
inicio
   total := valor * 2
   escreva ("O dobro �: ", total)
   
fimprocedimento
   

// Se��o principal
inicio
  escreva ("Digite um n�mero: ")
  leia (numero)
  Dobro(numero)
  escreva ("XXXXXXXXXX: ")
fimalgoritmo
