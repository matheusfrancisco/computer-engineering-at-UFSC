/* EXERCICIO 6
• criar duas matrizes 3 x 3 A e B
• calcular o resultado da soma de duas matrizes e armazena o resultado
em matriz C:
c[i][j] = a[i][j] + b[i][j]
• calcular e mostra a soma dos elementos na diagonal principal para
cada uma das matrizes A, B e C.
*/

#include <stdio.h>
int main()
{

 float matriza[3][3], matrizb[3][3], matrizc[3][3];
 int i, j ;
 float
 da,db,dc;
 da=0;
 db=0;
 dc=0;


  // ENTRADA DE DADOS

printf("\n Matriz A\n");
  for (i=1; i<=3; i++) {
     for (j=1; j<=3; j++)
   {  printf("\n  MatrizA[%i][%i]:",i, j);
      scanf("%f", &matriza[i][j]);
   }
  }
printf("\n Matriz B\n");
  for (i=1; i<=3; i++)
 { for (j=1; j<=3; j++)
   {  printf("\n  Matriz A[%i][%i]:", i, j);
      scanf("%f", &matrizb[i][j]);
   }
  }


  //PROCESSO DE  DADOS
  printf("\n Matriz C = MA + MB :\n");
    for (i=1; i<=3; i++) {
     for (j=1; j<=3; j++)
   {  matrizc[i][j] =matriza[i][j] + matrizb[i][j];
   }
  }
  printf("\n Soma das diagonal A , B e C:\n");
  for (i=1; i<=3; i++)
 { for (j=1; j<=3; j++)
   {   if (i=j)
       {  da=da + matriza[i][j];
          db=db + matrizb[i][j];
          dc=dc + matrizc[i][j];
        }
    }
  }
   //SAIDA DE DADOS

  printf("\n MATRIZ A\n");
  for (i=1; i<=3; i++) {
        for (j=1;j<=3 ;j++)

     printf("%.1f    ", matriza[i][j]);
     printf("\n");
   }

  printf("\n A Soma da DP :%.1f\n", da);

     printf("\n MATRIZ B\n");
  for (i=1; i<=3; i++) {
        for (j=1;j<=3 ;j++)

     printf("%.1f   ", matrizb[i][j]);
     printf("\n");
   }

   printf("\n  Soma da DP :%.1f ", db);

 printf("\n MATRIZ C\n");
  for (i=1; i<=3; i++) {
        for (j=1;j<=3 ;j++)

     printf("%.1f   ", matrizc[i][j]);
     printf("\n");
   }

    printf("\n Soma da DP :%.1f\n", dc);


   return 0;
   }


