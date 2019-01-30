#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#define MAX_NOME 50
#define INSERIR_INI 2

typedef struct Pessoa_ {

    char nome[50];
    double altura;
    double salario;
}   Pessoa;


typedef struct cel {

    Pessoa * conteudo;
    struct cel * seg;
}   celula;

void Inserir (celula *p, Pessoa * x);
void Remover (celula *p);
void Imprimir (celula *lst);


typedef celula *lista;

void main ( ) {

    lista lst = NULL;
    Pessoa p1,p2;

    Pessoa *info_removida;
    Celula *newhead = NULL;
    Celula *removida;


    p1.num = 30;
    strcpy(p1.nome, "Matheus");

    p2.num = 18;
    strcpy(p2.nome, "Mayara");
    int menu ;
    int x ;

while (menu != 0) {
            printf("Escolha a opcao\n");
            printf("0. Sair\n");
            printf("1. Exibir lista\n");
            printf("2. Adicionar  no inicio\n");
            printf("3. Adicionar  no final\n");
            printf("4. Zerar lista\n");
            printf("Opcao: "); scanf("%d", &menu); /*recebe a opção seleciona no menu pelo cliente*/

        switch (menu){/*lista de opção dos produtos*/

            case 0:
                printf("Voce fechou.");
            break;
            case 1:

            break;
            case 2:
                /*imprime apenas o campo NUM da pessoa;*/
            break;
            case 3:

            break;
            case 4:

            break;
            /*case REMOVER:
                // removida = remover_ini(newhead);
            break;*/
            default:
                printf("Opcao inexistente.");
                break;
            }
    };


    Pessoa p1;
    Pessoa p2;
    Pessoa p3;

    p1.altura = 1.69;
    p1.salario = 1000;
    strcpy(p1.nome, "Joao");

    p2.altura = 1.80;
    p2.salario = 1500;
    strcpy(p2.nome, "Jose");

    p3.altura = 1.75;
    p3.salario = 2500;
    strcpy(p3.nome, "Joana");

    Inserir (lst, &p1);
    Inserir (lst, &p2);
    Inserir (lst, &p3);

    Remover (lst->seg);

    Imprimir (lst);

    return 0;
}

void Inserir (celula * p, Pessoa * x) {

    celula * nova;

    nova = (celula *) malloc(sizeof(celula));

    nova -> conteudo = x;

    nova -> seg = p -> seg;

    p -> seg = nova;
}

void Remover (celula *p){

    celula * lixo;
    lixo = p -> seg;
    p -> seg = lixo -> seg;
    free (lixo);
}

void Imprimir (celula *lst) {

    celula * p;
    p = lst->seg;

    while (p != NULL){
        printf ("Nome: %s, Altura: %.2f, Salario: %.2f \n", p->conteudo->nome, p->conteudo->altura, p->conteudo->salario);
        p = p->seg;
    }
}
