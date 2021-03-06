
#include<stdio.h>
#include<stdlib.h>

struct celula{
    int conteudo;
    struct celula*seg;
}; typedef struct celula cel;

void inserir(int x, cel**p);
void inverter(cel**lst);
void imprimir(cel*lst);

int main(){
    cel*lst = NULL;

    int i;
    for(i=0; i<5; i++){
        printf("\nINFORME O VALOR\n");
        scanf("%i", &i);
        inserir(i, &lst);
    }

    imprimir(lst);
    inverter(&lst);
    printf("\n\nINVERTE:\n");
    imprimir(lst);
}

void inserir(int x, cel**lst){
	cel*p;
	cel*nova;
	nova = (cel*) malloc (sizeof(cel*));
	nova->conteudo = x;
	nova->seg = NULL;
	p = (*lst);
	if(p == NULL){
		(*lst) = nova;
	}else{
		while(p->seg != NULL){
			p = p->seg;
		}
		p->seg = nova;
	}
}

void inverter(cel**lst){
    if((*lst) != NULL){
        cel*p;
        cel*q;
        cel*x;
        p = q = x = (*lst);
        while(x != NULL){
            p = p->seg;
            x->seg = q;
            q = x;
            x = p;
        }
        (*lst)->seg = NULL;
        (*lst) = q;
    }
}

void imprimir(cel*lst){
	cel*p;

	if(lst == NULL){
		printf("Lista Vazia!");
	}else{
		p = lst;
		do{
			printf("Conteudo: %d\n", p->conteudo);
			p = p->seg;
		}while(p != NULL);
	}

}
