#include <stdio.h>
#include <stdlib.h>

int main()
{
    const int arraySize=5;
    float a[arraySize],b[arraySize],c[arraySize];
    int i;

    for(i=0;i<arraySize;i++)
    {
        printf("A[%i]:",i);
        scanf("%f",&a[i]);
    }
    printf("\n\n");
    for(i=0;i<arraySize;i++)
    {
        printf("B[%i]:",i);
        scanf("%f",&b[i]);
    }

    for(i=0;i<arraySize;i++)
    {
        c[i]=(a[i]+b[i])/2;
    }
    system("cls");
    printf("A      B      C\n");

    for(i=0;i<arraySize;i++)
    {
        printf("%.1f   %.1f   %.1f\n",a[i],b[i],c[i]);

    }
}
