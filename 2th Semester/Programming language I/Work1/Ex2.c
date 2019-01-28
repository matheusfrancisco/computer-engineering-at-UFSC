// FOR COURSE:    Programa��o em Computadores I.
// DATE:          May 13, 2015.
//
// PURPOSE:
// Receba c�digos dos produtos com as respectivas quantidades at� que um c�digo especificado �
// informado. Assim que entrar os dados, calcular o pre�o total da nota e o valor do desconto.
//
// OVERALL METHOD:
// O resultado � calculado de acordo com a f�rmula:
// TotalP = TotalP + (10*QuantidadeP);
// TotalP = TotalP = (15*QuantidadeP);
// TotalP = TotalP = (20*QuantidadeP);
// TotalP = TotalP = (30*QuantidadeP);
// E o resulado do desconto � calculado de acordo com a f�rmula:
// Desconto = TotalP * 0.05; TotalDsc = TotalP - Desconto;
// Desconto = TotalP * 0.10; TotalDsc = TotalP - Desconto;
// Desconto = TotalP * 0.15; TotalDsc = TotalP - Desconto;
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
// CodigoP          int     value            Codigo de produto comprado
// QuantidadeP      int     value            Quantidade do produto
// TotalP           int     value            Total de produtos
// TotalDsc         float   value            Total do desconto
// Desconto         float   value            Desconto


#include <stdio.h>

int main()
{
    int CodigoP; // Codigo de produto comprado
    int QuantidadeP; // Quantidade do produto
    int TotalP; // Total de produtos
    float TotalDsc; // Total do desconto
    float Desconto; // Desconto

    TotalP = 0;
    CodigoP = 0;

    while ( CodigoP != - 1 )
    {
       printf ("\n Digitar o codigo do produto: ");
       scanf ("%i", &CodigoP);


       printf ("\n Digite a quantidade do produto: ");
       scanf ("%i", &QuantidadeP);

    if (CodigoP >= 1 && CodigoP <= 10)

      TotalP = TotalP + (10*QuantidadeP);

    if (CodigoP >= 11 && CodigoP <= 20)

      TotalP = TotalP = (15*QuantidadeP);

    if (CodigoP >= 21 && CodigoP <= 30)

      TotalP = TotalP = (20*QuantidadeP);

    if (CodigoP >= 31 && CodigoP <= 40)

      TotalP = TotalP = (30*QuantidadeP);

    }

    if (TotalP <= 250)
      {Desconto = TotalP * 0.05;
      TotalDsc = TotalP - Desconto;}

    if (TotalP > 250 && TotalP <= 500)
       {Desconto = TotalP * 0.10;
        TotalDsc = TotalP - Desconto;}

    if (TotalP > 500)
       {Desconto = TotalP * 0.15;
        TotalDsc = TotalP - Desconto;}

    printf ("\n Valor Total da Nota sem Desconto; %i", TotalP);
    printf ("\n Total de Desconto: %.2f", Desconto);
    printf ("\n Valor Total da Nota com Desconto: %.2f", TotalDsc);

return 0;

    }

// EXAMPLE INPUT AND OUTPUT
// O usu�rio digita o codigo do produto: 1
// O usu�rio digita a quantidade do produto: 10
// O usu�rio digita o codigo do produto: -1
// Valor total da nota sem desconto: 100
// Total de desconto: 5.00
// Valor total da nota com desconto: 95.00
