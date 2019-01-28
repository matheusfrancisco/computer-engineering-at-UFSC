#include<stdio.h>

 int main(){

    int n;
    printf("\n Digite um numero inteiro de 1 a 5 :");
    scanf(" %i",&n);

    switch(n)
    {
    case 1:
    printf("um \n");
    break;

    case 2:
    printf(" dois \n");
    break;

    case 3:
    printf(" tres \n");
    break;

    case 4:
    printf(" quatro \n");
    break;

    case 5:
    printf(" cinco \n");
    break;


    default:
    printf(" op invalida \n");
    break;
    }

    return 0;


    }



