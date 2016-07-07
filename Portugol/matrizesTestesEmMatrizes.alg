algoritmo "testesEmMatrizes"
// Função :
// Autor :
// Data : 29/06/2016
// Seção de Declarações 
var
m: vetor[1..4, 1..4] de inteiro
l,c,sDP,p2L,mai3C: inteiro
inicio
    p2L <- 1
    para l <- 1 ate 4 faca
        para c <- 1 ate 4 faca
            escreva("Digite os valores das posicoes", l,",", c,": ")
            leia(m[l,c])

            se (l = c) entao
               sDP <- sDP + m[l,c]
            fimse

            se (l = 2) entao
               p2L <- p2L * m[l,c]
            fimse
            
            se (m[l,3] > mai3C) entao
                mai3C <- m[l,3]
            fimse
        fimpara
    fimpara
    
    para l <- 1 ate 4 faca
        para c <- 1 ate 4 faca
           escreva(m[l,c])
        fimpara
        escreval()
    fimpara
    
    escreval("A soma dos valores da diagonal principal eh: ", sDP)
    escreval("A soma dos valores da segunda linha: ", p2L)
    escreva("O maior valor da terceira coluna eh: ", mai3C)
fimalgoritmo
