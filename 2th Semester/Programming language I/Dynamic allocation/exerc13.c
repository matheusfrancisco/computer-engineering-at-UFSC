#include <stdio.h>

int main(){

int a[5],b[10];
int i = 0,soma = 0,menor;
float media;

do{
    printf("Vetor A %i \n",i+1);
    scanf("%i", &a[i]);
    if (a[i] >= 0)
        i++;
}while (i < 5);

i = 0;
do{
    printf("Vetor B %i \n",i+1);
    scanf("%i", &b[i]);
    if (b[i] >= 0)
        i++;
}while (i < 10);

for (i = 0; i < 5; i++){
   if ((a[i] % 2)==0)
    soma += a[i];
}
media = soma/5;
printf("Media pares A: %.2f\n",media);

soma = 0;
for (i = 0; i < 10; i++){
   if ((b[i] % 2)==0)
    soma += b[i];
}
media = soma/10;
printf("Media pares B: %.2f\n",media);

menor = a[1];
for (i = 0; i < 5; i++){
   if (a[i] < menor )
    menor = a[i];
}
if (menor > 0){
    for (i = 0; i < 5; i++){
       a[i] = a[i]/menor;
    }
    printf("\nVetor A\n");
    for (i = 0; i < 5; i++){
       printf("%i ",a[i]);
    }
}

menor = b[1];
for (i = 0; i < 10; i++){
   if (b[i] < menor )
    menor = b[i];
}
if (menor > 0){
    for (i = 0; i < 10; i++){
       b[i] = b[i]/menor;
    }
    printf("\nvetor B\n");
    for (i = 0; i < 10; i++){
       printf("%i ",b[i]);
    }
}

return 0;
}
