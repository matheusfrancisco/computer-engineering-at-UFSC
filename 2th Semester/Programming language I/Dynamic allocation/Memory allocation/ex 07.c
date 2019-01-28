#include <stdio.h>
#include <stdlib.h>

int main ()
{
int n = 0, m = 0, o, i, j, num;
int *umPtr;
int *doisPtr;
int *tresPtr;

printf("tamanho do vetor:\n");
scanf("%d", &o);

umPtr = (int*) malloc(o*sizeof(int));

for (i = 0; i < o; i++)
{
    printf("\nDigite o elemento v[%d]\n", i);
    scanf("%d", &umPtr[i]);
    if (umPtr[i] % 2 == 0)
        m++;
    if (umPtr[i] >= 0)
        n++;
}
doisPtr = (int*) malloc(m*sizeof(int));

j = 0;
for (i = 0; i < o; i++)
{
    if (umPtr[i] % 2 == 0)
    {
        doisPtr[j] = umPtr[i];
        j++;
    }
}

tresPtr = (int*) malloc(n*sizeof(int));
j = 0;
for (i = 0; i < o; i++)
{
    if (umPtr[i] >= 0)
    {
        tresPtr[j] = umPtr[i];
        j++;
    }
}
printf("\nVetor um");
for (i = 0; i < o; i++)
{
    printf("\n a[%d] = %d", i, umPtr[i]);
}

printf("\nVetor dois");
for (i = 0; i < m; i++)
{
    printf("\n b[%d] = %d", i, doisPtr[i]);
}

printf("\nVetor tres");
for (i = 0; i < n; i++)
{
    printf("\n c[%d] = %d", i, tresPtr[i]);
}
}
