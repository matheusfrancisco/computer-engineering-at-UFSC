#include <stdio.h>
#include <math.h>

int positivo(float n);
int nulo(float n);
float delta(float a, float b, float c);


int main()
{
    float a, b, c,
    raiz1, raiz2;
    int continuar;

    do
    {
        system("cls || clear");
        printf("Programa que acha as raizes de uma equacao do 2o grau: ax^2 + bx + c = 0\n\n");
        printf("Entre com os coeficientes a, b, e c: ");

        scanf("%f", &a);
        scanf("%f", &b);
        scanf("%f", &c);

        if( nulo(a))
            printf("'a' deve ser diferente de zero.");
        else
        {
            //Se delta for maior ou igual a zero, as raizes sao reais
            if( positivo( delta(a,b,c) ) || nulo( delta(a,b,c) ) )
            {
                raiz1 = ( (-1)*b + sqrt(delta(a,b,c)) )/(2*a);
                raiz2 = ( (-1)*b - sqrt(delta(a,b,c)) )/(2*a);
                printf("Raiz 1: %.2f\nRaiz 2: %.2f", raiz1, raiz2);
            }
            else
            {

                printf("RAIZES COMPLEXAS");

            }
        }

        printf("\n\nCalcular mais raizes?\n1. Continuar\n0. Sair\n");
        scanf("%d", &continuar);
    }
    while(continuar);
}


int positivo(float n)
{
    if(n > 0)
        return 1;
    else
        return 0;
}

int nulo(float n)
{
    if(n == 0)
        return 1;
    else
        return 0;
}

float delta(float a, float b, float c)
{
    return ((b*b) - (4*a*c));
}
