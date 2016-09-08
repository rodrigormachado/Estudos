#include<stdio.h>

int numeroprimo(){
    int primo, n, i, aux;
    primo = 1;
    aux = 1;

    do{
        printf("Digite um numero: ");
        scanf("%d", &n);

        for(i = 2; i < n; i++){
            if(n % i == 0){
                primo = 0;
            }
        }
        if(primo){
            printf("O numero %d eh primo!", n);
            printf("\n\n");
        } else {
            printf("O numero %d nao eh primo.", n);
            printf("\n\n");
        }
    printf("Deseja testar outro numero? 1 - Sim/0 - Nao -> ");
    scanf("%d", &aux);
    printf("\n");
    }while(aux == 1);
    printf("Ate a proxima :)");
}

int main(){

    numeroprimo();
}
