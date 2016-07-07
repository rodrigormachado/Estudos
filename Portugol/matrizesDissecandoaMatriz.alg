algoritmo "dissecandoaMatriz"
// Função :
// Autor : Rodrigo Machado
// Data : 29/06/2016
// Seção de Declarações
var
mat: vetor[1..4, 1..4] de inteiro
l,c,opcao:inteiro

procedimento menu()
inicio
Escreval("MENU DE OPCOES")
Escreval("=====================")
Escreval("[1] Mostar a Matriz")
Escreval("[2] Diagonal Principal")
Escreval("[3] Triangulo Superior")
Escreval("[4] Triangulo Inferior")
Escreval("[5] Sair")
Escreva("===== OPCAO: ")
leia(opcao)
fimprocedimento

inicio
para l <- 1 ate 4 faca
   para c <- 1 ate 4 faca
      Escreva("Digite os valores das posicoes", l,",", c,": ")
      leia(mat[l,c])
   fimpara
fimpara

limpatela
repita
   menu()

   escolha opcao

   caso 1
      limpatela
      para l <- 1 ate 4 faca
         para c <- 1 ate 4 faca
            Escreva(mat[l,c]:4)
         fimpara
         escreval()
      fimpara

   caso 2
      limpatela
      para l <- 1 ate 4 faca
         para c <- 1 ate 4 faca
            se (l = c) entao
               Escreva(mat[l,c]:4)
            senao
               Escreva("":4)
            fimse
         fimpara
         escreval()
      fimpara

   caso 3
      limpatela
      para l <- 1 ate 4 faca
         para c <- 1 ate 4 faca
            se (l <> c) e (l < c) entao
              escreva(mat[l,c]:4)
            senao
              escreva("":4)
            fimse
         fimpara
         escreval()
      fimpara

   caso 4
      limpatela
      para l <- 2 ate 4 faca
         para c <- 1 ate l-1 faca
            Escreva(mat[l,c]:4)
         fimpara
         escreval()
      fimpara
   fimescolha

ate (opcao=5)
Escreva("Encerrando...")
fimalgoritmo
