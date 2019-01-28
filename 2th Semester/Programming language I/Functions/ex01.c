#include <stdio.h>

int max(int num1, int num2); // declaração de função

int main()
 {
     /*variaveis locais*/
     int a, b;
     int num_max;

     printf("\n O programa retorna o maior de dois numeros\n");
     printf("\n Digite 1 numero:");
     scanf("%d",&a);
     printf("\n Digite 2 numero:");
     scanf("%d",&b);

     num_max = max(a , b);
     printf("\n O maior numero é %d", num_max);
     return 0;
 }

int max(int num1, int num2)
{
    int result;
    if (num1> num2)
        result = num1;
    else
        result = num2;
    return result;
}
