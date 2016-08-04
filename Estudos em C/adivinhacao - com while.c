#include<stdio.h>
#include<stdlib.h>
#include<time.h>

int main(){
    printf("*************************************\n");
    printf("* Bem vindo ao jogo de adivinhacao! *\n");
    printf("*************************************\n");
    printf("\n");

    srand(time(0));
    int numerosecreto = rand() % 50;
    int chute;
    double pontos = 1000;
    int ganhou = 0;
    int tentativas = 1;

    while(ganhou != 1){
        printf("Digite o seu %do. chute: ", tentativas);
        scanf("%d", &chute);
        printf("Seu %do. chute foi %d\n", tentativas, chute);
        printf("\n");

        if(chute < 0){
            printf("Voce nao pode chutar numeros negativos!\n");
            printf("\n");
            continue;
        }

        int acertou = (chute == numerosecreto);
        int maior = (chute > numerosecreto);

        if(acertou){
            printf("Parabens, voce acertou!\n");
            ganhou = 1;
        } else if(maior){
            printf("O numero digitado eh maior do que o numero secreto!\n");
            printf("\n");
        } else{
            printf("O numero digitado eh menor do que o numero secreto!\n");
            printf("\n");
          }
        tentativas++;
        double pontosperdidos = abs(chute - numerosecreto)/2.0;
        pontos = pontos - pontosperdidos;
       }
    printf("Voce fez %.2f pontos\n", pontos);
    printf("Fim de jogo!\n");
    }
