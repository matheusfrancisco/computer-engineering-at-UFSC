/*Autores: Ale Chaito - 14205353; 	Matheus Francisco Batista Machado - 14202492; Paulo Roberto Besen da Ventura - 14205756;
Objetivo do programa: Estruturar uma matriz esparsa utilizando vetores e listas simplesmente encadeadas com cabeça, possibilidade operações matematicas.
Descrição: Faz a leitura de um bloco de notas onde está armazenada a matriz esparsa e estrutura ela usando vetores e listas simplesmente encadeadas
com cabeça, existem 8 opções no programa: SAIR = 0, CRIAR = 1, IMPRIMIR = 2, SOMAR = 3, SUBTRAIR =  4, MULTIPLICAR 5, POTENCIA = 6, ATRIBUIR = 7.
Produzido: 25/10/2015
Condições de Contorno: Na operação atribuir é esperado que a matriz de destino não seja nula;*/
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>
#define SIZE 50
#define SAIR 0
#define CRIAR 1
#define IMPRIMIR 2
#define SOMAR 3
#define SUBTRAIR 4
#define MULTIPLICAR 5
#define POTENCIA 6
#define ATRIBUIR 7
#define DESALOCAR 8

struct celula {
    int coluna;
    int num;
    struct celula* prox;
};

typedef struct celula Celula;

struct vet{
    Celula* ptr; /*ponteiro para cabeça das listas */
};

typedef struct vet Vetor;

struct matriz{
    int linha;
    int coluna;
    Vetor* pont; /*ponteiro para vetor guia da matriz*/
};

typedef struct matriz Matriz;

/*ENTRADA DE DADOS*/
Matriz *criarMatriz(FILE* matriz); /*Ler e criar matriz*/

/*SAIDA DE DADOS*/
void imprimir(Matriz* mat); /*Imprimir matrizes*/

/*MÉTODOS DE ALOCAÇÃO*/
Vetor *criarVetor(int linha); /*Criar vetor guia das matrizes*/
Celula *iniciarLst_Coluna(); /*Inicia uma lista coluna, apoio a multiplicação*/

/*SAIDA DE DADOS*/
void imprimir(Matriz* mat); /*Imprimir matrizes*/

/*MÉTODOS DE INSERÇÃO*/
void inserePos(Celula *head, int coluna, int valor, int operacao);/*Inserir na posição que interessa, apoio a soma e subtração*/
void inserirFim(Celula* head, int coluna, int valor); /*Inserir no final das listas*/
void criarLst_Coluna(Vetor *vet, Celula *head, int coluna, int linha); /*Inserir no final das listas coluna, apoio a multiplicação*/

/*MÉTODOS DE LIBERAÇÃO DE MEMÓRIA*/
void desalocaMatriz(Matriz* mat);
void desalocaLst(Celula *head);

/*MÉTODO DE ATRIBUIÇÃO*/
void atribuir(Matriz* matOrigem, Matriz* matDestino ); /*atribuir matrizes*/

/*MÉTODOS MATEMÁTICOS*/
Matriz *soma(Matriz* mat1, Matriz* mat2); /*somar matrizes*/
Matriz *subtracao(Matriz* mat1, Matriz* mat2); /*subtrair matrizes*/
Matriz *multiply(Matriz* mat1, Matriz* mat2); /*multiplicar matrizes*/
Matriz *potency(Matriz* mat, int x); /*potenciar matriz por x*/


int main(){
    FILE *arqMat1, *arqMat2;
    Matriz *mat1, *mat2, *matSoma, *matSubtracao, *matMultiply, *matPotency;
    int menu, potencia;
    time_t ti, tf;
    double seconds;

    mat1 = NULL;
    mat2 = NULL;
    matSoma = NULL;
    matSubtracao = NULL;
    matMultiply = NULL;
    matPotency  = NULL;

    while (menu != 0) {
        printf(
        "-----------------------------------------------\n"
        "Matriz Esparsa - Selecione a operacao desejada:\n"
        "-----------------------------------------------\n"
        "1 - Criar \n"
        "2 - Imprimir \n"
        "3 - Somar \n"
        "4 - Subtrair \n"
        "5 - Multiplicar \n"
        "6 - Potenciar \n"
        "7 - Atribuir \n"
        "8 - Desalocar \n"
        "---------------------\n"
        "0 - SAIR DO PROGRAMA.\n"
        "---------------------\n"
        );
        scanf("%d", &menu);
        switch (menu){
            case SAIR:
                printf("Voce saiu.\n");
            break;
            case IMPRIMIR:
                if(mat1 != NULL){
                    printf("Matriz [A]:\n");
                    time(&ti);
                    imprimir(mat1);
                    time(&tf);
                    seconds = difftime(tf, ti);
                    printf ("Tempo gasto em segundos: %.f\n", seconds);
                }
                if(mat2 != NULL){
                    printf("Matriz [B]:\n");
                    time(&ti);
                    imprimir(mat2);
                    time(&tf);
                    seconds = difftime(tf, ti);
                    printf ("Tempo gasto em segundos: %.f\n", seconds);
                }
            break;
            case CRIAR:
                if(mat1 == NULL){
                    arqMat1 = fopen("matriz1.txt", "r");
                    if(arqMat1 == NULL) {
                        printf("arquivo desconhecido - matriz1.txt\n");
                    return 0;
                    }
                    time(&ti);
                    mat1 = criarMatriz(arqMat1);
                    printf("Matriz A[%d][%d] criada com sucesso! \n", mat1->linha, mat1->coluna);
                    fclose(arqMat1);
                    time(&tf);
                    seconds = difftime(tf, ti);
                    printf ("Tempo gasto em segundos: %.f\n", seconds);
                }
                if(mat2 == NULL){
                    arqMat2 = fopen("matriz2.txt", "r");
                    if(arqMat2 == NULL) {
                        printf("arquivo desconhecido - matriz2.txt\n");
                    return 0;
                    }
                    time(&ti);
                    mat2 = criarMatriz(arqMat2);
                    printf("Matriz B[%d][%d] criada com sucesso! \n", mat2->linha, mat2->coluna);
                    fclose(arqMat2);
                    time(&tf);
                    seconds = difftime(tf, ti);
                    printf ("Tempo gasto em segundos: %.f\n", seconds);
                }
            break;
            case SOMAR:
                if(mat1 != NULL && mat2 != NULL && mat1->coluna == mat2->coluna && mat1->linha == mat2->linha){
                    if(matSoma != NULL){
                        desalocaMatriz(matSoma);
                        matSoma = NULL;
                    }
                    time(&ti);
                    matSoma = soma(mat1, mat2);
                    time(&tf);
                    seconds = difftime(tf, ti);
                    printf("Resultado soma [A+B]:\n");
                    imprimir(matSoma);
                    printf ("Tempo gasto em segundos: %.f\n", seconds);
                }
                else{
                    printf("Dimensoes incorretas de matriz ou as matriz nao foram criadas. \n");
                }
            break;
            case SUBTRAIR:
                if(mat1 != NULL && mat2 != NULL && mat1->coluna == mat2->coluna && mat1->linha == mat2->linha){
                    if(matSubtracao != NULL){
                        desalocaMatriz(matSubtracao);
                        matSubtracao = NULL;
                    }
                    time(&ti);
                    matSubtracao = subtracao(mat1, mat2);
                    time(&tf);
                    printf("Resultado subtracao [A-B]:\n");
                    imprimir(matSubtracao);
                    seconds = difftime(tf, ti);
                    printf ("Tempo gasto em segundos: %.f\n", seconds);
                }
                else{
                    printf("Dimensoes incorretas de matriz ou as matrizes nao foram criadas. \n");
                }
            break;
            case MULTIPLICAR:
                if(mat1 != NULL && mat2 != NULL && mat1->coluna == mat2->linha){
                    time(&ti);
                    matMultiply = multiply(mat1, mat2);
                    time(&tf);
                    printf("Resultado multiplicacao [A*B]:\n");
                    seconds = difftime(tf, ti);
                    imprimir(matMultiply);
                    printf ("Tempo gasto em segundos: %.f\n", seconds);
                }
                else{
                    printf("Dimensoes incorretas de matriz ou as matrizes nao foram criadas. \n");
                }
            break;
            case POTENCIA:
                if(mat1 != NULL && mat1->linha == mat1->coluna){
                    printf("Insira a potencia desejada:\n");
                    scanf("%d", &potencia);
                    if(potencia < 0){
                        printf("Insira uma potencia positiva.\n");
                    }
                    else{
                        time(&ti);
                        matPotency = potency(mat1, potencia);
                        time(&tf);
                        printf("Resultado potenciacao [A^%d]:\n",potencia);
                        seconds = difftime(tf, ti);
                        imprimir(matPotency);
                        printf ("Tempo gasto em segundos: %.f\n", seconds);
                    }
                }
                else{
                    printf("Matriz nao quadrada ou nao fora criada. \n");
                }
            break;
            case ATRIBUIR:
                if(mat1 != NULL && mat2 != NULL && mat1->linha == mat2->linha && mat1->coluna == mat2->coluna){
                    atribuir(mat1, mat2);
                    mat1 = NULL;
                    printf("Resultado atribuir [A->B]:\n");
                    imprimir(mat2);
                }
                else{
                    printf("Dimensoes incorretas de matriz ou as matrizes nao foram criadas. \n");
                }
            break;
            case DESALOCAR:
                if(mat1 != NULL){
                    desalocaMatriz(mat1);
                    mat1 = NULL;
                    printf("Matriz A foi desalocada com sucesso! \n");
                }
                if(mat2 != NULL){
                    desalocaMatriz(mat2);
                    mat2 = NULL;
                    printf("Matriz B foi desalocada com sucesso! \n");
                }
                if(matSoma != NULL){
                    desalocaMatriz(matSoma);
                    matSoma = NULL;
                    printf("Matriz Soma foi desalocada com sucesso! \n");
                }
                if(matSubtracao != NULL){
                    desalocaMatriz(matSubtracao);
                    matSubtracao = NULL;
                    printf("Matriz Subtracao foi desalocada com sucesso! \n");
                }
                if(matMultiply != NULL){
                    desalocaMatriz(matMultiply);
                    matMultiply = NULL;
                    printf("Matriz Multiplicacao foi desalocada com sucesso! \n");
                }
                if(matPotency != NULL){
                    desalocaMatriz(matPotency);
                    matPotency = NULL;
                    printf("Matriz Potencia foi desalocada com sucesso! \n");
                }
            break;
            default:
                printf("Opcao inexistente. \n");
            break;
            }
    }
    return 0;
}

Vetor* criarVetor(int linha){
    Vetor *novo;
    Celula *nova;
    int i;
    novo = (Vetor*) malloc(sizeof(Vetor)*linha); /*aloco o vetor guia dinamicamente*/
    for(i=0; i<linha; i++){ /*inicializando o vetor guia com cabeças de lista*/
        nova = (Celula*) malloc(sizeof(Celula));
        nova->prox = NULL;
        novo[i].ptr = nova;
    }
    return novo;
}

void inserirFim(Celula *head, int coluna, int valor){
    Celula *nova = (Celula*) malloc(sizeof(Celula));
    Celula *aux;
    nova->prox = NULL;
    nova->coluna = coluna;
    nova->num = valor;
    aux = head;
    while(aux->prox != NULL){ /*percorrendo a lista até o final para inserção*/
        aux = aux->prox;
    }
    aux->prox = nova;
}

void inserePos(Celula *head, int coluna, int valor, int operacao){
    Celula *nova, *atual, *anterior, *aux;
    int sin = 0;

    /*operacao = 0 -> SOMA*/
    /*operacao = 1 -> SUBTRACAO*/

    /*inicializando ponteiros*/
    atual = head->prox;
    anterior = head;
    aux = head->prox;

    while(aux != NULL){
        if(aux->coluna == coluna){ /*se as colunas forem iguais soma ou subtrai*/
            if(operacao == 0){
                aux->num = aux->num + valor;
            }
            if(operacao == 1){
                aux->num = aux->num - valor;
            }
            sin = 1; /*sinaliza que já foi feita a operação de soma ou subtração*/
            break;
        }
        aux = aux->prox;
    }
    if(sin == 0){ /*verificando se a operação ja foi feita*/
        while(atual != NULL){
            if(atual->coluna > coluna){ /*procurando uma coluna maior*/
                nova = (Celula*) malloc(sizeof(Celula));
                /*inserindo celula no meio*/
                nova->coluna = coluna;
                if(operacao == 0){ /*soma*/
                    nova->num = valor;
                }
                else{ /*subtracao*/
                    nova->num  = - valor;
                }
                nova->prox = atual;
                anterior->prox = nova;
                sin = 1; /*sinaliza que já foi feita a operação de soma ou subtração*/
                break;
            }
            else{
                if(atual != NULL){
                    anterior = atual;
                }
                atual = atual->prox;
            }
        }
    }
    if(sin == 0){ /*verificando se a operação ja foi feita*/
        if(operacao == 0){ /*soma*/
            inserirFim(head, coluna, valor); /*inserindo no final porque não existe coluna maior nem igual*/
        }
        else{ /*subtracai*/
            inserirFim(head, coluna, -valor); /*inserindo no final porque não existe coluna maior nem igual*/
        }
    }
}

Matriz *criarMatriz(FILE *matriz){
    int i, j, auxValor;
    Matriz *novaMat;
    Celula *aux;
    Vetor *guia;

    novaMat = (Matriz*) malloc(sizeof(Matriz));

    fscanf(matriz, "%d ", &novaMat->linha); /*linhas da matriz, define o tamanho do vetor guia*/
    fscanf(matriz, "%d ", &novaMat->coluna); /*colunas da matriz*/

    guia = criarVetor(novaMat->linha); /*criando vetor guia*/

    novaMat->pont = guia;

    for(i=0; i<novaMat->linha; i++){ /*andando linhas*/
        for (j = 0; j<novaMat->coluna; j++){ /*andando colunas*/
            fscanf (matriz, "%d ",&auxValor); /*leitura do numero no arquivo*/
            if(auxValor != 0){ /*condição para inserir apenas numeros diferentes de 0 */
                aux = guia[i].ptr;
                inserirFim(aux, j, auxValor);
            }
        }
    }
    return novaMat;
}

void imprimir(Matriz *mat){
    Vetor *aux;
    Celula *tmp;
    int i, k;

    aux = mat->pont;

    printf("Matriz[%d][%d]: \n", mat->linha, mat->coluna);
    for(i=0; i<mat->linha; i++){
        tmp = aux[i].ptr->prox; /*recebe a primeira celula com conteudo das listas*/
        k=0;
        while(tmp != NULL){
            if(k < tmp->coluna){
                while(k < tmp->coluna){
                    printf("0 ");
                    k++;
                }
            }
            if(k == tmp->coluna){
                printf("%d ", tmp->num);
                k++;
            }
            tmp = tmp->prox;
        }
        while(k < mat->coluna){
                printf("0 ");
                k++;
        }
        printf("\n");
    }
}

void atribuir(Matriz *matOrigem, Matriz *matDestino){
    Vetor *guiaOrigem, *guiaDestino;
    Celula *headDestino, *headOrigem, *remove;
    int i=0;

    guiaOrigem = matOrigem->pont;
    guiaDestino = matDestino->pont;
    /*Laço para remoção de todas celulas da matDestino*/
    while(i<matDestino->linha){
        headDestino = guiaDestino[i].ptr;
        while(headDestino->prox != NULL){
            remove = headDestino->prox;
            headDestino->prox = remove->prox;
            free(remove); /*removendo celulas*/
        }
        i++;
    }
    i=0;
    /*Laço para adicionar todas celulas da matOrigem para matDestino*/
    while(i<matDestino->linha){
        headDestino = guiaDestino[i].ptr;
        headOrigem = guiaOrigem[i].ptr->prox;
        while(headOrigem != NULL){
            inserirFim(headDestino, headOrigem->coluna, headOrigem->num);
            headOrigem = headOrigem->prox;
        }
        i++;
    }
    desalocaMatriz(matOrigem);
}

void desalocaMatriz(Matriz *mat){
    Vetor *guia = mat->pont;
    Vetor *removeVet;
    Celula *aux, *remove;
    int i;

    for(i=0; i<mat->linha; i++){
        aux = guia[i].ptr;
        while(aux->prox != NULL){
            remove = aux->prox;
            aux->prox = remove->prox;
            if(remove != NULL){
                free(remove); /*removendo celulas com conteudo*/
            }
            if(aux->prox == NULL){
                remove = aux;
                free(remove); /*removendo a cabeça*/
            }
        }
    }
    removeVet = guia;
    free(removeVet); /*liberando vetor*/
    free(mat); /*liberando matriz*/
}

void desalocaLst(Celula *head){
Celula *aux;
while(head->prox != NULL){
    aux = head->prox;
    head = head->prox;
    free(aux); /*removendo celulas*/
    aux = NULL;
}
if(head->prox == NULL){
    free(head); /*removendo cabeça da lista*/
    aux = head;
}
}

Matriz *soma(Matriz *mat1, Matriz *mat2){
    Vetor *result, *guia1, *guia2;
    Celula *aux1, *aux2, *aux3;
    int i;
    Matriz *novaMat;

    novaMat = (Matriz*) malloc(sizeof(Matriz));
    guia1 = mat1->pont;
    guia2 = mat2->pont;
    result = criarVetor(mat1->linha);

    /*Criando e inserindo os dados na matriz de soma*/
    result = criarVetor(mat1->linha);
    novaMat->linha = mat1->linha;
    novaMat->coluna = mat1->coluna;
    novaMat->pont = result;

    for(i=0; i<mat1->linha; i++){
        aux1 = guia1[i].ptr->prox;
        aux2 = guia2[i].ptr->prox;
        aux3 = result[i].ptr;
        /*Laço para adicionar todas celulas da mat1 na matSoma*/
        while(aux1 != NULL){
            inserirFim(aux3, aux1->coluna, aux1->num);
            aux1 = aux1->prox;
        }
        /*Laço para adicionar os elementos da mat2 na matSoma na posicao correta*/
        while(aux2 != NULL){
            inserePos(aux3, aux2->coluna, aux2->num, 0);
            aux2 = aux2->prox;
        }
    }

    return novaMat;
}

Matriz *subtracao(Matriz *mat1, Matriz *mat2){
    Vetor *result, *guia1, *guia2;
    Celula *aux1, *aux2, *aux3;
    int i;
    Matriz *novaMat;

    novaMat = (Matriz*) malloc(sizeof(Matriz));
    guia1 = mat1->pont;
    guia2 = mat2->pont;
    result = criarVetor(mat1->linha);

    /*Criando e inserindo os dados na matriz de subtracao*/
    result = criarVetor(mat1->linha);
    novaMat->linha = mat1->linha;
    novaMat->coluna = mat1->coluna;
    novaMat->pont = result;

    for(i=0; i<mat1->linha; i++){
        aux1 = guia1[i].ptr->prox;
        aux2 = guia2[i].ptr->prox;
        aux3 = result[i].ptr;
        /*Laço para adicionar os elementos da mat1 na matSoma*/
        while(aux1 != NULL){
            inserirFim(aux3, aux1->coluna, aux1->num);
            aux1 = aux1->prox;
        }
        /*Laço para adicionar os elementos da mat1 na matSoma na posicao correta*/
        while(aux2 != NULL){
            inserePos(aux3, aux2->coluna, aux2->num, 1);
            aux2 = aux2->prox;
        }
    }

    return novaMat;
}


Matriz *multiply(Matriz *mat1, Matriz *mat2){
    Vetor *guia3, *guia1, *guia2;
    Celula *aux1, *aux2, *aux3, *lstColuna;
    Matriz *novaMat = (Matriz*) malloc(sizeof(Matriz));
    int i=0, j=0, soma=0;

    novaMat->pont = criarVetor(mat1->linha);
    novaMat->linha = mat1->linha;
    novaMat->coluna = mat2->coluna;

    guia1 = mat1->pont;
    guia2 = mat2->pont;
    guia3 = novaMat->pont;

    /*Laço para percorrer linha da mat1 e coluna da mat 2*/
    while(i<mat1->linha && j<mat2->coluna){
        lstColuna = iniciarLst_Coluna();
        criarLst_Coluna(guia2, lstColuna, j, mat2->linha); /*cria uma lista com os elementos da coluna da mat2*/
        aux1 = guia1[i].ptr->prox;
        aux3 =  guia3[i].ptr;
        soma = 0;

        /*Laço para percorrer linha da mat1*/
        while(aux1 != NULL){
            aux2 = lstColuna->prox;
            /*Laço para percorrer a lista coluna da mat2*/
            while(aux2 != NULL){
                /*Verificando colunas iguais*/
                if(aux1->coluna == aux2->coluna){
                    soma += aux1->num*aux2->num; /*se encontrar, contribui para soma*/
                    aux2 = aux2->prox;
                }
                else{
                    aux2 = aux2->prox;
                }
            }
            aux1 = aux1->prox;
        }
        if(lstColuna != NULL){
            desalocaLst(lstColuna); /*liberando lista de coluna*/
        }
        if(soma !=0){
            inserirFim(aux3, j, soma); /*inserindo valores resultantes na matSoma*/
        }
        if(j+1 == mat2->coluna){
            i++;
            j=0;
        }
        else{
            j++;
        }
    }
    return novaMat;
}

Celula *iniciarLst_Coluna(){
    Celula *nova;
    nova = (Celula*) malloc(sizeof(Celula)); /*cabeça da lista coluna*/
    nova->prox =  NULL;
    return nova;
}

void criarLst_Coluna(Vetor *vet, Celula *head, int coluna, int linha){
Celula *aux;
int i=0;
while(i<linha){
    aux = vet[i].ptr->prox;
    while(aux != NULL){
        if(aux->coluna == coluna){
            inserirFim(head, i, aux->num); /*inserindo na lista de colunas*/
            break;
        }
        else{
            aux = aux->prox;
        }
    }
    i++;
}
}

Matriz *potency(Matriz *mat, int x){
    Vetor *result;
    Celula *auxResult;
    int i=0, j=0, cont=0;
    Matriz *novaMat, *auxMat;

    auxMat = NULL;
    novaMat = (Matriz*) malloc(sizeof(Matriz));
    novaMat->linha = mat->linha;
    novaMat->coluna = mat->coluna;

    result = criarVetor(novaMat->linha); /*criando vetor resultado*/

    if(x == 0){
        j = 0;
        for(i=0; i<mat->linha; i++){
            auxResult = result[i].ptr;
            inserirFim(auxResult, j, 1);
            j++;
        }
        novaMat->pont = result;
    }
    if(x == 2){
        novaMat->pont = mat->pont;
        auxMat = (Matriz*) malloc(sizeof(Matriz));
        auxMat = multiply(novaMat, mat);
        novaMat = auxMat;
    }
    if(x > 2){
        while(cont != x){
            if(cont == 0){ /*multiplicando as 2 primeiras matrizes*/
                novaMat->pont = mat->pont;
                auxMat = multiply(novaMat, mat);
                cont = 2;
            }
            else{ /*multiplicando a matriz resultados pelas consequentes até atingir a potencia desejada*/
                novaMat->pont = auxMat->pont;
                auxMat = multiply(novaMat, mat);
                cont++;
            }
        }
        novaMat = auxMat;
    }
    return novaMat;
}












