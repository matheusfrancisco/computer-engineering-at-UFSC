#include <stdio.h>

float funcP1(float n1);
float mx_minP2(float n1);

int count;

int main(void)
{
struct Alunos
{
    int alunosid;
    char nome[50];
    float notap1;
    float notap2;
};
struct alunos_turma[5];

int count;

for(count=0; count<5; count++)
{
    fflush(stdin);
    printf("\n\n nome %i: ", count+1);
    gets(Turma[count].nome);

    printf("\n\n Nota p1: ");
    scanf("%f", &Turma[count].notap1);

    printf("\n\n Nota p2: ");
    scanf("%f", &Turma[count].notap2);

    system("cls || clear");

    while ( Turma[count].notap1 && Turma[count].notap2>10 || Turma[count].notap1 && Turma[count].notap2<0 )
      {
        printf("valor invalido \n \n");

        printf("\n\nNota p1: ");
        scanf("%f", &Turma[count].notap1);

        printf("\n\nNota p2: ");
        scanf("%f", &Turma[count].notap2);
      }
}
 for(count = 4 ; count >=0 ; count--)
{
    printf("\n Aluno %d\n", count);
    printf(" nome: %s\n",Turma[count].nome);
}
return 0;
}
float funcaoP1(struct alunos_turma[count],  int count)
{
    float menor,maior,menorf=0,maiorf=0,aluno=1,aluno2=1;

    maior=alunos_turma[1].notap1;
    menor=alunos_turma[1].notap1;
    for(count=0; count<5 ; count++)
    {
        if (menor < alunos_turma[count].notap1 && menor>=0)
            menorf = menorf;
            aluno=aluno;
        else
            resultado = alunos_turma[count].notap1 ;
            aluno++;
    }
    for(count=0; count<5 ; count++)
    {
        if (menor > alunos_turma[count].notap1 && menor<=10)
            menorf = menorf;
            aluno2=aluno;
        else
            resultado = alunos_turma[count].notap1 ;
            aluno2++;
    }
    printf("     notas da p1    \n");
    printf("maior nota\n");
    printf("Aluno %s = %s \n\n",alunos_turma[aluno2].nome, alunos_turma[aluno2].notap1);
    printf("menor nota\n");
    printf("Aluno %s = %s \n\n",alunos_turma[aluno].nome, alunos_turma[aluno1].notap1);

    return funcaoP1;
}
