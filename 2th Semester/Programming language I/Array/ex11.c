#include <stdio.h>
#include <stdlib.h>

int main()
{
    const int sizeArray=10;
    float aluno[sizeArray];
    int i;
    printf("Notas Primeira Prova!\n\n");
    for(i=0;i<sizeArray;i++)
    {
        printf("Aluno[%i]:",i);
        scanf("%f",&aluno[i]);
        if(aluno[i]>10 || aluno<0)
        {
            i--;
        }
    }
    system("cls");
    printf("Alunos Aprovados!\n\n");
    for(i=0;i<sizeArray;i++)
    {
        if(aluno[i]>5)
        {
            printf("Aluno[%i]:  %.1f\n",i,aluno[i]);
            aluno[i]=0;
        }
        else
        {
            aluno[i]=-1;
        }
    }
    system("pause");
    system("cls");
    printf("Notas Alunos de Recuperacao!\n\n");
    for(i=0;i<sizeArray;i++)
    {
        if(aluno[i]==-1)
        {
            printf("Aluno[%i]:",i);
            scanf("%f",&aluno[i]);
        }
    }
    printf("Nota Alunos Aprovados REC!\n\n");
    for(i=0;i<sizeArray;i++)
    {
        if(aluno[i]>5)
        {
            printf("Aluno[%i]:  %.1f\n",i,aluno[i]);
        }
    }
}
