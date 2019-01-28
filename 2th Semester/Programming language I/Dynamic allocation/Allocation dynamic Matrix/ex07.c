/*EXERCICIO 7
• criar uma matriz 3 x 3 A com elementos do tipo float;
• criar uma matriz B com elementos da matriz A que estão acima da media
(os outros elementos devem ser iguais a 0);
• cria uma matriz C com elementos da matriz A com suas posições
invertidas em relação a diagonal principal:
*/

#include <stdio.h>
int main()
{

   float ma[3][3], mb[3][3], mc[3][3], media=0;
   int i,j, ap=0;


// ENTRADA DE DADOS


 for (i=1; i<=3; i++)
 { for (j=1; j<=3; j++)
  {
      mb[i][j]=0;
  }
 }
printf("\n Matriz A\n");
  for (i=1; i<=3; i++)
 { for (j=1; j<=3; j++)
   {  printf("\n digite o valor referente a posicao [%i][%i] \n", i, j);
      scanf("%f", &ma[i][j]);
   }
  }


//PROCESSAMENTO DE DADOS

for (i=1; i<=3; i++)
 { for (j=1; j<=3; j++)
   { media= media + ma[i][j];
     ap++; }
 }

 media = media/ap;

 for (i=1; i<=3; i++)
 { for (j=1; j<=3; j++)
   {
       if (ma[i][j] > media)
      {mb[i][j] = ma[i][j];
       }
       if(ma[i][j] < media)
       mb[i][j]=0;
    }
  }

  for (i=1; i<=3; i++)
 { for (j=1; j<=3; j++)
   {
       mc[j][i] = ma[i][j];
   }
  }


//SAIDA DE DADOS

printf("\n MATRIZ A\n");

  for (i=1; i<=3; i++)
 { for (j=1;j<=3 ;j++)

     printf("%.f   ", ma[i][j]);
     printf("\n");
   }

   printf("\n media dos elementos da matriz A == %.2f \n", media);


  printf("\n MATRIZ B \n");
     for (i=1; i<=3; i++)
 { for (j=1;j<=3 ;j++)

     printf("%.f   ", mb[i][j]);
     printf("\n");
   }

    printf("\n MATRIZ C \n");
     for (i=1; i<=3; i++)
 { for (j=1;j<=3 ;j++)

     printf("%.f   ", mc[i][j]);
     printf("\n");
   }
   return 0;
}
