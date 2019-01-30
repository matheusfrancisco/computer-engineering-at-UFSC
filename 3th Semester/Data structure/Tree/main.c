#include <stdio.h>
#include <stdlib.h>

typedef struct nodo
{
    int valor;

    struct nodo * esquerda;
    struct nodo * direita;
} t_nodo;

t_nodo * criarNodo(int valor);
void inserirNaArvore(t_nodo ** raiz, t_nodo * novo);
void mostrarNodo(t_nodo* nodo);


int main2()
{
    t_nodo * raiz = NULL;

    inserirNaArvore(&raiz, criarNodo(10));
    inserirNaArvore(&raiz, criarNodo(5));
    inserirNaArvore(&raiz, criarNodo(4));
    inserirNaArvore(&raiz, criarNodo(5));
    inserirNaArvore(&raiz, criarNodo(6));
    inserirNaArvore(&raiz, criarNodo(20));
    inserirNaArvore(&raiz, criarNodo(3));

    printf("Em ordem >>");
    mostrarArvoreEmOrdem(raiz);
    printf("Pre ordem >>");
    mostrarArvorePreOrdem(raiz);
    printf("Pos ordem >>");
    mostrarArvorePosOrdem(raiz);

    return 0;
}

t_nodo * criarNodo(int valor)
{
    t_nodo * temp = (t_nodo*)malloc(sizeof(t_nodo));
    temp->direita = temp->esquerda = NULL;
    temp->valor = valor;
    return temp;
}

void inserirNaArvore(t_nodo ** raiz, t_nodo * novo)
{
    if(!*raiz)
    {
        *raiz = novo;
    }
    else if(novo->valor > (*raiz)->valor)
    {
        inserirNaArvore(&(*raiz)->direita, novo);
    }
    else if(novo->valor < (*raiz)->valor)
    {
        inserirNaArvore(&(*raiz)->esquerda, novo);
    }
}

/**avança e mostra em ordem crescente dos valores inseridos*/
void mostrarArvoreEmOrdem(t_nodo * raiz)
{
    if(raiz)
    {
        mostrarArvoreEmOrdem(raiz->esquerda);
        mostrarNodo(raiz);
        mostrarArvoreEmOrdem(raiz->direita);
    }
}
/**Ele exibe sempre antes de avancar, exibe, avanca, avanca*/
void mostrarArvorePreOrdem(t_nodo * raiz)
{
    if(raiz)
    {
        mostrarNodo(raiz);
        mostrarArvorePreOrdem(raiz->esquerda);
        mostrarArvorePreOrdem(raiz->direita);
    }
}
/**Ele avanca profundamente a arvore depois volta exibindo*/
void mostrarArvorePosOrdem(t_nodo * raiz)
{
    if(raiz)
    {

        mostrarArvorePosOrdem(raiz->esquerda);
        mostrarArvorePosOrdem(raiz->direita);
        mostrarNodo(raiz);
    }
}
void mostrarNodo(t_nodo * nodo)
{
    printf("Valor: %d\n", nodo->valor);
}
