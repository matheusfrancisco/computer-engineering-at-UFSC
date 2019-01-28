#include<stdio.h>

int main(){

    int n1,n2,n3;

printf("Digite o 1 numero \n");
scanf("%i", &n1);
printf("Digite o 2 numero \n");
scanf("%i", &n2);
printf("Digite o 3 numero \n");
scanf("%i", &n3);

 printf("Ordem crescente e :");

if( (n1 < n2) && (n1 < n3) && (n2 < n3))
    printf("%i, %i, %i,\n", n1, n2, n3);

else if ( (n1 < n2) && (n1 < n3) && (n2 > n3))
    printf("%i, %i, %i,\n", n1, n3, n2);

else if ( (n1 < n2) && (n1 > n3) && (n2 > n3))
    printf("%i, %i, %i,\n", n3, n1, n2);

else if ( (n1 > n2) && (n1 < n3) && (n2 < n3))
    printf("%i, %i, %i,\n", n2, n1, n3);

else if ( (n1 > n2) && (n1 > n3) && (n2 < n3))
    printf("%i, %i, %i,\n", n2, n3, n1);

else if ( (n1 > n2) && (n1 > n3) && (n2 > n3))
    printf("%i, %i, %i,\n", n3, n2, n1);


    return 0;
}
