#include<stdio.h>

int main(){
    int num, i, aux;
    aux = 0;

    printf("Digite um numero: ");
    scanf("%d", &num);

    for (i = 0; i <= num; i += 2){
           aux = aux + i;
    }
    printf("A soma dos numeros pares eh: %d", aux);
}
