#include <stdio.h>

 int main(){
    int cont,cont2,ap,rep;
    float ma,n;




        print("Digite a nota do Aluno:");
        scanf("%f",&n);
           if(n>10){
               printf("Nota invalida digite novamente:");
               scanf("%f",&n);
        }
             else if (n<0){
                 printf("Nota invalida digite novamente:");
                 scanf("%f",&n);
        }


         printf("A media dos alunos aprovados foi %f",ma);
         printf("O total de alunos reprovados:",rep);
         return 0;
 }
