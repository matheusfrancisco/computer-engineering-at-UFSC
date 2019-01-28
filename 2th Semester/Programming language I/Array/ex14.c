#include <stdio.h>
#include <stdlib.h>

int main()
{
    int a[5],b[5],c[10];
    int i,ca=0,cb=0;
printf("=================================\n");
    for(i=0;i<5;i++)//Entrada de dados Vetor A;
    {
        printf("A[%i]: ",i);
        scanf("%i",&a[i]);
    }printf("=================================\n");
    for(i=0;i<5;i++)//Entrada de dados Vetor B;
    {
        printf("     B[%i]: ",i);
        scanf("%i",&b[i]);
    }
printf("=================================\n");
    for(i=0;i<10;i++)//Passagem de dados para vetor C;
    {
        if(i%2==0)
        {
            c[i]=a[ca];
            ca++;
        }
        else
        {
            c[i]=b[cb];
            cb++;
        }
    }printf("=================================\n");
    for(i=0;i<10;i++)//Saida vetor C
    {
        printf("          C[%i]= %i\n",i,c[i]);
    }
}
