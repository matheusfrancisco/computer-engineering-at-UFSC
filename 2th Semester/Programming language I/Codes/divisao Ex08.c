#include<stdio.h>

 int main()
 {
   float n1,n2,n3,div;

   printf("Digite um numero:");
   scanf("%f", &n1);
   printf("Digite o divisor numero:");
   scanf("%f", &n2);
   system("cls");
   if (n2 != 0){
    div =n1 /n2;
    printf("Resultado da divisao %.2f", div);
   }
   else{
   printf("\nNão existe divisão por 0!\n");
   }
   return 0;

 }
