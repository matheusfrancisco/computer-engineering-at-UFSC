/*
Rede Neural Perceptron
*/

#include <stdio.h>
#include <stdlib.h>

#define TX_APRENDIZADO 1

int cj_treinamento[4][3] = {{0,0,0},  // Bach
                            {0,1,0},  // Bethoven
                            {1,0,1},  // Einstein
                            {1,1,1}}; // Keppler

int f_degrau(double net);
double f_net(double w[3], int entradas[3]);
int erro(int desejado, int saida);
void regra_delta(double *w, int erro, int entrada);
void treinamento(int epocas, double w[3]);
void inicializa_sinapses(double w[3]);

int main()
{
  int opcao, epocas;
  double w[3];
  int entradas[3];

  do {
    printf("************************************************\n");
    printf("Rede Neural Mega Power Perceptron              *\n");
    printf("************************************************\n\n");
    printf("O que voce quer fazer?\n");
    printf("1.Treinar a rede?\n");
    printf("2.Usar a rede (treine antes!!!)?\n");
    printf("3.Sair?\n");
    printf("4.Ficar somente olhando?\n");
    printf("Resposta: ");
    scanf("%d", &opcao);


    switch (opcao) {
      case 1: printf("Por quantas epocas? ");
              scanf("%d", &epocas);
              treinamento(epocas, w);
              break;

      case 2: entradas[0] = 1;
              printf("Valor da entrada 1? ");
              scanf("%d", &entradas[1]);
              printf("Valor da entrada 2? ");
              scanf("%d", &entradas[2]);
              printf("\n\nA saida da RNA eh: %d\n\n\n", f_degrau(f_net(w, entradas)));
              break;

      case 3: printf("Tchau!!");
              exit(0);

      case 4: printf("Entao fique ... bobinho\n");
              break;

      default: printf("Esta opcao n�o existe!");

    }
  } while (opcao != 3);

  return 0;
}

int f_degrau(double net)
{
  if (net <= 0) return 0;
  return 1;
}

double f_net(double w[3], int entradas[3])
{
  double net = 0.0;
  int i;

  // Calcula valor de net
  for (i = 0; i < 3; i++) {
    net += w[i] * entradas[i];
  }

  return net;
}

int erro(int desejado, int saida)
{
  return desejado - saida;
}

void regra_delta(double *w, int erro, int entrada)
{
  *w = *w + TX_APRENDIZADO * erro * entrada;
}

void treinamento(int epocas, double w[3])
{
  int i, j, entradas[3];
  double vlr_net;
  int vlr_erro;

  entradas[0] = 1;  // Valor de bias

  // Zera pesos sin�pticos
  inicializa_sinapses(w);

  // Treinar a rede por i epocas (a rede vai aprendendo)
  for (i = 0; i < epocas; i++) {
    // Treina a rede com todos os dados do treinamento
    // Temos 4 conjuntos de treinamento (2 entradas e uma sa�da)
    for (j = 0; j < 4; j++) {
      entradas[1] = cj_treinamento[j][0];
      entradas[2] = cj_treinamento[j][1];
      vlr_net   = f_net(w, entradas);
      vlr_erro  = erro(cj_treinamento[j][2], f_degrau(vlr_net));
      if (vlr_erro != 0) {
        regra_delta(&w[0], vlr_erro, entradas[0]); // Bias
        regra_delta(&w[1], vlr_erro, entradas[1]); // Primeira entrada
        regra_delta(&w[2], vlr_erro, entradas[2]); // Segunda entrada
      }
    }
  }
}

void inicializa_sinapses(double w[3])
{
  int i;
  for (i = 0; i < 3; i++)
    w[i] = 0.0;
}
