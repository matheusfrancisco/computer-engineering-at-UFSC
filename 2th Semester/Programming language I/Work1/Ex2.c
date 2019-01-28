// FOR COURSE:    Programação em Computadores I.
// DATE:          May 13, 2015.
//
// PURPOSE:
// Receba códigos dos produtos com as respectivas quantidades até que um código especificado é
// informado. Assim que entrar os dados, calcular o preço total da nota e o valor do desconto.
//
// OVERALL METHOD:
// O resultado é calculado de acordo com a fórmula:
// TotalP = TotalP + (10*QuantidadeP);
// TotalP = TotalP = (15*QuantidadeP);
// TotalP = TotalP = (20*QuantidadeP);
// TotalP = TotalP = (30*QuantidadeP);
// E o resulado do desconto é calculado de acordo com a fórmula:
// Desconto = TotalP * 0.05; TotalDsc = TotalP - Desconto;
// Desconto = TotalP * 0.10; TotalDsc = TotalP - Desconto;
// Desconto = TotalP * 0.15; TotalDsc = TotalP - Desconto;
// Esse programa faz controle de dados de entrada comparando enquanto os números de entrada não forem igual a -1.
//
// FUNCTIONS:
//
// INCLUDED FILES: stdio.h
//
// DATA FILES:   Não
//
// PARAMETERS:
// nome            tipo    value/reference   descrição
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
// O usuário digita o codigo do produto: 1
// O usuário digita a quantidade do produto: 10
// O usuário digita o codigo do produto: -1
// Valor total da nota sem desconto: 100
// Total de desconto: 5.00
// Valor total da nota com desconto: 95.00
