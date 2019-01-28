algoritmo "semnome"
// Função :
// Autor :
// Data : 4/6/2010
// Seção de Declarações
var
pesos,imc,alturas,peso_ideal:vetor[1..3]de real
nomes:vetor[1..3]de caracter

procedimento lernomes
Var
   i:inteiro
Inicio
Para i de 1 ate 3 faca
     Escreval("Digite o nome da pessoa", i , ": ")
     Leia(nomes[i])
fimpara

fimprocedimento

procedimento lerpesoealtura
Var
i:inteiro
Inicio
Para i de 1 ate 3 faca
     Escreval("Digite o peso da pessoa", i , ": ")
     Leia(pesos[i])
     Escreval("Digite a altura da pessoa", i , ": ")
     Leia(alturas[i])
fimpara

fimprocedimento

procedimento calcularimc
var
i:inteiro
inicio
para i de 1 ate 3 faca
     peso_ideal[i] <- (pesos[i] / (alturas[i] * alturas[i]))
     escreval("O seu peso ideal da", i , " é :", peso_ideal[i])
fimpara
fimprocedimento

inicio
      lernomes
      lerpesoealtura
      calcularimc
fimalgoritmo
