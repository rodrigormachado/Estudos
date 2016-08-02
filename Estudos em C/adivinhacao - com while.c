#include<stdio.h>

int main(){
    printf("*************************************\n");
    printf("* Bem vindo ao jogo de adivinhacao! *\n");
    printf("*************************************\n");
    printf("\n");

    int numerosecreto = 25;
    int chute;
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
       }
    printf("Fim de jogo!\n");
    }
