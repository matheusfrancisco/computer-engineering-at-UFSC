// FOR COURSE:    Programa��o em Computadores I.
// DATE:          May 12, 2015.
//
// PURPOSE:
// Receba um numero inteiro e um digito especificado pelo usu�rio
// calcule quantas vezes o digito apareceu no numero.

//
// OVERALL METHOD:
// O resultado � calculado de acordo com a f�rmula:
// Digito == X%10;
//      X = X/10;
// Esse programa faz controle de dados de entrada comparando enquanto os n�meros de entrada n�o forem igual a -1.
//
// FUNCTIONS:
//
// INCLUDED FILES: stdio.h
//
// DATA FILES:   N�o
//
// PARAMETERS:
// nome            tipo    value/reference   descri��o
// -------------------------------------------------------
// X          int     value            Numero inteiro
// XE         int     value            Escolher o Digito especifico
// Digito     int     value            Armazenar o digito especifico
// Contador   int     value            Contar a quantidade de vezes digitadas
//
#include <stdio.h>

int main ()
{
    int X;
    int XE;
    int Digito;
    int Contador;

    Contador = 0;

    printf ("\n Digite um numero inteiro: ");
    scanf ("%d",&X);

    printf("\n Digite o numero especifico para contagem: ");
    scanf("%d",&XE);


    while (X != 0)
   {
     Digito == X%10;
     X = X/10;

    if (Digito == XE){

    Contador++;
    }
   }

    printf ("\n O digito %d foi digitado %d vezes", XE, Contador);

    return 0;
}
// EXAMPLE INPUT AND OUTPUT
// O usu�rio digita o um numero :13211
// O usu�rio digita um digito especifico: 1
// A quantidade de numero 1 que tem no numero digitado �: 3
