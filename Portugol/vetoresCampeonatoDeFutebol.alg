algoritmo "semnome"
// Função :
// Autor :
// Data : 22/06/2016
// Seção de Declarações 
var
i,j: inteiro
time: vetor[1..3] de caractere

inicio
      Escreval("------------------")
      Escreval("CAMPEONATO FUTEBOL")
      Escreval("------------------")

      para i <- 1 ate 3 faca
          Escreva("Nome do ", i," o. time: ")
          leia(time[i])
      fimpara
      limpatela
      
      Escreval("------------------")
      Escreval("TABELA DE PARTIDAS")
      Escreval("------------------")

      para i <- 1 ate 3 faca
         para j <- 1 ate 3 faca
            se(time[i] <> time[j]) entao
               escreval(time[i]:8, " [] x [] ", time[j])
            fimse
         fimpara
     fimpara
fimalgoritmo
