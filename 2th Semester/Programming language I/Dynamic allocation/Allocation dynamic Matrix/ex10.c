/*  EXERCICIO 10
• Faça o programa que preenche uma matriz A (5x3) com as notas de 5
alunos em três provas.
• O programa deverá mostrar um relatório com o número do aluno (número
da linha) e a prova (número da coluna) em que cada aluno obteve a
menor nota (junto ao valor da nota).
• O programa deve mostrar quantos alunos tiveram a nota abaixo da media
em cada uma das provas, ou seja, na prova 1, na prova 2 e na prova 3
(mostrar os alunos e as nota deles).
*/

#include<stdio.h>

int main ()
{ const int line = 5, column = 3;
  int m[line][column], i, j, ap, menor1=11, menor2=11, menor3=11, menor4=11, menor5=11;
  float media =0;


  // ENTRADA DE DADOS
  for (i=1; i<=line; i++)
 { for (j=1; j<=column; j++)
   {  printf("\n Aluno %i   Nota da prova %i\n", i, j);
      scanf("%i", &m[i][j]);
   }
  }



//PROCESSAMENTO DE DADOS E SAIDA DE DADOS


for (i=1; i<=line; i++)
 { for (j=1; j<=column; j++)
   { media= media + m[i][j];
     ap++; }
 }

media=media/15;

printf("\n A media = %2.f\n", media);

printf("\n ALUNO 1\n");
i=1;
    for (j=1; j<=column; j++)
      {
         if (menor1 > m[i][j])
        {
             menor1=m[i][j];
        }
         if(m[i][j] < media)
            printf("\n A nota esta abaixo da media na Prova %i == %i\n", j, m[i][j]);
      }
     printf("\n A menor nota do aluno 1 na Prova %i  ==  %i \n", j, menor1);


printf("\n ALUNO 2\n");
i=2;

    for (j=1; j<=column; j++)
      {
        if (menor2 > m[i][j])
         {
             menor2=m[i][j];
         }

       if(m[i][j] < media)
       printf("\n A nota esta abaixo da media na Prova %i == %i\n", j, m[i][j]);
      }
  printf("\n A menor nota do aluno 2 na Prova %i  ==  %i \n", j, menor2);


printf("\n ALUNO 3\n");

i=3;
    for (j=1; j<=column; j++)
       {
         if (menor3 > m[i][j])
         {
             menor3=m[i][j];
         }

       if(m[i][j] < media)
       printf("\n A nota esta abaixo da media na Prova %i == %i\n", j, m[i][j]);

       }
  printf("\n A menor nota do aluno 3 na Prova %i  ==  %i \n", j, menor3);


printf("\n ALUNO 4\n");

i=4;
    for (j=1; j<=column; j++)
       {
         if (menor4 > m[i][j])
       {
         menor4=m[i][j];
       }

       if(m[i][j] < media)
       printf("\n A nota esta abaixo da media na Prova %i == %i\n", j, m[i][j]);

       }
  printf("\n A menor nota do aluno 4 na Prova %i  ==  %i \n", j, menor4);


printf("\n ALUNO 5\n");

i=5;
    for (j=1; j<=column; j++)
       {
         if (menor5 > m[i][j])
         menor5=m[i][j];

       if(m[i][j] < media)
       printf("\n A nota esta abaixo da media na Prova %i == %i\n", j, m[i][j]);

       }
 printf("\n A menor nota do aluno 5 na Prova %i  ==  %i \n", j, menor5);



return 0;
}






