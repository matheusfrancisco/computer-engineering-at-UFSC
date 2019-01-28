algoritmo "semnome"

var
v: caractere

funcao uhu: caractere
inicio
    retorne "uhu"
fimfuncao

funcao ola(nome: caracter): caracter
inicio
    retorne "ola, " + nome
fimfuncao

procedimento repetir(vezes: inteiro; letra: caracter)
var
    x: inteiro
inicio
    para x de 1 ate vezes faca
        escreva(letra)
    fimpara
fimprocedimento

inicio
    escreval(uhu)
    escreval(ola("Plínio"))
    repetir(30, "X")
fimalgoritmo
