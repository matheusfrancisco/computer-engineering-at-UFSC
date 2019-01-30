#include <stdio.h>
#include <string.h>
#include <stdlib.h>

typedef char string[100];

typedef struct item_comanda {
  string item;
  int quantidade;
  float valor;
  struct item_comanda *prox;
} t_comanda;

typedef struct noh {
  int mesa;
  int altura;
  string cliente;
  t_comanda *comanda;
  struct noh *esquerda, *direita;
} t_no;

t_comanda *criaComanda(string nome, int quantidade, float valor);
t_no *criaNoh(int mesa,string cliente);
void insereNoh(t_no** raiz, t_no* noh);
t_no *localizaMesa(int mesa, t_no *arvore);
void acrescentaItem(t_no *arvore, t_comanda *comanda);
void mostrarComanda(t_no *mesa);
int menu();

int main()
{
  t_no *arvoreMesa = NULL;
  t_no *aux;
  int mesa, quantidade;
  string nome, pedido;
  float preco;


  while (1){
    switch(menu()){
      case 1: printf("Digite o numero da mesa: \n");
              scanf("%d", &mesa);
              printf("Digite o nome: \n");
              fflush(stdin);
              gets(nome);
              insereNoh(&arvoreMesa, criaNoh(mesa, nome));

              break;
      case 2: printf("Qual mesa? \n");
              scanf("%d", &mesa);
              aux = localizaMesa(mesa, arvoreMesa);
              if(!aux)
                printf("Mesa nao encontrada");
              else {
              printf("Pedido? \n");
              fflush(stdin);
              gets(pedido);
              printf("Quantidade: \n");
              scanf("%d", &quantidade);
              printf("Preco: \n");
              scanf("%f", &preco);
              acrescentaItem(aux , criaComanda(pedido, quantidade, preco));
              }
              break;
        case 3: printf("Digite a mesa: \n");
                scanf("%d", &mesa);
                aux = localizaMesa(mesa, arvoreMesa);
                mostrarComanda(aux);
                break;


        case 4: exit(0);

            break;
    }
  }
  return 0;
}

t_comanda *criaComanda(string nome, int quantidade, float valor)
{
  t_comanda *novo;
  novo = (t_comanda*)malloc(sizeof(t_comanda));
  strcpy(novo->item, nome);
  novo->quantidade = quantidade;
  novo->valor = valor;
  novo->prox = NULL;

  return novo;
}

t_no *criaNoh(int mesa,string cliente){
  t_no *novo;
  novo = (t_no*)malloc(sizeof(t_no));
  novo->altura = 0;
  novo->direita= NULL;
  novo->esquerda = NULL;
  novo->comanda = NULL;
  novo->mesa = mesa;
  strcpy(novo->cliente, cliente);
  return novo;

}

void insereNoh(t_no** raiz, t_no* noh){
  if(!*raiz)
    *raiz = noh;
  else if ((*raiz)->mesa > noh->mesa)
      insereNoh(&(*raiz)->esquerda, noh);

  else if ((*raiz)->mesa < noh->mesa)
      insereNoh(&(*raiz)->direita, noh);

}

t_no *localizaMesa(int mesa, t_no *arvore)
{
  if(!arvore)
    return NULL;
  else if (mesa < arvore->mesa)
  {
    return localizaMesa(mesa, arvore->esquerda);
  }
  else if (mesa > arvore->mesa)
  {
    return localizaMesa(mesa, arvore->direita);
  }
  else if (mesa == arvore->mesa)
    return arvore;
}

void acrescentaItem(t_no *arvore, t_comanda *comanda)
{
  if(!arvore->comanda)
  {
    arvore->comanda = comanda;
  }
  else
  {
    while(arvore->comanda->prox)
    {
      arvore->comanda = arvore->comanda->prox;
    }
    arvore->comanda->prox = comanda;
  }
}

void mostrarComanda(t_no *mesa){
  float total_comanda=0;

  for (;mesa->comanda;mesa->comanda=mesa->comanda->prox){
    printf("Item: %s \nQuantidade: %i \nTotal: %.2f \n", mesa->comanda->item, mesa->comanda->quantidade, (mesa->comanda->quantidade)*(mesa->comanda->valor));
    total_comanda=total_comanda + ((mesa->comanda->quantidade)*(mesa->comanda->valor));
  }

  printf("Total da comanda: %.2f\n ", total_comanda);
}

int menu(){

  int opc;
  printf("1.Inserir mesa \n");
  printf("2.Inserir item da comanda \n");
  printf("3.Fechar comanda \n");
  printf("4.Sair \n\n");
  scanf("%d", &opc);
  return opc;

}



