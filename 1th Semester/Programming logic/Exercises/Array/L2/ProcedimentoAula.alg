algoritmo "Procedimento"
// Função :
// Autor :
// Data : 19/11/2014
// Seção de Declarações 
var
numero: inteiro

procedimento Dobro(valor:inteiro)
var
   total: inteiro
   
inicio
   total := valor * 2
   escreva ("O dobro é: ", total)
   
fimprocedimento
   

// Seção principal
inicio
  escreva ("Digite um número: ")
  leia (numero)
  Dobro(numero)
  escreva ("XXXXXXXXXX: ")
fimalgoritmo
