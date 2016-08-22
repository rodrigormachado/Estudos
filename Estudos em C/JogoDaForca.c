#include<stdio.h>
#include<stdlib.h>
#include<string.h>

int main(){

    char palavrasecreta[20];

    sprintf(palavrasecreta, "MELANCIA");
    int acertou = 0;
    int enforcou = 0;

    char chutes[26];
    int tentativas = 0;

    do{
        int i;
        for(i = 0; i < strlen(palavrasecreta); i++){

            int achou = 0;

        int j;
        for(j = 0; j < tentativas; j++){
            if (chutes[j] == palavrasecreta[i]){
                achou = 1;
                break;
            }
        }
        if (achou){
            printf("%c ", palavrasecreta[i]);
        } else {
            printf("_ ");
        }
    }
    printf("\n");

    char chute;
    printf("Que letra deseja chutar: ");
    scanf(" %c", &chute);

    chutes[tentativas] = chute;
    tentativas++;

    }while(!acertou && !enforcou);
}
