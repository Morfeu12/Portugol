Algoritmo "Suite de Algoritmos"
// Descrição   : Suite com algorimos funcionais
// Autor(a)    : Omar Jr. P. Costa
// Data        : 07/07/2019
Var
   ferramenta, cont, auxI:inteiro
   a,b,c,f,m,t,i,n,s,aux,resposta,resultado:real

   //header
   Procedimento topo()
   inicio
      LimpaTela
      Escreval(" _________________________________________")
      Escreval("|  _____  _    _  _____  ______           \")
      Escreval("| |     |/ \  / \|  _  |/ _   /            \")
      Escreval("| |  _  | |\\","/","/| | | | | |_| /              \  ")
      Escreval("| | | | | | \/ | | |_| |    /                \")
      Escreval("| | |_| | |    | |  _  | |\ \  ALGORITMOS    /")
      Escreval("| |     | |    | | | | | | \ \  LóGICA DE   / ")
      Escreval("| |_____|_|    |_|_| |_|_   \_\PROGRAMAÇÃO /  ")
      Escreval("|_________________________________________/   ")
      escreval("")
   fimprocedimento

   //Menu de ferramentas
   Procedimento menu()
   inicio
      Escreval("=======================================================")
      Escreval("LISTA DE RECURSOS:                                    |")
      Escreval("** Digite o número do recurso para usa-lo.            |")
      Escreval("=======================================================")
      Escreval("[0] - Exit                                            |")
      Escreval("[1] - Converte: Celsius para Fahrenheit               |")
      Escreval("[2] - Converte: Fahrenheit para Celsius               |")
      Escreval("[3] - Calcula Juros simples                           |")
      Escreval("[4] - Calcula juros compostos                         |")
      Escreval("[5] - IMC                                             |")
      Escreval("[6] - Contador inteligente de intervalo               |")
      Escreval("[7] - Fatorial de um numero                           |")
      Escreval("[8] - Fibonacci - Proporcao Aurea                     |")

      Escreval("=======================================================")
      Leia(ferramenta)
      Escreval(">>> Recurso",ferramenta," selecionado :")
      Escreval("")
   fimprocedimento

   //Continuar a usar a ferramenta
   Procedimento continuar()
   inicio
      Escreval("")
      Escreval("===========================================")
      Escreval("Deseja realizar outra operação?    ")
      Escreva ("ENTER para continuar ou 0 para sair.:  ")
      leia(aux)
      Escreval("===========================================")
      Escreval("")
      se (aux = 0) entao
         limpatela
         menu()
      fimse
   fimprocedimento

// Inicio do Programa
Inicio
   topo() //chama o procedimento topo em var
   Escreval("_____ Diversos Algoritmos funcionais _____")
   Escreval("")
   menu() //Chama o procedimento menu em var
   repita //Entra em uma estrutura de repeticao da ferramentas, cada caso e uma ferramenta
      escolha ferramenta
      caso 0
         ferramenta <- 0
      caso 1
         Escreva("Qual a temperatura em Grau Celsius?: ")
         leia(c)
         f <- (c*(9/5))+32
         escreval("A temperatura em fahrenheit e:",f,"ºF")
         continuar()
      caso 2
         Escreva("Qual a temperatura em fahrenheit? ")
         leia(f)
         c <- (f-32)*(5/9)
         escreval("A temperatura em fahrenheit e:",c/1:8:2,"ºF")
         continuar()
      caso 3
         escreva("Qual o capital inicial? ")
         leia(c)
         escreva("Qual a taxa de juros?")
         leia(i)
         escreva("Quantas parcelas?")
         leia(t)
         m <-c*(i/100)+c
         aux <- m/t
         escreval("No final do emprestimo voce paragara R$",m/1:8:2)
         escreval("Sendo divido em R$",aux," cada parcela.")
         continuar()
      caso 4
         escreva("Qual o capital inicial? ")
         leia(c)
         escreva("Qual a taxa de juros?")
         leia(i)
         escreva("Qual o periodo?")
         leia(t)
         resultado <- c*(1+(i/100))^t
         Escreval("No final do emprestimo voce paragara R$",resultado/1:8:2)
         continuar()
      caso 5
         Escreva("Massa (kg): ")
         leia(m)
         Escreva("Altura (m): ")
         leia(aux)
         resultado <- m/(aux^2)
         Escreval("IMC: ", resultado:5:2)
         se (resultado >= 40) entao
            Escreval("Obesidade Morbida")
         senao
            se (resultado >= 35) entao
               Escreval("Obesidade Severa")
            senao
               se (resultado >= 30) entao
                  Escreval("Obesidade")
               senao
                  se (resultado >= 25) entao
                     Escreval("Sobrepeso")
                  senao
                     se (resultado >= 18.5) entao
                        Escreval("Peso ideal")
                     senao
                        se (resultado >= 17) entao
                           Escreval("Abaixo do peso")
                        senao
                           Escreval("Muito abaixo do peso")
                        fimse
                     fimse
                  fimse
               fimse
            fimse
         fimse
         continuar()
      caso 6
         escreva("Qual o numero inicial? ")
         leia(s)
         Escreva("Qual o numero final? ")
         leia(f)
         Escreval("Qual o intervalo? ")
         leia(i)
         se (s < f) entao
            enquanto (s<=f) faca
               escreval(s,"..")
               s <- s + i
            fimenquanto
         senao
            enquanto (s >= f) faca
               escreval(s,"..")
               f <- s - i
            fimenquanto
         fimse
         continuar()
      caso 7
         Escreva("Entre com um numero: ")
         leia(n)
         f <- 1
         c <- n
         escreva(n,"! =",n," x")
         repita
            f <- f * c
            c <- c - 1
            se (c > 1) entao
               escreva(c," x")
            senao
               escreva (c," =")
            fimse
         ate (c <= 1)
         escreval(f)
         continuar()
      caso 8
           Escreval("Sequencia de Fibonacci - Proporcao Aurea")
           a <- 0
           b <- 1
           Escreval("Quantos numero da sequencia de Fibonacci voce quer visualizar?")
           leia(auxI)
           Escreva (a,",",b)
           para cont de 1 ate auxI passo 1 faca
                aux <- a + b
                escreva(",",aux)
                a <- b
                b <- aux
           fimpara
           continuar()
      outrocaso
         Escreval("Recurso nao encontrado :( ")
         Leia(aux)//pausa para visualizacao da mensagem
         LimpaTela
         menu()
      fimescolha
   ate (ferramenta=0)
   topo()
   Escreval("Obrigado por utilizar a ferramenta!!!")

Fimalgoritmo