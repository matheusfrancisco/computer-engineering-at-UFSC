algoritmo "calc_imc"
// Função : Calculando IMC
// Autor : Rodrigo
// Data : 05/06/2010
// Seção de Declarações
var
nome:vetor[1..20] de caracter
idade,peso,altura,imc:vetor[1..20] de real
i:inteiro

inicio
// Seção de Comandos

para i de 1 ate 2 passo 1 faca
   escreva ("Digite o nome do Nº",i,": ")
   leia (nome[i])
   escreva ("Digite a idade do Nº",i,": ")
   leia (idade[i])
   escreva ("Digite o peso do Nº",i,": ")
   leia (peso[i])
   escreva ("Digite a altura do Nº",i,": ")
   leia (altura[i])
//##CALCULANDO IMC##//
   imc[i] <- peso[i]/(altura[i]*altura[i])
fimpara
//##PROCESSANDO E EXIBINDO RESULTADOS##//
para i de 1 ate 2 passo 1 faca
   se (imc[i] <= 20) entao
      escreval (nome[i]," com ",idade[i]," anos, está abaixo do peso, seu IMC é de ",imc[i])
   senao
      se (imc[i] > 20) e (imc[i] <= 26) entao
         escreval (nome[i]," com ",idade[i]," anos, está com peso normal, seu IMC é de ",imc[i])
      senao
         se (imc[i] > 26) e (imc[i] <= 30) entao
            escreval (nome[i]," com ",idade[i]," anos, está acima do peso, seu IMC é de ",imc[i])
         senao
            se (imc[i] > 30) entao
               escreval (nome[i]," com ",idade[i]," anos, está obeso, seu IMC é de ",imc[i])
            fimse
         fimse
      fimse
   fimse
fimpara
fimalgoritmo
