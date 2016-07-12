algoritmo "semnome"
// Função :
// Autor :
// Data : 20/06/2016
// Seção de Declarações
var
nome: vetor[1..4] de caractere
n1: vetor[1..4] de real
n2: vetor[1..4] de real
media: vetor[1..4] de real
sm, mt:real
i,tot: inteiro
inicio
para i <- 1 ate 4 faca
   Escreval("ALUNO", i)
   Escreva("Nome: ")
   Leia(nome[i])
   Escreva("Primeira nota: ")
   leia(n1[i])
   Escreva("Segunda nota: ")
   leia(n2[i])
   media[i] <- (n1[i]+n2[i])/2
   sm <- sm + media[i]
fimpara
mt <- sm/4
limpatela
Escreval("LISTAGEM DE ALUNOS")
Escreval("------------------")
para i<- 1 ate 4 faca
   escreval(nome[i]:10, media[i])
   se (media[i] > mt) entao
      tot <- tot + 1
   fimse
fimpara
Escreval("Ao todo temos", tot, " alunos acima da media da turma que eh: ", mt)
fimalgoritmo
