algoritmo "semnome"
// Fun��o :
// Autor :
// Data : 28/11/2014
// Se��o de Declara��es
var    // variaveis globais
i: inteiro
vet: vetor[1..6] de inteiro
vet2: vetor[1..3] de inteiro
vet3: vetor[1..9] de inteiro
//------------ Func�o contido --------------//
funcao contido () : caracter
var
i, j, cont :inteiro
inicio
para i de 1 ate 6 faca
   para j de 1 ate 3 faca
      se vet[i] = vet2[j] entao
         cont <- cont + 1
      fimse
   fimpara
fimpara

se cont = 3 entao
   retorne("vet2 esta contido em vet")
senao
   retorne("vet2 n�o esta contido em vet")
fimse

fimfuncao
//--------------- fim da FUNCAO-------------------//

//---------------- FUNCAO concatenar-----------//
funcao concatenar(): caracter
var
i   :inteiro
inicio
para i de 1 ate 6 faca
   vet3[i]<- vet[i]
fimpara
para i de 7 ate 9 faca
   vet3[i]<- vet2[i-6]
fimpara
escreval("  ")
escreval("A Concatena��o dos dois vetores s�o :  ")
para i de 1 ate 9 faca

   escreval(" ",vet3[i])
fimpara
retorne("  ")
fimfuncao
//----------Fim FUNCAO concatenar---------//
//------ FUNCAO Ordenar----//
funcao ordenar () : caracter
var
i, j , aux :inteiro
inicio

para i de 1 ate 9 faca
   para j de i ate 9 faca
      se vet3[i] > vet3[j] entao
         aux <- vet3[j]
         vet3[j] <- vet3[i]
         vet3[i]<- aux
      fimse
   fimpara
fimpara
escreval("  ")
para i de 1 ate 9 faca
   escreval(" o vetor ordenado vet3 � :",vet3[i])
fimpara
retorne("  ")
fimfuncao
//------------FIM FUNCAO ordenar---------//
inicio
//---- Escrevendo vetores -----//
para i de 1 ate 6 faca
   escreval(" escreva o primeiro vetor :")
   leia(vet[i])
fimpara
para i de 1 ate 3 faca
   escreval(" escreva o vetor dois:")
   leia(vet2[i])
fimpara
escreval(contido())              //----chamando a fun�ao---//
escreval(concatenar())           //----chamando a fun�ao---//
escreval(ordenar())              //----chamando a fun�ao---//
fimalgoritmo
