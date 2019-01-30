#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct Process_ {
    int id; /* 1 <= id <= 5000 */
    int time; /* 1 <= time <= 100 */
    int priority; /* 1 <= priority <= 1000 */
};
typedef struct Process_ Process;


int Insere(Process v[], Process x, int f){
    int n = f;
    Process aux;
    v[f] = x;
    while (f > 1 && v[f/2].priority <= v[f].priority){
        aux = v[f];
        v[f] = v[f/2];
        v[f/2] = aux;
        f = f/2;
    }



    /*{
        int i;
        printf("\nInsere id%d %d %d\n", x.id, x.time, x.priority);
        for (i = 1; i < f + 1; i++)
            printf("id%d %d %d\n", v[i].id, v[i].time, v[i].priority);
    }*/


    return n + 1;
}
/*
int Delete(Process *Heap, int pos, int t) {
    while (pos < t) {
        int IMai;
        if (pos * 2 < t) {
            if (pos * 2 + 1 < t && Heap[pos * 2 + 1].priority > Heap[pos * 2].priority)
                IMai = pos * 2 + 1;
            else{
                IMai = pos * 2;
                if (IMai == t - 2) {
                    Process Aux;
                    Aux = Heap[IMai];
                    Heap[IMai] = Heap[IMai + 1];
                    Heap[IMai + 1] = Aux;
                    IMai += 1;
                }
            }
            Heap[pos] = Heap[IMai];
        } else
            return t - 1;
        pos = IMai;
    }
    return t - 1;
}
*/

int Delete(Process *Heap, int pos, int t) {
    /* segue o caminho do maior sempre subindo-o */
    while (pos < t) {
        int IMai;
        if (pos * 2 < t) {
            if (pos * 2 + 1 < t) {
                if (Heap[pos * 2 + 1].priority > Heap[pos * 2].priority) {
                    if ((pos * 2 + 1) * 2 < t)
                        IMai = pos * 2 + 1;
                    else {
                        if ((pos * 2) * 2 < t) { /* Só inverte quando o filho a esquerda teria um ou dois filhos para serem subidos na árvore */
                            Process aux;
                            aux = Heap[(pos * 2 + 1) - 1];
                            Heap[(pos * 2 + 1) - 1] = Heap[pos * 2 + 1];
                            Heap[pos * 2 + 1] = aux;
                            IMai = pos * 2;
                        } else
                            IMai = pos * 2 + 1;
                    }
                } else {
                    /*só se for a última linha*/
                    if (pos * 2 == t - 2) {
                        Process aux;
                        aux = Heap[pos * 2];
                        Heap[pos * 2] = Heap[pos * 2 + 1];
                        Heap[pos * 2 + 1] = aux;/* */
                        IMai = pos * 2 + 1;
                    } else
                        IMai = pos * 2;
                }
            } else {
                IMai = pos * 2;
            }
            Heap[pos] = Heap[IMai];
        } else {
            /*for (pos /= 2; pos < t; pos++)
                Heap[pos] = Heap[pos + 1];*/
            return t - 1;
        }
        pos = IMai;
    }
    return t - 1;
}
int main() {
    int t = 1;
    Process Heap[5000], P, Exec; /* ver como vou declarar esse puto desse heap */
    int NL, i;
    scanf("%d", &NL);
    while (NL > 0) {
        /* recebendo os novos processos */
        int NP;
        char idAux[7];
        int *id, *time, *priority;
        scanf("%d", &NP);
        id = malloc(NP * sizeof(int));
        time = malloc(NP * sizeof(int));
        priority = malloc(NP * sizeof(int));
        for (i = 0; i < NP; i++) {
            scanf("%s", idAux);
            id[i] = atoi(idAux + 2);
        }
        for (i = 0; i < NP; i++) {
            scanf("%d", &time[i]);
        }
        for (i = 0; i < NP; i++) {
            scanf("%d", &priority[i]);
        }

        for (i = 0; i < NP; i++) {
            P.id = id[i];
            P.time = time[i];
            P.priority = priority[i];
            t = Insere(Heap, P, t);


            /*{
                int i;
                printf("\nInsere id%d %d %d %d\n", P.id, P.time, P.priority, t);
                for (i = 1; i < t; i++)
                    printf("id%d %d %d\n", Heap[i].id, Heap[i].time, Heap[i].priority);
            }*/



        }

        /* excluindo o processo da fila */
        if (t > 1) {
            Exec = Heap[1];
            t = Delete(Heap, 1, t);

            /*{
                int i;
                printf("\nDelete id%d %d\n", Exec.id, t);
                for (i = 1; i < t; i++)
                    printf("id%d %d %d\n", Heap[i].id, Heap[i].time, Heap[i].priority);
            }*/


            /* Atualizando o valor de tempo do processo em execuçao */
            Exec.time -= 50;
            printf("id%d\n", Exec.id);
            if (Exec.time > 0) {
                t = Insere(Heap, Exec, t);



                /*{
                    int i;
                    printf("\nInsere id%d %d %d %d\n", Exec.id, Exec.time, Exec.priority, t);
                    for (i = 1; i < t; i++)
                        printf("id%d %d %d\n", Heap[i].id, Heap[i].time, Heap[i].priority);
                }*/


            }

        }
        NL--;
    }
    for (i = 1; i < t; i++)
        printf("id%d %d %d\n", Heap[i].id, Heap[i].time, Heap[i].priority);
    return 0;
}
