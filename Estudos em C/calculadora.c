#include<stdio.h>

int main(){
    int a,b,operacao;
    int soma,sub,multi;
    double div;

    printf("Digite o primeiro numero: ");
    scanf("%d", &a);
    printf("Digite o segundo numero: ");
    scanf("%d", &b);
    printf("Escolha a operacao: ");
    scanf("%d", &operacao);

    switch(operacao){
    case 1:
        soma = a + b;
        printf("A soma entre %d e %d eh: %d", a, b, soma);
        break;
    case 2:
        sub = a - b;
        printf("A subtracao entre %d e %d eh: %d", a, b, sub);
        break;
    case 3:
        multi = a * b;
        printf("A multiplicacao entre %d e %d eh: %d", a, b, multi);
        break;
    case 4:
        div = (double)a / b;
        printf("A divisao entre %d e %d eh: %f", a, b, div);
        break;
    }
}
