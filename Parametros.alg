Algoritmo "Uso de procedimentos"

Var
// Seção de Declarações das variáveis 
x,y:inteiro
//Paramentros como valor
//os valores do procedimento nao sao passados para as variaveis globais
procedimento soma (a,b:inteiro)
inicio
      a <- a + 1
      b <- b + 2
      Escreval("Valor de x = ",x)
      Escreval("Valor de y = ",y)
      Escreval("Valor de x + 1 = A = ",a)
      Escreval("Valor de y + 2 = B = ",b)
      Escreval("A soma entre de a e b = ",a+b)
fimprocedimento

//paramentros como referencia...
//Os valores nodificados no procedimento sao passados para as variaveis globais
procedimento somaR (var a,b:inteiro)
inicio
      a <- a + 1
      b <- b + 2
      Escreval("Valor de x = ",x)
      Escreval("Valor de y = ",y)
      Escreval("Valor de x + 1 = A = ",a)
      Escreval("Valor de y + 2 = B = ",b)
      Escreval("A soma entre de a e b = ",a+b)
fimprocedimento

//inicio do algoritimo, F8 para ir passo a passo
Inicio
x <- 2
y <- 5
escreval("Procedimento com parametros por valor:")
soma(x,y)
escreval ("O valor de x = ",x)
escreval ("O valor de y = ",y)
escreval("___________________________________________________")
escreval("Procedimento com parametros por referencia:")
somaR(x,y)
escreval ("O valor de x = ",x)
escreval ("O valor de y = ",y)

Fimalgoritmo