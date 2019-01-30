#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#define MAX_NOME 50
#define SAIR 0
#define IMPRIMIR 1
#define INSERIR_INI 2
#define INSERIR 3
#define REMOVER_INI 4
#define REMOVER 5
#define BUSCAR 6
#define INVERTE 7
#define UNIAO 8

struct pessoa{
    char nome[MAX_NOME];
    int num;
};


typedef struct pessoa Pessoa;

struct celula{
  Pessoa *ptrpessoa;
  struct celula *prox;
};

typedef struct celula Celula;



Celula *inserir(Celula *fim, Pessoa *p){
    Celula *nova = (Celula*) malloc(sizeof(Celula));
    nova->ptrpessoa = p;
    nova->prox = fim->prox;
    fim->prox = nova;
    fim = nova;
    return fim;
}

void remover(Celula *ini){
    Celula *li = ini->prox;
    ini->prox = li->prox;
    printf("OPA");
    free(li);
}

void imprimir(Celula *ini){
    Celula *aux = ini;
    Celula *li = ini->prox;
    while(li != aux){
        printf("Nome: %s | Idade: %d \n", li->ptrpessoa->nome, li->ptrpessoa->num);
        li = li->prox;
    }
}

int main(){
    Celula *ini;
    Celula *fim;
    Celula cini;
    Pessoa p1, p2, p3, p4, p5;

    p1.num = 30;
    strcpy(p1.nome, "Pessoa 1.");

    p2.num = 18;
    strcpy(p2.nome, "Pessoa 2");

    p3.num = 500;
    strcpy(p3.nome, "Pessoa 3");

    p4.num = 120;
    strcpy(p4.nome, "Pessoa 4");

    p5.num = 120;
    strcpy(p5.nome, "Pessoa 5.");

    ini = &cini;
    fim = ini;

    ini->prox = ini;

    fim = inserir(fim, &p1);
    fim = inserir(fim, &p2);

    imprimir(ini);

    remover(ini);

    imprimir(ini);

    return 0;
}
