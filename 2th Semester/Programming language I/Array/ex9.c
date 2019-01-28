#include <stdio.h>
#include <stdlib.h>

int main()
{
    float v[10],media=0;
    int i;

    for(i=0;i<10;i++)
    {
        printf("numero[%i]",i);
        scanf("%f",&v[i]);
    }
    for(i=0;i<10;i++)
    {
        media=media+v[i]/10;
    }
    for(i=0;i<10;i++)
    {
        if(v[i]>=media)
        {
            printf("numero [%i] %f > media\n",i,v[i]);
        }
    }

}
