algoritmo "semnome"
// Função :
// Autor :
// Data : 07/06/2016
// Seção de Declarações 
var
    ano ,nasc, idade: Inteiro
inicio
      Escreva("Em que ano estamos? ")
      Leia(ano)
      Escreva("Em que ano voce nasceu? ")
      Leia(nasc)
      idade <- ano - nasc
      Escreva("Em", ano, " voce tera ", idade, " anos ")
      se (idade >= 21) entao
         Escreval("e voce ja tera atingido a maioridade")
      senao
           Escreva("e ainda nao atingiu a maioridade")
      fimse
fimalgoritmo
