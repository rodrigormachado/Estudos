#include<stdio.h>
#include<math.h>

int potencia(int a, int b){
    return pow(a,b);
}

int main(){
    int a, b, pot;

    printf("Digite o numero que representara a base: ");
    scanf("%d", &a);
    printf("Digite o numero que representara a potencia: ");
    scanf("%d", &b);
    printf("\n");

    pot = potencia(a,b);

    printf("O valor da potenciacao de %d elevado a %d eh: %d", a, b, pot);
    printf("\n");

}
