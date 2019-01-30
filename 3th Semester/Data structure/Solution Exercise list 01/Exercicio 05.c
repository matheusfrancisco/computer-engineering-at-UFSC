
#include <stdio.h>
#include <stdlib.h>

struct celula{
	int conteudo;
	struct celula *seg;
}; typedef struct celula cel;

void inserir(int x, cel **lst);
cel *buscaMenor(cel **lst);

int main() {

	cel *lst = NULL;

	inserir(4, &lst);
	inserir(29, &lst);
	inserir(9, &lst);
	inserir(12, &lst);

	printf("Conteudo: %d", buscaMenor(&lst)->conteudo);

	return 0;
}

void inserir(int x, cel **lst){

	cel *p, *nova;
	nova = (cel*) malloc(sizeof(cel*));
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

cel *buscaMenor(cel **lst){
	cel *p = NULL, *q;

	if((*lst) == NULL){
		printf("Lista Vazia!\n");
	}else{
		q = (*lst)->seg;
		p = (*lst);
		do{
			if(q->conteudo < p->conteudo){
				p = q;
			}
			q = q->seg;
		}while(q != NULL);
	}
	return p;
}
