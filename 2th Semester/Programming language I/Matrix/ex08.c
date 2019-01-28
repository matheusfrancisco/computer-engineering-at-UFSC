
#include <stdio.h>
int main()
{
  int ma[3][3], i, j;
int a=0, b=0, c=0, d=0, e=0, f=0, g=0, det=0;
  // ENTRADA DE DADOS

printf("\n Matriz A\n");
  for (i=1; i<=3; i++)
 { for (j=1; j<=3; j++)
   {  printf("\n M[%i][%i] \n", i, j);
      scanf("%i", &ma[i][j]);
   }
  }


// Processamento de dados

a=ma[1][1]*ma[2][2]*ma[3][3];
b=ma[1][2]*ma[2][3]*ma[3][1];
c=ma[2][1]*ma[3][2]*ma[1][3];
d=ma[1][3]*ma[2][2]*ma[3][1];
e=ma[1][1]*ma[3][2]*ma[2][3];
f=ma[2][1]*ma[1][2]*ma[3][3];

 printf("\n %i  %i  %i  %i  %i  %i \n", a, b, c, d, e, f);

det= (a+b+c)-(d+e+f);

// saida de dados

printf("\n o determinante da matriz 3x3 = %i", det);

return 0;
}
