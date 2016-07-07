algoritmo "semnome"
// Função :
// Autor :
// Data : 22/06/2016
// Seção de Declarações
var
gab: vetor[1..5] de caractere
resp: vetor[1..5] de caractere
aluno: vetor[1..3] de caractere
nota: vetor[1..3] de inteiro
i,j,k,somaresp,aux: inteiro
media:real
inicio
Escreval("PASSO 1 - Cadastro de Gabarito")
Escreval("-------------------------------")

para i <- 1 ate 5 faca
   Escreva("Questao", i ,": ")
   leia(gab[i])
fimpara
limpatela

para j <- 1 ate 3 faca
   Escreval("----------------------")
   Escreval("Aluno", j)
   Escreval("----------------------")
   Escreva("Nome: ")
   leia(aluno[j])
   Escreval("RESPOSTAS DADAS")

   para k <- 1 ate 5 faca
      Escreva("Questao ",k, ": ")
      leia(resp[k])
      se (resp[k] = gab[k]) entao
         somaresp <- somaresp + 2
      fimse
   fimpara
   
   nota[j] <- somaresp
   somaresp <- 0
   limpatela
   aux <- aux + nota[j]
   media <- (aux/3)

fimpara

Escreval("NOTAS FINAIS")
Escreval("-----------------------")
para j <- 1 ate 3 faca
   Escreval(aluno[j]:10, nota[j]:2:1)
fimpara
Escreval("-----------------------")
Escreva("Media da Turma: ", media:2:1)
Escreval("")
fimalgoritmo
