/* Exercicio 5
criar uma matriz A (4x4)
• achar o elemento máximo dessa matriz
• criar uma nova matriz B, resultante da multiplicação dos elementos de A
pelo seu maior elemento.
*/

#include <stdio.h>

int main ()
{

#define n 4
int m[n][n], i, j, vmaior;

vmaior=0;

// entrada de dados

 for (i=0; i<n; i++)
 { for (j=0; j<n; j++)
   {  printf("\n M[%i][%i] \n", i, j);
      scanf("%i", &m[i][j]);
   }
  }

// processamento de dados

 for (i=0; i<n; i++)
 { for (j=0; j<n; j++)
   {  if (vmaior < m[i][j])
       vmaior= m[i][j];
    }
  }

printf("\n MATRIZ A\n");

 for (i=0; i<n; i++)
 { for (j=0;j<n ;j++)
     printf("%i   ", m[i][j]);
     printf("\n");
   }

printf("\n MATRIZ A multiplicada pelo seu maior valor %i\n", vmaior);

for (i=0; i<n; i++)
 { for (j=0; j<n; j++)
   { m[i][j]= m[i][j]*vmaior;
   }
  }

// Saída de dados

printf("\n MATRIZ B ...\n");

 for (i=0; i<n; i++)
 { for (j=0;j<n ;j++)

     printf("%i   ", m[i][j]);
     printf("\n");

   }

return 0;
}






