#include <stdio.h>

int main(){
    const int arraySize = 10;
    int n[arraySize];

    int i;

    for( i = 0 ; i < arraySize; i++)
    {
        printf("\n Digite elemento %i do vetor", i);
        scanf("%i", &n[i]);


    }
    printf( "\n Elemento valor \n");
    for (i = 0 ; i< arraySize; i++)
        printf(" %i     %i\n",i,n[i]);

    return 0;

}
