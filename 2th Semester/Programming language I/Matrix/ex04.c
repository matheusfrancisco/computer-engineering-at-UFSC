 /* Exercicio 4
• criar e inicializar uma matriz A 3 x 3
• achar a soma dos elementos pares.
• multiplicar os elementos da diagonal principal por um número k (fornecido
pelo usuário) */

#include <stdio.h>
#define n 3
int main (){
 int m[n][n], i, j, k, s ;
s=0;
// entrada de dados

 for (i=0; i<n; i++) {
     printf("Informe os elementos %da. linha:\n", (i+1));
 for (j=0; j<n; j++)
   {  printf("\n M[%d][%d]:", i, j);
      scanf("%d", &m[i][j]);
   }
  }

  printf("\n Multiplicador da matriz: \n");
  scanf("%d", &k);

// Processamento de dados
   for (i=0; i<n; i++)     {
         for (j=0; j<n; j++)     {
        if (m[i][j] %2==0)
        s = s + m[i][j];
        }
     }

 for (i=0; i<n; i++){
     for (j=0; j<n; j++){
        if (i==j)
        {
             m[i][j]= m[i][j] * k;
        }
    }
}


// Saída de dados
printf("\n A SOMA DOS PARES == %d \n", s);

 for (i=0; i<n; i++)
 { for (j=0;j<n ;j++)

     printf("%d   ", m[i][j]);
     printf("\n");

   }
return 0;
}



