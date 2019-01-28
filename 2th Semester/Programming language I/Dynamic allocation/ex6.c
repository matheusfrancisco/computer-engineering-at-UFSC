#include <stdio.h>
#include <string.h>
#include <stdlib.h>


//Função: Criar vetores de tamanho dinâmico escolhido pelo usuário.
//Data: 01/07/2015
//Descrição: Aloca vetores A e B dinamicamente e forma o vetor C fazendo a junção de A e B
//Algoritmos: Laços de repetição, ponteiros e alocação dinâmica.
//Condições de contorno: Caso o tamanho do vetor seja (0<=) não será alocado nenhum vetor e o programa acusará erro.

//===============================================
void main()
{
    //um ponteiro para um inteiro
    int *Ptr1;
    int *Ptr2;
    int *Ptr3;
    int sizeA, sizeB;
    int i;
    //========================
//entrada de dados
    printf("Tamanho do vetor A:\n");
    scanf("%d",&sizeA);

    printf("Tamanho do vetor B:\n");
    scanf("%d",&sizeB);

//--------------------------------------------

    //alocando memoria para vetores
    Ptr1 = (int*) malloc(sizeA*sizeof(int));
    Ptr2 = (int*) malloc(sizeB*sizeof(int));
    Ptr3 = (int*) malloc((sizeA+sizeB)*sizeof(int));
//--------------------------------------------
//processamento
    if(Ptr1 == NULL || Ptr2 == NULL) //verificação para garantir se a alocação foi feita com sucesso
    {
        printf("ALOCATION ERROR.");
    }
    else
    {
        for(i=0; i < sizeA; i++)
        {
            Ptr1[i] = i;
        }
    }
    if(Ptr1 == NULL || Ptr2 == NULL)//verificação para garantir se a alocação foi feita com sucesso
    {
        printf("ALOCATION ERROR.");
    }
    else
    {
        for(i=0; i < sizeB; i++)
        {
            Ptr2[i] = i;
        }
    }
//--------------------------------------------
//saida de dados
    for(i=0; i < sizeA; i++)
    {
            Ptr3[i] = Ptr1[i];
    }
    for(i=0; i < sizeB; i++)
    {
            Ptr3[i+sizeA] = Ptr2[i];
    }
    for(i=0; i < sizeA+sizeB; i++)
    {
        printf("Vetor C, resultante pos [%d]:%d\n", i, Ptr3[i]);
    }
//--------------------------------------------
}


