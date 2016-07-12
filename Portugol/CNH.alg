algoritmo "semnome"
// Função :
// Autor :
// Data : 07/06/2016
// Seção de Declarações
var
ano, ano_nasc, idade: Inteiro

procedimento menu()
inicio
Escreval("---------------------------")
Escreval("DEPARTAMENTO DE TRANSITO")
Escreval("---------------------------")
Escreva("Ano atual (aaaa): ")
Leia(ano)
Escreva("Ano de nascimento (aaaa): ")
Leia(ano_nasc)
fimprocedimento

procedimento menu2()
inicio
Se (idade < 18) entao
   Escreval("---------- STATUS ------------------")
   Escreval("IDADE: ",idade," anos")
   Escreval("Voce NAO esta apto a tirar a CNH.")
   Escreval("------------------------------------")
fimse
fimprocedimento

procedimento menu3()
inicio
se (idade > 18) entao
   Escreval("---------- STATUS ----------------")
   Escreval("IDADE: ",idade," anos")
   Escreval("Voce esta apoto a tirar a CNH.")
   Escreval("----------------------------------")
FimSe
fimprocedimento

inicio
menu()
idade <- ano - ano_nasc
menu2()
menu3()
fimalgoritmo
