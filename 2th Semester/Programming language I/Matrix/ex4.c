#include <stdio.h>
#include <stdlib.h>

int main()
{
    float m[3][3];
    int i,j,A;

    for(i=0;i<3;i++)
    {
        for(j=0;j<3;j++)
        {
            printf("M[%i][%i]:",i,j);
            scanf("%f",&m[i][j]);
        }
    }
    system("cls");
    printf("Multiplicador da Matriz:");
    scanf("%i",&A);
    for(i=0;i<3;i++)
    {
        for(j=0;j<3;j++)
        {
            m[i][j]=A*m[i][j];
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
