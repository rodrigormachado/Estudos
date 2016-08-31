#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<time.h>
#include "funções.h"

char palavrasecreta[20];
char chutes[26];
int chutesdados = 0;

int enforcou(){
    int erros = 0;

    int i;
    for (i = 0; i < chutesdados; i ++){
        int existe = 0;

        int j;
        for(j = 0; j < strlen(palavrasecreta); j++){
            if(chutes[i] == palavrasecreta[j]){
                existe = 1;
                break;
            }
        }
        if(!existe){
            erros++;
        }
    }
    return erros >= 5;
}

int ganhou(){
    int i;
    for (i = 0; i < strlen(palavrasecreta); i++){
        if(!jachutou(palavrasecreta[i])){
            return 0;
        }
    }
    return 1;
}

void abertura(){
    printf("/**************************/\n");
    printf("/*      JOGO DA FORCA    */\n");
    printf("/************************/\n\n");
}

void chuta(){
    char chute;
    printf("Que letra deseja chutar: ");
    scanf(" %c", &chute);

    chutes[chutesdados] = chute;
    chutesdados++;
}

int jachutou(char letra){
    int achou = 0;
    int j;
    for(j = 0; j < chutesdados; j++){
        if(chutes[j] == letra){
            achou = 1;
            break;
        }
    }
    return achou;
}

void desenhaforca(){
    printf("Voce ja deu %d chute(s)\n", chutesdados);

    int i;
    for(i = 0; i < strlen(palavrasecreta); i++){
        if(jachutou(palavrasecreta[i])){
            printf("%c ", palavrasecreta[i]);
        } else {
            printf("_ ");
        }
    }
    printf("\n");
}

void escolhepalavra(){
    FILE *f;

    f = fopen("palavras.txt","r");
    if(f == 0){
        printf("Banco de dados de palavras nao disponivel\n\n");
        exit(1);
    }
    int qtddepalavras;
    fscanf(f, "%d", &qtddepalavras);

    srand(time(0));
    int randomico = rand() % qtddepalavras;

    int i;
    for (i = 0; i <= randomico; i++){
        fscanf(f, "%s", palavrasecreta);
    }
    fclose(f);
}

int main(){

    abertura();
    escolhepalavra();

    do{
        desenhaforca();
        chuta();

    }while(!ganhou() && !enforcou());
}
