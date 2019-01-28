#include <stdio.h>
#include <stdlib.h>

int main()
{
    float m[3][3];
    int i,j,x;

    for(i=0;i<3;i++)
    {
        for(j=0;j<3;j++)
        {
            printf("M[%i][%i]:",i,j);
            scanf("%f",&m[i][j]);
        }
    }
   printf("Multiplicador da Matriz:");
    scanf("%i",&x);
 for(i=0;i<3;i++)
    {
        for(j=0;j<3;j++)
        {
            m[i][j]=x*m[i][j];
        }
    }
    for(i=0;i<3;i++)
    {
        for(j=0;j<3;j++)
        {
            printf("M[%i][%i]: %.1f\n",i,j,m[i][j]);
        }
    }
}
