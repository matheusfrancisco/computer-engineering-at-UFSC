/*7. Escreva uma função que inverte uma dada lista duplamente encadeada com cabeça. A lista resultante deve conter as mesmas células que a
original, porém na ordem inversa. Não troque o conteúdo das células.*/

#include<stdio.h>
#include<stdlib.h>

struct celula{
    int conteudo;
    struct celula*ant;
    struct celula*seg;
}; typedef struct celula cel;

void inserir(int x, cel**lst);
void imprimir(cel*lst);
void inverter(cel**lst);

int main(){
    cel*lst;

	lst = (cel*)malloc(sizeof(cel*));
	lst->seg = NULL;
	lst->ant = NULL;
	lst->conteudo = 0;

    inserir(1, &lst);
    inserir(2, &lst);
    inserir(3, &lst);
    inserir(4, &lst);
    inserir(5, &lst);

	imprimir(lst);
	inverter(&lst);
	imprimir(lst);

	return 0;
}

void inserir(int x, cel**lst){
	cel*p;
	cel*nova;

	nova = (cel*) malloc (sizeof(cel*));
	nova->seg = NULL;
	nova->ant = (*lst);
	nova->conteudo = x;

	if((*lst)->seg == NULL){
		(*lst)->seg = nova;
	}else{
		p = (*lst)->seg;
		while(p->seg != NULL){
			p = p->seg;
		}
		p->seg = nova;
		nova->ant = p;
	}
}

void imprimir(cel*lst){
    cel*p;
    p = lst->seg;
    while(p != NULL){
        printf("%i", p->conteudo);
        p = p->seg;
    }
}

void inverter(cel**lst){
	if((*lst)->seg == NULL){
		printf("LISTA VAZIA");
	}else{
		cel*p;
        cel*q;
        cel*x;
		p = q = x = (*lst)->seg;
    	while( x != NULL ){
        	p = p->seg;
        	x->seg = q;
        	q = x;
        	x = p;
   		}
    	(*lst)->seg->seg = NULL;
    	(*lst)->seg = q;
	}
}
