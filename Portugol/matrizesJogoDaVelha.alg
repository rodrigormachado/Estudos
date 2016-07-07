algoritmo "semnome"
// Função :
// Autor :
// Data : 04/07/2016
// Seção de Declarações
var
mat: vetor [1..3, 1..3] de caractere
l,c,cont,jog: inteiro
simb: caractere

procedimento jogoDaVelha()
inicio
para l <- 1 ate 3 faca
   escreval("-----------")
   para c <- 1 ate 3 faca
      escreva("|", mat[l,c]:3)
   fimpara
   escreval()
fimpara
escreval("-----------")
fimprocedimento

funcao numeroEntre1e3(simb:caractere):inteiro
var num: inteiro
inicio
num <- 0
enquanto (num > 3) ou (num < 1) faca
   se(simb = "l") entao
      Escreva("Digite o numero da linha: ")
      leia(num)
   fimse
   se(simb = "c") entao
      Escreva("Digite o numero da coluna: ")
      leia(num)
   fimse
fimenquanto
retorne num
fimfuncao

funcao verificaLinha():logico
var x: logico
l: inteiro
inicio
x <- falso
para l <- 1 ate 3 faca
   se ((mat[l,1] <> "") e (mat[l,2] <> "") e (mat[l,3] <> "")) entao
      se (mat[l,1] = mat[l,2]) e (mat[l,2] = mat[l,3]) entao
         x <- verdadeiro
         escreva("Temos um Vencedor!!!")
      fimse
   fimse
fimpara
retorne x
fimfuncao

funcao verificaColuna():logico
var x: logico
c: inteiro
inicio
x <- falso
para c <- 1 ate 3 faca
   se ((mat[1,c] <> "") e (mat[2,c] <> "") e (mat[3,c] <> "")) entao
      se (mat[1,c] = mat[2,c]) e (mat[2,c] = mat[3,c]) entao
         x <- verdadeiro
         escreval("Temos um Vencedor!!!")
      fimse
   fimse
fimpara
retorne x
fimfuncao

funcao verificaDiagonal():logico
var x: logico
l: inteiro
inicio
x <- falso
se ((mat[1,1] <> "") e (mat[2,2] <> "") e (mat[3,3] <> "")) entao
   se (mat[1,1] = mat[2,2]) e (mat[2,2] = mat[3,3]) entao
      x <- verdadeiro
      escreval("Temos um Vencedor!!!")
   fimse
fimse
retorne x
fimfuncao

funcao verificaDiagonalInversa():logico
var x: logico
l: inteiro
inicio
x <- falso
se ((mat[1,3] <> "") e (mat[2,2] <> "") e (mat[3,1] <> "")) entao
   se (mat[1,3] = mat[2,2]) e (mat[2,2] = mat[3,1]) entao
      x <- verdadeiro
      escreval("Temos um Vencedor!!!")
   fimse
fimse
retorne x
fimfuncao

inicio
simb <- "X"
enquanto (jog <9) faca
   limpatela
   jogoDaVelha()
   l <- numeroEntre1e3("l")
   c <- numeroEntre1e3("c")
   se((mat[l,c] <> "X") e (mat[l,c] <> "O")) entao
      mat[l,c] <- simb
      jog <- jog + 1
      se ((simb = "X") e (simb <> "O")) entao
         simb <- "O"
      senao
         simb <- "X"
      fimse
   fimse
   se verificaLinha() entao
      jog <- 10
   fimse
   se verificaColuna() entao
      jog <- 10
   fimse
   se verificaDiagonal() entao
      jog <- 10
   fimse
   se verificaDiagonalInversa() entao
      jog <- 10
   fimse
fimenquanto
jogoDaVelha()
fimalgoritmo
