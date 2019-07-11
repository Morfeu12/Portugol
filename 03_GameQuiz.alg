Algoritmo "Game Quiz"
// Curso  :  Algoritmos
// Professor   : Gustavo Guanabara
// Descrição   : Jogo Interativo - estudo de Lógica de Programação
// Autor(a)    : Omar Costa
// Data atual  : 03/07/2019
Var
// Seção de Declarações das variáveis 
nome: caractere
n1, n2, resultado, resposta: real
pontos:inteiro
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
Escreval("Escreva seu nome para comecar o jogo. ")
leia(nome)
Escreval("Bons estudos "+ nome + " !!!")
pontos <- 0
// Quiz de matematica
Escreval("-------------------------------------------------")
Escreval("Matematica - Quiz [Interativo]")
Escreval("-------------------------------------------------")
escreval("Para inicio, digite um numero qualquer: ")
leia(n1)
escreval("Numero registrado, preciso que digite mais um numero qualquer: ")
leia(n2)
se ((n1 <> 0) e (n2 <> 0)) entao
   escreval("Bom, quero ver se voce a bom em matematica...")
   // matematica soma
   escreva("Qual a soma entre ",n1," e ",n2,": ")
   leia(resposta)
   resultado <- (n1+n2)
   se (resposta = resultado) entao
             escreval("Parabens a resposta esta correta!!!!")
             pontos <- (pontos+1)
   senao
             escreval("Poxa! a resposta esta errada.")
   fimse
   //matematica subtracao
   escreva("Qual a subtracao entre ",n1," e ",n2,": ")
   leia(resposta)
   resultado <- (n1-n2)
   se (resposta = resultado) entao
             escreval("Parabens a resposta esta correta!!!!")
             pontos <- (pontos+1)
   senao
             escreval("Poxa! a resposta esta errada.")
   fimse
   //matematica multiplicacao
   escreva("Qual a multiplicacao entre ",n1," e ",n2,": ")
   leia(resposta)
   resultado <- (n1*n2)
   se (resposta = resultado) entao
             escreval("Parabens a resposta esta correta!!!!")
             pontos <- (pontos+2)
   senao
             escreval("Poxa! a resposta esta errada.")
   fimse
   //matematica divisao
   escreva("Qual a divisao entre ",n1," e ",n2,": ")
   leia(resposta)
   resultado <- (n1/n2)
   se (resposta = resultado) entao
             escreval("Parabens a resposta esta correta!!!!")
             pontos <- (pontos+2)
   senao
             escreval("Poxa! a resposta esta errada.")
   fimse
   //matematica exponencial
   escreva("Qual o expondecial entre ",n1," elevado a ",n2,": ")
   leia(resposta)
   resultado <-(n1^n2)
   se (resposta = resultado) entao
             escreval("Parabens a resposta esta correta!!!!")
             pontos <- (pontos+4)
   senao
             escreval("Poxa! a resposta esta errada.")
   fimse
   //matematica valor absoluto n1
   escreva("Qual o valor absoluto de -",n1,": ")
   leia(resposta)
   resultado <- (n1)
   se (resposta = resultado) entao
             escreval("Parabens a resposta esta correta!!!!")
             pontos <- (pontos+1)
   senao
             escreval("Poxa! a resposta esta errada.")
   fimse
   //matematica valor absoluto n2
   escreva("Qual o valor absoluto de -",n2,": ")
   leia(resposta)
   resultado <- (n2)
   se (resposta = resultado) entao
             escreval("Parabens a resposta esta correta!!!!")
             pontos <- (pontos+1)
   senao
             escreval("Poxa! a resposta esta errada.")
   fimse
   //matematica media
   escreva("Qual a media entre ",n1," e ",n2,": ")
   leia(resposta)
   resultado <- ((n1+n2)/2)
   se (resposta = resultado) entao
             escreval("Parabens a resposta esta correta!!!!")
             pontos <- (pontos+2)
   senao
             escreval("Poxa! a resposta esta errada.")
   fimse
   //matematica valor PI
   escreva("Qual o valor de PI? (4 casas decimais)")
   leia(resposta)
   resultado <- (3.1415)
   se (resposta = resultado) entao
             escreval("Parabens a resposta esta correta!!!!")
             pontos <- (pontos+3)
   senao
             escreval("Poxa! a resposta esta errada.")
   fimse
   //matematica multiplicacao e divisao
   escreva("Qual o valor de:",n1," vezes ",n2," dividido por ",n1,":")
   leia(resposta)
   resultado <- (n1*n2/n1)
   se (resposta = resultado) entao
             escreval("Parabens a resposta esta correta!!!!")
             pontos <- (pontos+3)
   senao
             escreval("Poxa! a resposta esta errada.")
   fimse
   //matematica raiz n1
   escreva("Qual a raiz quadrada de ",n1,":")
   leia(resposta)
   resultado <- (raizq(n1))
   se (resposta = resultado) entao
             escreval("Parabens a resposta esta correta!!!!")
             pontos <- (pontos+5)
   senao
             escreval("Poxa! a resposta esta errada.")
   fimse
   //matematica raiz n1
   escreva("Qual a parte inteira da raiz quadrada de ",n1,":")
   leia(resposta)
   resultado <- (int(raizq(n1)))
   se (resposta = resultado) entao
             escreval("Parabens a resposta esta correta!!!!")
             pontos <- (pontos+5)
   senao
             escreval("Poxa! a resposta esta errada.")
   fimse
   //matematica raiz n2
   escreva("Qual a raiz quadrada de ",n2,":")
   leia(resposta)
   resultado <- (raizq(n2))
   se (resposta = resultado) entao
             escreval("Parabens a resposta esta correta!!!!")
             pontos <- (pontos+5)
   senao
             escreval("Poxa! a resposta esta errada.")
   fimse
   //matematica raiz n1
   escreva("Qual a parte inteira da raiz quadrada de ",n2,":")
   leia(resposta)
   resultado <- (int(raizq(n2)))
   se (resposta = resultado) entao
             escreval("Parabens a resposta esta correta!!!!")
             pontos <- (pontos+5)
   senao
             escreval("Poxa! a resposta esta errada.")
   fimse
   //matematica media
   escreva("Qual o seno de 90 graus?")
   leia(resposta)
   resultado <- (Sen(GraupRad(90)))
   se (resposta = resultado) entao
             escreval("Parabens a resposta esta correta!!!!")
             pontos <- (pontos+10)
   senao
             escreval("Poxa! a resposta esta errada.")
   fimse


senao
     escreval("Voce digitou numero invalidos ou letras.")
fimse


Escreva(nome,", o jogo chegou ao fim! Voce conseguiu",pontos," pontos")


Fimalgoritmo