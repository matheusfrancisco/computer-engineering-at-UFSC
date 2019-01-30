#include <stdio.h>
#include <ctype.h>
#include <stdlib.h>
#include <string.h>
#define MAX 81

typedef struct {
        char item[MAX];
        int t1;
        } tPilha;


void inserir(tPilha *, char );
char remover(tPilha *);
void listar (tPilha *);
int ePalindromo (char *, tPilha *);


void main ()
{
    tPilha *pilha;
    char cadeia[80];
    int i=0;
    if (( pilha = (tPilha *) malloc(sizeof(tPilha)) ) == NULL )
    {
        puts("Nao há espaço.");
        exit(1);
   }

    pilha->t1 = -1;
    puts("Qual é a cadeia?");
    gets(cadeia);

    while (cadeia[i] != '\0') {
          inserir(pilha, cadeia[i]);
          i++;
    }

    if (ePalindromo(cadeia, pilha))
       puts("Palindromo.");
    else
        puts("Nao e palindromo");


}
int ePalindromo (char *cadeia, tPilha *pilha) {
    int palindromo = 1, i;
   for (i=0; i<strlen(cadeia); i++)
        if (cadeia[i] != remover(pilha)) palindromo = 0;
    return palindromo;

}





void listar(tPilha *pilha) {

     int i;

     puts("Imprimindo pilha.");
     if (pilha->t1 == -1) puts("Pilha vazia.");
     else for (i=pilha->t1; i>=0; i--) printf("%d\n", pilha->item[i]);


}
void inserir(tPilha *pilha, char c) {
     if (pilha->t1 < MAX-1) {
        pilha->t1++;
        pilha->item[pilha->t1]=c;
     }
     else puts("Pilha cheia.");
}



char remover(tPilha *pilha) {
if (pilha->t1 == -1) puts("Pilha vazia.");
     else return pilha->item[pilha->t1--];

}

