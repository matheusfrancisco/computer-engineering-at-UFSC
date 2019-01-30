#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <string.h>

struct pilha{
char dados[200];
struct pilha *prox;
};

char empilha(struct pilha **p);

struct pilha *desempilha(struct pilha **p);

int main()
{

struct pilha *p = NULL;

struct pilha *desempilhado = NULL;

// Variaveis auxiliares
int i, n;

srand(time(NULL));

printf("Empilhando...\n");
char inteiro1[200];
char auxint[200];
int a2=0;
int z=0;


empilha(&p);
while ((desempilhado = desempilha(&p)) != NULL){
printf("Desempilhado: %s\n", desempilhado->dados);

}

}

/*
 * Funcao responsavel por empilhar um valor na pilha.
 * e o valor a ser empilhado.
 */
 char empilha(struct pilha **p)
{

char inteiro1[200];
char auxint[200];
int a2=0;
int z=0;
int i=0;
struct pilha *novo = NULL;

novo = (struct pilha *) malloc(sizeof(struct pilha));

if (novo != NULL){




printf("\nInsira um valor carai\n");
   gets(inteiro1);
      fflush(stdin);
   a2=strlen(inteiro1);

   for(i=0; i<a2; i++)
   {


auxint=inteiro1[i];


strcpy(novo->dados,inteiro1);


printf("Empilhado: %c\n", inteiro1[i]);
fflush(stdin);

}

if (*p == NULL){
novo->prox = NULL;
} else {

novo->prox = *p;
}

*p = novo;

} else {
printf("Erro ao alocar memoria!\n");
return 1;
}

return 0;

}

/*
 * Funcao responsavel por desempilhar um valor da pilha. Recebe como parametro
 * um ponteiro para um ponteiro para o primeiro elemento da pilha
 */
struct pilha *desempilha(struct pilha **p)
{

struct pilha tmp;

struct pilha *aux = NULL;

struct pilha *del = NULL;

if (*p != NULL){

aux = (struct pilha *) malloc(sizeof(struct pilha));

tmp = **p;

aux = &tmp;

del = *p;

*p = (*p)->prox;

free(del);

return aux;

} else {
return NULL;
}
}
