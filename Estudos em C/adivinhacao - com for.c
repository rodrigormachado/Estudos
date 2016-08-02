#include<stdio.h>
#define NUMERO_DE_TENTATIVAS 3

int main(){
    printf("*************************************\n");
    printf("* Bem vindo ao jogo de adivinhacao! *\n");
    printf("*************************************\n");
    printf("\n");

    int numerosecreto = 25;
    int chute;

    int i;
    for(i = 1; i <= NUMERO_DE_TENTATIVAS; i++){
        printf("Digite o seu %do. chute: ", i);
        scanf("%d", &chute);
        printf("\n");
        printf("Seu %do. chute foi %d\n", i, chute);

        if(chute < 0){
            printf("Voce nao pode chutar numeros negativos!\n");
            printf("\n");
            i--;
            continue;
        }

        int acertou = (chute == numerosecreto);
        int maior = (chute > numerosecreto);

        if(acertou){
            printf("Parabens, voce acertou!\n");
            break;
        } else if(maior){
            printf("O numero digitado eh maior do que o numero secreto!\n");
            printf("\n");
        } else{
            printf("O numero digitado eh menor do que o numero secreto!\n");
            printf("\n");
          }
       }
    printf("Fim de jogo!\n");
    }
