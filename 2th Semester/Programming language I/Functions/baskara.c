#include <stdio.h>
#include <conio.h>
#include <math.h>

int main ()
{
    float a , b , c , d; ///delta;
    float x1 , x2;

    printf("digite o valor de a:");
    scanf ("%f", &a);
    printf("digite o valor de b:");
    scanf ("%f", &b);
    printf("digite o valor de c:");
    scanf ("%f", &c);

    d = ((pow(b,2))-(4*a*c));

    x1 =((- b + (sqrt(d))) / 2*a);
    x2 = ((- b - (sqrt(d))) / 2*a);

    if (a == 0)
    {
        printf("nao eh equacao de segundo grau\n");
        system("pause");
    }else{
        if (d < 0)
        {
            printf ("Raizes complexas");
        }
            else
            {
                printf("%f\n",x1);
                printf("%f\n",x2);

            }
    }
            return 0;
        }
