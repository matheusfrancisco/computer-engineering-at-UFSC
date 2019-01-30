#include <stdio.h>
#include <stdlib.h>

/** Estrutura de nodo
* Valor: valor do nodo
* Contem ponteiros para a esquerda e para a direita da arvore
*/
typedef struct nodo
{
    int valor;

    struct nodo * esquerda;
    struct nodo * direita;
} t_nodo;

/** Aqui tem uma funcao de criacao de nodo*/
t_nodo * criarNodo(int valor);
/** Essa eh a funcao de inserçao, passando a raiz e um novo nó/nodo*/
void inserirNaArvore(t_nodo ** raiz, t_nodo * novo);
/** mostrar um nodo especifico, passando no parametro */
void mostrarNodo(t_nodo* nodo);
/** busca um nodo pelo valor e retorna o endereco dele */
t_nodo* buscaNodo(t_nodo* raiz, int valor);

/** funcao para deletar um nodo da arvore */
void removeDaArvore(t_nodo ** raiz, t_nodo * alvo);
/** funcao para achar o pai para atualizar a arvore */
t_nodo* retornaPai(t_nodo ** raiz, t_nodo* pai, t_nodo* filho);
/** funcao para pegar os filhos para atualizar */
t_nodo* retornaFilhoEsquerda(t_nodo * pai);
t_nodo* retornaFilhoDireita(t_nodo * pai);

int main()
{
    t_nodo * raiz = NULL;

    inserirNaArvore(&raiz, criarNodo(10));
    inserirNaArvore(&raiz, criarNodo(5));
    inserirNaArvore(&raiz, criarNodo(4));
    inserirNaArvore(&raiz, criarNodo(9));
    inserirNaArvore(&raiz, criarNodo(6));
    inserirNaArvore(&raiz, criarNodo(20));
    inserirNaArvore(&raiz, criarNodo(3));

    printf("Em ordem >>\n");
    mostrarArvoreEmOrdem(raiz);
    printf("Pre ordem >>\n");
    mostrarArvorePreOrdem(raiz);
    printf("Pos ordem >>\n");
    mostrarArvorePosOrdem(raiz);

    t_nodo * buscado = buscaNodo(raiz, 6);

    printf("\n\n");

    if(buscado)
    {
        printf("Valor buscado: %d\n\n", buscado->valor);
    }
    else{
        printf("Nao foi encontrado!\n\n");
    }



    printf("Em ordem >>\n");
    mostrarArvoreEmOrdem(raiz);
    printf("Pre ordem >>\n");
    mostrarArvorePreOrdem(raiz);
    printf("Pos ordem >>\n");
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

t_nodo* buscaNodo(t_nodo * nodo, int valor)
{
    if(nodo)
    {
        if(nodo->valor == valor)
        {
            return nodo;
        }
        else if(valor > nodo->valor)
        {
            return buscaNodo(nodo->direita, valor);
        }
        else if(valor < nodo->valor)
        {
            return buscaNodo(nodo->esquerda, valor);
        }

    }
    return NULL;
}

/** funcao para deletar um nodo da arvore */
void removeDaArvore(t_nodo ** raiz, t_nodo * alvo)
{
    t_nodo * alvoPai = retornaPai(raiz, NULL, alvo);
    t_nodo * alvoFilhoEsquerda = retornaFilhoEsquerda(alvoPai);
    t_nodo * alvoFilhoDireita = retornaFilhoDireita(alvoPai);

    if(alvoFilhoDireita && !alvoFilhoEsquerda)
    {
        alvoPai->direita = alvoFilhoDireita;
    }
    else if(!alvoFilhoDireita && alvoFilhoEsquerda)
    {
        alvoPai->esquerda = alvoFilhoEsquerda;
    }
    else
    {
        alvoFilhoDireita->esquerda = alvoFilhoEsquerda;
        alvoPai->direita = alvoFilhoDireita;
    }
}
/** funcao para achar o pai para atualizar a arvore */
t_nodo* retornaPai(t_nodo ** raiz, t_nodo * pai, t_nodo* filho)
{
    if(!*raiz || !filho || !pai)
    {
        return NULL;
    }

    if(filho->valor == (*raiz)->valor)
    {
        return pai;
    }
    if(filho->valor < (*raiz)->valor)
    {
        return retornaPai(&(*raiz)->esquerda, *raiz, filho);
    }
    else if(filho->valor > (*raiz)->valor)
    {
        return retornaPai(&(*raiz)->direita, *raiz, filho);
    }

    return NULL;
}

/** funcao para pegar os filhos para atualizar */
t_nodo* retornaFilhoEsquerda(t_nodo * pai)
{
    if(!pai)
    {
        return NULL;
    }
    return pai->esquerda;
}

t_nodo* retornaFilhoDireita(t_nodo * pai)
{
    if(!pai)
    {
        return NULL;
    }
    return pai->direita;
}
