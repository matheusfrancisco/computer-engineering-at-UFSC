#include <stdio.h>
#include <stdlib.h>

int main()
{
    int m[2][4]={{1,2,3,4},{2,3,4,5}};
    int i,j;

    printf("    MATRIZ\n");
    for(i=0;i<2;i++)
    {
        for(j=0;j<4;j++)
        {
            printf("%i    ",m[i][j]);
        }
        printf("\n");
    }
}
