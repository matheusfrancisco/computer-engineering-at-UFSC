#include <stdio.h>
#include <stdlib.h>

int main()
{
    int m[2][2];
    int i,j;

    for(i=0;i<2;i++)
    {
        for(j=0;j<2;j++)
        {
            printf("M[%i][%i]:",i,j);
            scanf("%i",&m[i][j]);
        }
    }
    for(i=0;i<2;i++)
    {
        for(j=0;j<2;j++)
        {
            printf("M[%i][%i]: %i\n",i,j,m[i][j]);
        }
    }
}
