algoritmo "semnome"
// Função :
// Autor :
// Data : 28/06/2016
// Seção de Declarações
var
b: vetor[1..10] de caractere
cad,c,i: inteiro
r: caractere

inicio
repita
   limpatela
   para c <- 1 ate 10 faca
      se (b[c] = "") entao
         escreva("[ B", c, " ]")
      senao
         escreva("[ --- ]")
      fimse
   fimpara
   escreval()
   Escreval("-------------------------------------------------------------------------")

   Escreva("Reservar a cadeira: B")
   leia(cad)
   se (b[cad] = "") entao
      b[cad] <- "X"
      escreval("Assento B",cad," reservado com sucesso!")
   senao
      escreval("ERRO: Lugar Ocupado!")
   fimse
   Escreva("Quer reservar outro assento? [S/N]")
   leia(r)
ate (r = "N")
para i <- 1 ate 10 faca
     se (b[i] = "X") entao
       escreval("Os assentos reservados sao: B", i)
     fimse
fimpara
fimalgoritmo
