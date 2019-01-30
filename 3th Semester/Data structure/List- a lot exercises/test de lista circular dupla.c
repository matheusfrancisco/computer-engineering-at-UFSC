#include <stdio.h>
#include <stdlib.h>
#include <conio.h>

struct aluno{
	int RA;
	struct aluno *prox;
	struct aluno *ante;
};
typedef struct aluno Novo_Aluno;
Novo_Aluno *primeiro, *novo, *atual, *ultima;

void menu();
void Novo_Contato();
void Exibir_Contatos();
void Remover_Contato();
void Exibir_Contrario();

int main (){
	primeiro=(Novo_Aluno*) NULL;
	while(1) menu();
return 0;
}
void menu (){
	system("cls");
	printf("Digite a opcao desejada: \n");
	printf("Digite 'N' para novo cadastro \n");
	printf("Digite 'E' para exibir cadastros \n");
	printf("Digite 'R' para remover cadastro\n");
	printf ("Digite 'A' para exibir ao contrario\n");
	switch(getch())
	{
		case 'N':
		{
			Novo_Contato(); break;
		}
		case 'E':
		{
			Exibir_Contatos(); break;
		}
		case 'R':
		{
			Remover_Contato(); break;
		}
		case 'A':
		{
			Exibir_Contrario();break;
		}
		case 27:
		{
			exit(1);
		}
	}
}
void Novo_Contato()
{
	novo=(Novo_Aluno*)malloc(sizeof(Novo_Aluno));
	if (primeiro == (Novo_Aluno*) NULL)
	{
		if (primeiro == NULL) {
   novo->ant = novo;
   novo->prox = novo;
}
else
{
   novo->prox = primeiro;
   novo->ant = primeiro->ant;
   primeiro->ant = novo;
   novo->ant->prox  = novo;
}
   primeiro = novo;
   }
}

void Exibir_Contatos()
{
	system("cls");
	puts("Exibir Cadastros\n");
	if(primeiro == (Novo_Aluno*) NULL )
	{
		puts("Lista Vazia");
		system("pause");
		return;
	}
	atual=primeiro;
	do{
		printf("\n%d",atual->RA);
		printf("\nEnd_atual%u",atual);
		atual=atual->prox;
	}while(atual != primeiro );
	printf ("\n\n");
	system("pause");
}
void Remover_Contato()
{
	system("cls");
	puts("Contato Removido\n\n");
	if(primeiro == (Novo_Aluno*) NULL )
	{
		puts("Lista Vazia");
		system("pause");
		return;
	}
	else
	{
		atual=primeiro;
		if (atual->prox == primeiro)
		{
			primeiro = (Novo_Aluno*) NULL;
			free (atual);
		}
		else
		{
			while(atual->prox != primeiro )
			{
				if ( (atual->prox)->prox == primeiro )
				{
					free(atual->prox);
					atual->prox = primeiro;
					break;
				}
				atual=atual->prox;
			}
		}
	}
}
void Exibir_Contrario()
{
	int i=0;
	system("cls");
	puts("Exibir Cadastros ao Contrario\n");
	if(primeiro == (Novo_Aluno*) NULL )
	{
		puts("Lista Vazia");
		system("pause");
		return;
	}
	atual=primeiro;
	while(atual->prox != primeiro )
	{
			atual=atual->prox;
	}
	ultima=atual;
	do{
		printf("\n%d",atual->RA);
		printf("\nEnd_atual%u",atual);
		atual=atual->ante;
		i++;
	}while(atual->ante != ultima );
	printf("\n%d",atual->RA);
	printf("\nEnd_atual%u",atual);
	printf ("\n\n");
	system("pause");
}
