algoritmo "Ex 2"

var // variaveis do algoritmo
i,j,cont,op:inteiro //contadores dos loop
ordenado, colocado, deletado: logico //informa se esta ou nao ordenado, colocado e deletado
valor: real
vet: vetor[1..100]de real //vetor
//-----------------------FUNCAO inserir()------------------------
funcao inserir(): logico
var //variaveis da funcao
inicio
//inserindo no vetor
para i de 1 ate 100 faca
   //primeiro espa�o com 0 ele ir� substituir
   se (vet[i] = 0) entao
      vet[i] <- valor
      interrompa
   fimse
fimpara
retorne verdadeiro
fimfuncao
//-----------------------FIM FUNCAO inserir()---------------------------
//-----------------------FUNCAO remover()------------------------
funcao remover(): logico
var //variaveis da funcao
inicio
//iniciamos como falso pq ele n�o removeu nada
deletado <- falso
//removendo do vetor, lista decrescente para pegar o mais atual
para i de 100 ate 1 passo -1 faca
   //primeiro espa�o com o numero igual ele remover�
   se (vet[i] = valor) entao
      vet[i] <- 0
      deletado <- verdadeiro
      interrompa
   fimse
fimpara
retorne deletado
fimfuncao
//-----------------------FIM FUNCAO remover()---------------------------

//-----------------------FUNCAO ordenar()----------------------------
funcao ordenar(): logico
var //variaveis da funcao
temp:real
inicio
para i de 1 ate 100 faca
   para j de 1 ate 100 faca
      //s�o duas estruturas de repeti��o, pois dois n�meros ser�o comparados repetidamente
      se vet[i]<vet[j] entao //compara dois n�meros
         temp <- vet[j] // coloca o maior na vari�vel tempor�ria
         vet[j] <- vet[i]//coloca o menor no lugar do maior
         vet[i] <- temp//coloca o maior(que estava na vari�vel tempor�ria) no lugar em que estava o menor
      fimse
   fimpara
fimpara
retorne verdadeiro
fimfuncao
//-----------------------FIM FUNCAO ordenar()-------------------------------
inicio //algoritmo
repita
   repita
      escreval(" Escolha uma op:")
      escreval("0 - Fim")
      escreval("1 - inser��o")
      escreval("2 - remo��o")
      escreva ("Entre com a op : ")    //op a ser usada
      leia(op)
   ate ((op = 1) ou (op = 0) ou (op = 2))
   //se for 0, pular tudo e acabar
   se (op <> 0) entao
      escreva ("Valor: ")
      leia(valor)
      se (op = 1) entao     //se for uma inser��o
         //fara a inser��o
         colocado <- inserir()
         //verifica se teve sucesso
         se (colocado = verdadeiro) entao
            escreval (valor," colocado com sucesso!")
         fimse
      fimse
      se (op = 2) entao    //se for uma remo��o
         //fara a remo��o
         deletado <- remover()
         //verifica se teve sucesso
         se (deletado = verdadeiro) entao
            escreval (valor," deletado com sucesso!")
         senao
            escreval (valor," n�o encontrado!")
         fimse
      fimse
      escreva ("")
      escreval ("Ordenando............")
      escreva ("")
      //fara a ordenacao
      ordenado <- ordenar()
      //verifica se teve sucesso
      se (ordenado = verdadeiro) entao
         //mostra vetor ordenado
         para i de 1 ate 100 faca
            se (vet[i] <> 0) entao
               escreva (vet[i]," ")
            fimse
         fimpara
      fimse
      escreval("")
   fimse

   se (vet[1] <> 0) entao
      escreval("==============================================")
      escreval("Limite atingido! (100 inser��es)")
      op <- 0
   fimse
ate (op = 0)
escreval ("Acabou!!")
fimalgoritmo
