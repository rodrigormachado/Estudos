#include<stdio.h>

int main(){
    int fat,num,i;
    printf("Digite o numero para saber seu fatorial(!): ");
    scanf("%d", &num);
    fat = 1;

    for(i = num; i > 1; i--){
        fat = (fat * i);
    }
    printf("O fatorial de %d eh: %d\n", num, fat);
}
