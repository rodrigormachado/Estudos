algoritmo "semnome"
// Função :
// Autor :
// Data : 29/06/2016
// Seção de Declarações 
var
mat: vetor[1..4, 1..4] de inteiro
l,c: inteiro
inicio
    para l <- 1 ate 4 faca
       para c <- 1 ate 4 faca
           se (l = c) entao
              mat[l,c] <- 1
           senao
              mat[l,c] <- 0
           fimse
       fimpara
    fimpara
    
    para l <- 1 ate 4 faca
       para c <- 1 ate 4 faca
           escreva(mat[l,c]:3)
       fimpara
       escreval()
    fimpara
fimalgoritmo
