#include<stdio.h>

int main(){
    int aux = 0;
    int i;
    for(i = 1; i <= 100; i++){
        aux = aux + i;
        printf("%d\n", aux);
    }
}
