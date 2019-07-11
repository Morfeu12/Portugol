Algoritmo "semnome"
// Disciplina  :  [Linguagem e Lógica de Programação] 
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 08/07/2019
Var
// Seção de Declarações das variáveis 
m:vetor[1..5, 1..5]de inteiro
mA:vetor[1..3, 1..3]de inteiro
l,c,i,somaL1,somaL2,somaL3,somaD,somaC1,somaC2,somaC3:inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
l <- 0
c <- 0
Escreval()
Escreval("Matriz Identidade")
Escreval("=================")
para l <- 1 ate 5 faca
     para c <- 1 ate 5 faca
          se (c = l) entao
             m[l,c] <- 1
          senao
             m[l,c] <- 0
          fimse
          escreva(m[l,c])
     fimpara
     escreval()
fimpara

Escreval()
Escreval("Matriz Aleatroria")
Escreval("=================")
para l <- 1 ate 3 faca
     para c <- 1 ate 3 faca
          leia(mA[l,c])
     fimpara
fimpara
somaL1 <- mA[1,1] + mA[1,2] + mA[1,3]
somaL2 <- mA[2,1] + mA[2,2] + mA[2,3]
somaL3 <- mA[3,1] + mA[3,2] + mA[3,3]
somaC1 <- mA[1,1] + mA[2,1] + mA[3,1]
somaC2 <- mA[1,2] + mA[2,2] + mA[3,2]
somaC3 <- mA[1,3] + mA[2,3] + mA[3,3]
somaD  <- mA[1,1] + mA[2,2] + mA[3,3]
Escreval()
Escreval("Matriz")
Escreval("=================")
para l <- 1 ate 3 faca
     para c <- 1 ate 3 faca
          escreva(mA[l,c]:6)
     fimpara
     se l = 1 entao
        Escreval(somaL1:6)
     fimse
     se l = 2 entao
        Escreval(somaL2:6)
     fimse
     se l = 3 entao
        Escreval(somaL3:6)
     fimse
fimpara
Escreva(somaC1:6)
Escreva(somaC2:6)
Escreva(somaC3:6)
Escreva(somaD :6)


Fimalgoritmo