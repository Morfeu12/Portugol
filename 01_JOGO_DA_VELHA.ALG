Algoritmo "Jogo da Velha #"
// Descrição   : Jogo da Velha, v1.0.3
// Autor(a)    : Omar Junior Pereira da Costa
// Data atual  : 08/07/2019
Var
   // Seção de Declarações das variáveis
   v:vetor[1..7, 1..7] de caractere
   p1,p2,nomeP1,nomeP2,sair,op,tempoEspera:caractere
   L,C,i,resultado,pP1,pP2:inteiro

Procedimento layoutEixoContorno()
inicio
   v[1,1] <- " +"
   v[7,1] <- " +"
   v[7,3] <- " +"
   v[7,5] <- " +"
   v[7,7] <- "+"
   v[3,7] <- "+"
   v[5,7] <- "+"
   v[1,7] <- "+"
   v[1,5] <- " +"
   v[1,3] <- " +"
   v[3,1] <- " +-"
   v[5,1] <- " +-"
fimprocedimento

Procedimento layoutContorno()
inicio
   v[1,2] <- "---"
   v[1,4] <- "---"
   v[1,6] <- "---"
   v[2,1] <- " |"
   v[2,7] <- "|"
   v[4,1] <- " |"
   v[4,7] <- "|"
   v[6,1] <- " |"
   v[6,7] <- "|"
   v[7,2] <- "---"
   v[7,4] <- "---"
   v[7,6] <- "---"

fimprocedimento

Procedimento layoutLinhaHorizontal()
inicio

   v[3,2] <- "---"
   v[3,3] <- "---"
   v[3,4] <- "---"
   v[3,5] <- "---"
   v[3,6] <- "---"
   v[5,2] <- "---"
   v[5,3] <- "---"
   v[5,4] <- "---"
   v[5,5] <- "---"
   v[5,6] <- "---"
fimprocedimento

Procedimento layoutLinhaVertical()
inicio
   v[2,3] <- " |"
   v[3,3] <- " |"
   v[4,3] <- " |"
   v[5,3] <- " |"
   v[6,3] <- " |"
   v[2,5] <- " |"
   v[3,5] <- " |"
   v[4,5] <- " |"
   v[5,5] <- " |"
   v[6,5] <- " |"

fimprocedimento

Procedimento layoutEixoLinha()
inicio
   v[3,3] <- "-+-"
   v[5,3] <- "-+-"
   v[5,5] <- "-+-"
   v[3,5] <- "-+-"

fimprocedimento

procedimento iniciar()
inicio
   v[2,2] <- "1"
   v[2,4] <- "2"
   v[2,6] <- "3"
   v[4,2] <- "4"
   v[4,4] <- "5"
   v[4,6] <- "6"
   v[6,2] <- "7"
   v[6,4] <- "8"
   v[6,6] <- "9"
fimprocedimento

Procedimento Turno(V,N:caractere)
inicio
   Escreval("===========================================")
   Escreval(N," escolhe um numero para jogar..: ")
   Leia(op)
   Marcar(V,N,op)
fimprocedimento

Procedimento Marcar(id,nome,opcao:caractere)
Inicio
   Escolha opcao
   Caso "1"
      Se (v[2,2]="1") Entao
         v[2,2] <- id
      Senao
         Escreval("Erro ao jogar")
         Turno(id,nome)
      Fimse
   Caso "2"
      Se (v[2,4]="2") Entao
         v[2,4] <- id
      Senao
         Escreval("Erro ao jogar")
         Turno(id,nome)
      Fimse
   Caso "3"
      Se (v[2,6]="3") Entao
         v[2,6] <- id
      Senao
         Escreval("Erro ao jogar")
         Turno(id,nome)
      Fimse
   Caso "4"
      Se (v[4,2]="4") Entao
         v[4,2] <- id
      Senao
         Escreval("Erro ao jogar")
         Turno(id,nome)
      Fimse
   Caso "5"
      Se (v[4,4]="5") Entao
         v[4,4] <- id
      Senao
         Escreval("Erro ao jogar")
         Turno(id,nome)
      Fimse
   Caso "6"
      Se (v[4,6]="6") Entao
         v[4,6] <- id
      Senao
         Escreval("Erro ao jogar")
         Turno(id,nome)
      Fimse
   Caso "7"
      Se (v[6,2]="7") Entao
         v[6,2] <- id
      Senao
         Escreval("Erro ao jogar")
         Turno(id,nome)
      Fimse
   Caso "8"
      Se (v[6,4]="8") Entao
         v[6,4] <- id
      Senao
         Escreval("Erro ao jogar")
         Turno(id,nome)
      Fimse
   Caso "9"
      Se (v[6,6]="9") Entao
         v[6,6] <- id
      Senao
         Escreval("Erro ao jogar")
         Turno(id,nome)
      Fimse
   OutroCaso
      Escreval("Erro ao jogar")
      Turno(id,nome)
   Fimescolha

FimProcedimento


funcao verifica(D:caractere): inteiro
var
   teste:inteiro
inicio
   teste <- 1
   se ((v[2,2]=D) e (v[2,4]=D) e (v[2,6]=D)) entao
      teste <- 2
      retorne teste
   fimse
   se ((v[4,2]=D) e (v[4,4]=D) e (v[4,6]=D)) entao
      teste <- 2
      retorne teste
   fimse
   se ((v[6,2]=D) e (v[6,4]=D) e (v[6,6]=D)) entao
      teste <- 2
      retorne teste
   fimse
   se ((v[2,2]=D) e (v[4,2]=D) e (v[6,2]=D)) entao
      teste <- 2
      retorne teste
   fimse
   se ((v[2,4]=D) e (v[4,4]=D) e (v[6,4]=D)) entao
      teste <- 2
      retorne teste
   fimse
   se ((v[2,6]=D) e (v[4,6]=D) e (v[6,6]=D)) entao
      teste <- 2
      retorne teste
   fimse
   se ((v[2,2]=D) e (v[4,4]=D) e (v[6,6]=D)) entao
      teste <- 2
      retorne teste
   fimse
   se ((v[6,2]=D) e (v[4,4]=D) e (v[2,6]=D)) entao
      teste <- 2
      retorne teste
   senao
      retorne teste
   fimse
fimfuncao

procedimento jogoDaVelha()
inicio
   layoutEixoContorno ()
   layoutContorno()
   layoutLinhaHorizontal()
   layoutLinhaVertical()
   layoutEixoLinha()
   Escreval("=====================")
   Escreval("#   JOGO DA VELHA   #")
   Escreval("=====================")
   para L <- 1 ate 7 faca
      para C <- 1 ate 7 faca
         Escreva(v[L,C]:3)
      fimpara
      Escreval()
   fimpara
fimprocedimento

Inicio
   iniciar()
   jogoDaVelha()
   Escreval("===============================")
   Escreval("Qual o nome do jogador 1?  ")
   Leia(nomeP1)
   Escreva("Digite um marcador ",nomeP1,": ")
   Leia(p1)
   Escreval("===============================")
   Escreval("Qual o nome do jogador 2?  ")
   Leia(nomeP2)
   Escreva("Digite um marcador ",nomeP2,": ")
   Leia(p2)
   Repita
      iniciar()
      i <- 0
      sair <- ""
      resultado <- 0
      repita
         Limpatela
         jogoDaVelha()
         Turno(p1,nomeP1)
         resultado <-  verifica(p1)
         i <- i + 1
         se(resultado=2)entao
            Limpatela
            jogoDaVelha()
            Escreval("------------------------------")
            Escreval("O jogador ",nomeP1," GANHOU!!!")
            pP1 <- pP1 + 1
            sair <- "S"
            Leia(tempoEspera)
         senao
            Se (i=5) Entao
               Limpatela
               jogoDaVelha()
               Escreval("------------------------------")
               Escreval(">> Deu VELHA <<")
               sair <- "S"
            Senao
               Limpatela
               jogoDaVelha()
               Turno(p2,nomeP2)
               resultado <- verifica(p2)
               se (resultado=2) entao
                  LimpaTela
                  jogoDaVelha()
                  Escreval("------------------------------")
                  Escreval("O jogador ",nomeP2," GANHOU!!!")
                  pP2 <- pP2 + 1
                  sair <- "S"
                  Leia(tempoEspera)
               fimse
            fimse
         fimse
      ate(sair="S")
      Escreval("==============================")
      Escreval("            PLACAR")
      Escreval("______________________________")
      Escreval(nomeP1:12,": ",pP1:2)
      Escreval(nomeP2:12,": ",pP2:2)
      Escreval("==============================")
      Escreval("Deseja jogar outra?")
      Escreval("** ENTER para jogar novamente")
      Escreval("** [0] - Sair")
      Escreval("______________________________")
      leia(sair)
   ate(sair="0")
Fimalgoritmo