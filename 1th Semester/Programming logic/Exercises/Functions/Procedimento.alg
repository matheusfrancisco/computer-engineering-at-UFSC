algoritmo "calc_imc"
// Fun��o : Calculando IMC
// Autor : Rodrigo
// Data : 05/06/2010
// Se��o de Declara��es
var
nome:vetor[1..20] de caracter
idade,peso,altura,imc:vetor[1..20] de real
i:inteiro

inicio
// Se��o de Comandos

para i de 1 ate 2 passo 1 faca
   escreva ("Digite o nome do N�",i,": ")
   leia (nome[i])
   escreva ("Digite a idade do N�",i,": ")
   leia (idade[i])
   escreva ("Digite o peso do N�",i,": ")
   leia (peso[i])
   escreva ("Digite a altura do N�",i,": ")
   leia (altura[i])
//##CALCULANDO IMC##//
   imc[i] <- peso[i]/(altura[i]*altura[i])
fimpara
//##PROCESSANDO E EXIBINDO RESULTADOS##//
para i de 1 ate 2 passo 1 faca
   se (imc[i] <= 20) entao
      escreval (nome[i]," com ",idade[i]," anos, est� abaixo do peso, seu IMC � de ",imc[i])
   senao
      se (imc[i] > 20) e (imc[i] <= 26) entao
         escreval (nome[i]," com ",idade[i]," anos, est� com peso normal, seu IMC � de ",imc[i])
      senao
         se (imc[i] > 26) e (imc[i] <= 30) entao
            escreval (nome[i]," com ",idade[i]," anos, est� acima do peso, seu IMC � de ",imc[i])
         senao
            se (imc[i] > 30) entao
               escreval (nome[i]," com ",idade[i]," anos, est� obeso, seu IMC � de ",imc[i])
            fimse
         fimse
      fimse
   fimse
fimpara
fimalgoritmo
