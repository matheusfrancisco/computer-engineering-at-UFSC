#include <stdio.h>
#include <string.h>
#include <stdlib.h>

struct No {
int Valor;
struct No *prox;
};
typedef struct No TipoNo;

struct Pilha {
TipoNo *topo;
int tamanho;
};
typedef struct Pilha TipoPilha;


void Empilha(int x, TipoPilha *pilha)
{
TipoNo *aux;
aux = (TipoNo *) malloc(sizeof(TipoNo));
aux->Valor = x;
aux->prox = pilha->topo;
pilha->topo = aux;
pilha->tamanho++;
}
int Vazia(TipoPilha *pilha)
{
return (pilha->topo == NULL);
}


int Desempilha(TipoPilha *pilha){
TipoNo *q; int v;
if (Vazia(pilha)) {
printf("Lista vazia\n"); return 0;
}
q = pilha->topo;
pilha->topo = q->prox;
v = q->Valor;
free(q);
pilha->tamanho--;
return v;
}

int main(){
   int i, numero, max=5;
  TipoPilha *pilha;
  pilha = (TipoPilha *) malloc (sizeof(TipoPilha));

 pilha->topo = NULL;
 pilha->tamanho = 0;

for (i=0;i<max;i++) {
printf("Leitura do valor (%d) :",i); scanf("%d",&numero);
Empilha(numero, pilha);
printf("Empilhou: %d \n", numero);
}
for(i=0;i<max;i++) {
numero = Desempilha (pilha);
printf ("Desempilhou: %d \n", numero);
}}


