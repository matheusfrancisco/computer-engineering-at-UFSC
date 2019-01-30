#include <stdio.h>
#include <stdlib.h>
#define LINHA 2
#define COLUNA 2

int main(void)
{
  float **p;
  int i, j;

  p = (float**)malloc(sizeof(float*) * LINHA);

  for(i = 0; i < LINHA; i++)
  {
    *(p+i) = (float*)malloc(sizeof(float) * COLUNA);
  }

  for(i = 0; i < LINHA; i++)
  {
    for(j = 0; j < COLUNA; j++)
    {
      scanf("%f", *(p + i) + j);
    }
  }

  for(i = 0; i < LINHA; i++)
  {
    for(j = 0; j < COLUNA; j++)
    {
      printf("%.2f\n", *(*(p + i) + j));
    }
  }

  for(i = 0; i < LINHA; i++)
  {
    free(*(p+i));
  }
  free(p);

  //Verificando a limpeza dos ponteiros
  for(i = 0; i < LINHA; i++)
  {
    for(j = 0; j < COLUNA; j++)
    {
      printf("%.2f\n", *(*(p + i) + j));
    }
  }

  //printf("TCHAU PESSOAL :)");
}
