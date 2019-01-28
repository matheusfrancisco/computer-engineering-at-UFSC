#include <stdio.h>
#include <stdlib.h>

int main()
{
    const int arraySize=5;
    int a[arraySize],b[arraySize],c[arraySize];
    int i,cb=0,cc=0;

    for(i=0;i<arraySize;i++)
    {
        printf("A[%i]:",i);
        scanf("%i",&a[i]);
    }
    for(i=0;i<arraySize;i++)
    {
        if(a[i]>=0)
        {
            b[cb]=a[i];
            cb++;
        }
        if(a[i]<0)
        {
            c[cc]=a[i];
            cc++;
        }
    }
        for(i=cb;i<arraySize;i++)
        {
            b[i]=0;
        }
        for(i=cc;i<arraySize;i++)
        {
            c[i]=0;
        }

    printf("A    B    C\n");
    for(i=0;i<arraySize;i++)
    {
        printf("%i   %i   %i\n",a[i],b[i],c[i]);

    }
}
