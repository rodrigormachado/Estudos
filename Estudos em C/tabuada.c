#include<stdio.h>

int main(){
    int num,i;
    int tab = 0;
    printf("Digite um numero para ver sua tabuada: ");
    scanf("%d", &num);

    for(i = 1; i <= 10; i++){
        tab = (num * i);
        printf("%d x %d = %d\n", num, i, tab);
    }
}
