#include <stdio.h>
#include <stdlib.h>

int main()
{
    int v[15]={11,22,33,44,55,66,77};
    int i;

    printf("Elt.   Valor\n");
    for(i=0;i<15;i++)
    {
        printf(" %i          %i\n",i,v[i]);
    }

}
