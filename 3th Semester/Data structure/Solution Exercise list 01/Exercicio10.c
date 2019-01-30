#include <stdio.h>
#include <stdlib.h>

typedef struct lista {
	int info;
	struct lista* prox;
}Lista;


Lista* lista_cria() {
   return NULL;
}

Lista* lista_insere (Lista* l, int i) {
	Lista* novo = (Lista*) malloc(sizeof(Lista));

	novo->info = i;
	novo->prox = l;

	return novo;
}

void lista_imprime (Lista* l) {
	/* nao precisa de variavel auxiliar para percorrer a lista */

	for (; l != NULL; l = l->prox)
		printf("info = %d\n", l->info);
}

/* concatena modificando l1 */
void concatena (Lista* l1, Lista* l2)
{
	Lista* p;   /* variável auxiliar para percorrer a lista */

	if (l1 != NULL)
	{
		do
		{
			p = l1;
			l1 = l1->prox;
		}while(l1 != NULL);

		p->prox = l2;
	}
}

int main()
{
	Lista* l;
	Lista* l2;

	l = lista_cria();
	l = lista_insere(l, 1);
	l = lista_insere(l, 45);
	l = lista_insere(l, 67);
	l = lista_insere(l, 89);
	l = lista_insere(l, 1011);

	printf("\nLista original:\n");
	lista_imprime(l);

	/*criando e imprimindo a lista l2*/
	l2 = lista_cria();
	l2 = lista_insere(l2, 1);
	l2 = lista_insere(l2, 44);
	l2 = lista_insere(l2, 69);
	l2 = lista_insere(l2, 90);
	l2 = lista_insere(l2, 1013);
	printf("\nLista 2:\n");
	lista_imprime(l2);
	printf("\n");
	printf("\nLista depois da concatenacao:\n");
	concatena(l,l2);
	lista_imprime(l);

	getchar();
	return 0;
}
