#include<stdio.h>
#include<stdlib.h>
#include<time.h>

int main(){
    int limsup;
    int aux = 1;
    do{
    printf("*************************************\n");
    printf("* Bem vindo ao jogo de adivinhacao! *\n");
    printf("*************************************\n");
    printf("\n");

    printf("Digite o limite superior: ");
    scanf("%d", &limsup);

    srand(time(0));
    int numerosecreto = rand() % limsup;
    int chute;
    double pontos = 1000;
    int nivel;
    int totaldetentativas;

    printf("Qual o nivel de dificuldade?\n");
    printf("(1)Facil (2)Medio (3)Dificil\n\n");
    printf("Escolha: ");
    scanf("%d", &nivel);
    printf("\n");

    switch(nivel){
    case 1:
        totaldetentativas = 20;
        break;
    case 2:
        totaldetentativas = 15;
        break;
    default:
        totaldetentativas = 6;
        break;
    }

    int i;
    for(i = 1; i <= totaldetentativas; i++){
            int ultimochutado = chute;
            printf("Tentativa %d de %d\n", i, totaldetentativas);
            printf("Digite o seu chute: ");
            scanf("%d", &chute);

            if(chute < 0){
                printf("Voce nao pode chutar numeros negativos!\n");
                printf("\n");
                i--;
                continue;
            }
            if(chute == ultimochutado){
                printf("Voce ja digitou esse numero! Tente novamente\n");
                printf("\n");
                i--;
                continue;
            }

        int maior = (chute > numerosecreto);

        if(chute == numerosecreto){
            printf("Parabens, voce acertou!\n");
            break;
        } else if(maior){
            printf("O numero digitado eh maior do que o numero secreto!\n");
            printf("\n");
        } else {
            printf("O numero digitado eh menor do que o numero secreto!\n");
            printf("\n");
          }
        double pontosperdidos = abs(chute - numerosecreto)/2.0;
        pontos = pontos - pontosperdidos;
    }
    if(chute != numerosecreto){
        printf("Voce perdeu. O numero secreto era: %d\n", numerosecreto);
        printf("Voce nao pontuou.");
        printf("\n\n");
    }else{
        printf("Voce fez %.2f pontos\n", pontos);
        printf("Fim de jogo!\n");
        printf("\n");
    }
    printf("Deseja jogar de novo? 1 - Sim/0 - Nao -> ");
    scanf("%d", &aux);
    printf("\n");
    }while(aux == 1);
    printf("Jogo encerrado");
}
