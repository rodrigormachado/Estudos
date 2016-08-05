#include<stdio.h>

int main(){
    int a,b,c,aux;

    printf("Digite o primeiro numero: ");
    scanf("%d", &a);
    printf("Digite o segundo numero: ");
    scanf("%d", &b);
    printf("Digite o terceiro numero: ");
    scanf("%d", &c);

    if(b < a){
        aux = a;
        a = b;
        b = aux;
    }
    if(c < a){
        aux = a;
        a = c;
        c = aux;
    }
    if(c < b){
        aux = b;
        b = c;
        c = aux;
    }

    printf("Ordem crescente: %d %d %d", a, b, c);
}
