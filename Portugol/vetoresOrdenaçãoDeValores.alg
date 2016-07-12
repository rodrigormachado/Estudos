algoritmo "semnome"
// Função :
// Autor :
// Data : 21/06/2016
// Seção de Declarações 
var
   vet: vetor[1..10] de inteiro
   i,j,aux: inteiro
inicio
    Para i <- 1 ate 10 faca
       Escreva("Digite um valor: ")
       leia(vet[i])
    fimpara
    
    para i <- 1 ate 9 faca
       para j <- i+1 ate 10 faca
          se (vet[i] > vet[j]) entao
             aux <- vet[i]
             vet[i] <- vet[j]
             vet[j] <- aux
          fimse
       fimpara
    fimpara
    
    para i <- 1 ate 10 faca
       Escreva("{", vet[i], "}")
    fimpara
fimalgoritmo
