algoritmo "semnome"
// Função :
// Autor :
// Data : 29/06/2016
// Seção de Declarações
var
mat: vetor[1..3, 1..3] de inteiro
l,c,totpar:inteiro

procedimento mostrapares()
inicio
para l <- 1 ate 3 faca
   para c <- 1 ate 3 faca
      se (mat[l,c] % 2 = 0) entao
         escreva("{", mat[l,c]:2, "}")
         totpar <- totpar + 1
      senao
         escreva(mat[l,c])
      fimse
   fimpara
   escreval()
fimpara
Escreval()
Escreva("Ao todo foram digitados ", totpar," valores pares")
Escreval()
fimprocedimento

inicio
para l <- 1 ate 3 faca
   para c <- 1 ate 3 faca
      Escreva("Digite os valores na posicao", l,",", c,": ")
      leia(mat[l,c])
   fimpara
fimpara
Escreval()
Escreval("    MATRIZ:   ")
Escreval("--------------")

mostrapares()
fimalgoritmo
