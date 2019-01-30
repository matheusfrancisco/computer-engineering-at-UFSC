#include<stdio.h>
#include<string.h>

typedef struct consumo{
  char item[100];
  int quantidade;
  float valor;
  struct consumo *prox;
} t_cons;

typedef struct quarto{
  int numero;
  t_cons *lista;
  struct quarto *esq, *dir;
}t_quarto;

t_cons* CriaCelula(char item[100],int quantidade,float valor);
t_quarto* crianoh(int numero);
void insereNaArvore(t_quarto **arvore, t_quarto *novo);
void mostrarLista(t_cons *lista);
void mostrarPreOrdem(t_quarto *arvore);
void mostrarCelula(t_cons *lista);
t_quarto* localizarNoh(t_quarto *arvore, int numero);
void insereNaLista(t_cons **lista, t_cons *novo);
int menu();

int main(){
  t_quarto * quartos = NULL;
  t_quarto * qaux = NULL;
int aux;
int aucs;
char auxchar[100];
do{
switch(menu())
{
case 1: printf("\nnumero do quarto?");
        scanf("\n%d",&aux);
        insereNaArvore(&quartos,crianoh(aux));
        break;
case 2: printf("\nAdicionar consumo em qual quarto?");
        scanf("\n%d",&aux);
        if((qaux = localizarNoh(quartos,aux)))
        {

        printf("\nNome do item");
        fflush(stdin);
        gets(auxchar);

        printf("\nquantidade?");
        fflush(stdin);
        scanf("\n%d",&aux);

        printf("\nValor");
        scanf("\n%d",&aucs);

        insereNaLista(&quartos->lista,CriaCelula(auxchar,aux,aucs));


        }
        break;
case 3: mostrarPreOrdem(quartos);
        break;
case 4: printf("\nConsumo de que quarto?");
        scanf("\n%d",&aux);
        qaux = localizarNoh(quartos,aux);
        mostrarLista(quartos->lista);



}

}while(1);




return 0;
}
t_cons* CriaCelula(char item[100],int quantidade,float valor)
{
   t_cons* novo =(t_cons*)malloc(sizeof(t_cons));
   strcpy(novo->item,item);
   novo->quantidade = quantidade;
   novo->valor = valor;
   novo->prox = NULL;

   return novo;
}
t_quarto* crianoh(int numero)
{
  t_quarto* novo =(t_quarto*)malloc(sizeof(t_quarto));
  novo->numero = numero;
  novo->esq = NULL;
  novo->dir = NULL;
  novo->lista = NULL;

  return novo;
}

void insereNaArvore(t_quarto **arvore, t_quarto *novo)
{
  if(!*arvore)
  {
    *arvore = novo;
  }
  else if((*arvore)->numero < novo->numero)
  {
    insereNaArvore(&(*arvore)->esq, novo);
  }
  else if((*arvore)->numero > novo->numero)
  {
    insereNaArvore(&(*arvore)->dir, novo);
  }
}

void insereNaLista(t_cons **lista, t_cons *novo)
{
  t_cons *aux=*lista;

  if(!*lista)
    *lista = novo;
  else
  {
    while(aux->prox) aux = aux->prox;
    aux = novo;
  }
}

t_quarto* localizarNoh(t_quarto *arvore, int numero)
{
  if(!arvore){
    return NULL;
  }
  else{
    if(numero > arvore->numero)
      return localizarNoh(arvore->dir,numero);
    else{
      if(numero < arvore->numero)
        return localizarNoh(arvore->esq,numero);
    }
    if(numero == arvore->numero)
      return arvore;
  }

}

void mostrarCelula(t_cons *lista)
{
  printf("Item......: %s", lista->item);
  printf("Quantidade: %d", lista->quantidade);
  printf("Valor.....: %lf", lista->valor);
}

void mostrarPreOrdem(t_quarto *arvore)
{
  if(arvore){
    printf("\nNumber:%d",arvore->numero);
    mostrarPreOrdem(arvore->esq);
    mostrarPreOrdem(arvore->dir);
  }
}

void mostrarLista(t_cons *lista)
{
  t_cons *aux;
  while(aux){
    mostrarCelula(aux);
    aux = aux->prox;
  }
}

int menu()
{
  int opc;
printf("\n 1.Adicionar quarto");
printf("\n 2.Adicionar consumo");
printf("\n 3.Listar Quartos");
printf("\n 4.Listar Consumos");
scanf("\n%d",&opc);

return opc;


}
