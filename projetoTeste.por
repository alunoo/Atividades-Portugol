programa {
  inclua biblioteca Util --> u
  inteiro numSecreto = u.sorteia(1,100)
  logico reiniciar = verdadeiro
  inteiro numero
  inteiro tentativasPlayer = 0
  inteiro opcaoMenu

  funcao menu(){
    escreva("JOGO DE ADVINHAÇÃO\n\n1 - iniciar jogo\n2 - visualizar regras\n3 - Definir dificuldade\n\nEscolha 1, 2 ou 3: ")
    leia(opcaoMenu)
    limpa()
      se(opcaoMenu == 1){
        dificuldade()
        // facil()
      }
      se(opcaoMenu == 2){
        regras()
      }
      se(opcaoMenu == 3){
        dificuldade()
      }
    
  }


  funcao regras(){
    inteiro regras
    limpa()
    escreva("JOGO DE ADVINHAÇÃO\nREGRAS DO JOGO:\n1 - O programa escolherá um número aleatório entre 1 e 100 e o armazenará como o 'número secreto'.\n")
    escreva("2 - Você tem um número limitado de tentativas para adivinhar o número secreto. O número de tentativas permitidas é 10.\n")
    escreva("3 - Você digitará um palpite e o jogo informará se o palpite está correto, muito alto ou muito baixo em relação ao número secreto.")
    escreva("4 - Você continuará a fazer palpites até acertar o número secreto ou esgotar todos os palpites.\n\nPressione 1 para retornar ao menu.\n")
    leia(regras)
      limpa()
        se(regras == 1){
          menu()
        }
        se(regras == 2){
          menu()
        }


  }



inteiro verificaDificuldade  //[] = {"Fácil","Normal","Dificil"}

  funcao dificuldade(){
    
    
    escreva("JOGO DE ADVINHAÇÃO\n\nEscolha uma dificuldade\n\n1 - Fácil   ( 10 palpites )\n2 - Normal  ( 06 palpites )\n3 - Difícil ( 03 palpites )\n")
    leia(verificaDificuldade)

      // verificaDificuldade[0] 
      // verificaDificuldade[1] 
      // verificaDificuldade[2] 

      se(verificaDificuldade == 1){
      escreva("Modo de jogo - FÁCIL")
      limpa()
      facil()
      }
      se(verificaDificuldade == 2){
        escreva("Modo de jogo - NORMAL")
        limpa()
        normal()
      }
      se(verificaDificuldade == 3){
        escreva("Modo de jogo - DIFICIL")
        limpa()
        dificil()
      }

  }

  funcao facil() {
    escreva("MODO DE JOGO - FÁCIL\n\nAcerte o número secreto!\n")

    enquanto(tentativasPlayer < 10){
    
    escreva("Palpite: " )
      leia(numero)
      

        se(numero == numSecreto){
          escreva("Voçe acertou!")
  
          // numSecreto = u.sorteia(1,100)
          // tentativasPlayer = 0
          pare
        }
        se(numero < numSecreto){
          limpa()
          escreva(tentativasPlayer+2, "° palpite\n")
          escreva(numero,"\té abaixo do Número Secreto\n")

          tentativasPlayer++
        }
        se(numero > numSecreto){
          limpa()
          escreva(tentativasPlayer+2, "° palpite\n")
          escreva(numero,"\té acima do Numero secreto\n")

        tentativasPlayer++
        }
        se(tentativasPlayer == 10){
          limpa()
          // numSecreto = u.sorteia(1,100)
          // tentativasPlayer = 0
          escreva("O jogo terminou! Você já usou todos os palpites!\n")
          simnao()
        }
    }
  }
    funcao normal() {
    escreva("MODO DE JOGO - NORMAL\n\nAcerte o número secreto!\n")

    enquanto(tentativasPlayer < 6){
    
    escreva("Palpite: " )
      leia(numero)
      

        se(numero == numSecreto){
          escreva("Voçe acertou!")
          limpa()
          // numSecreto = u.sorteia(1,100)
          // tentativasPlayer = 0
          pare
        }
        se(numero < numSecreto){
          limpa()
          escreva(tentativasPlayer+2, "° palpite\n")
          escreva(numero,"\té abaixo do Número Secreto\n")

          tentativasPlayer++
        }
        se(numero > numSecreto){
          limpa()
          escreva(tentativasPlayer+2, "° palpite\n")
          escreva(numero,"\té acima do Numero secreto\n")

        tentativasPlayer++
        }
        se(tentativasPlayer == 6){
          limpa()
          // numSecreto = u.sorteia(1,100)
          // tentativasPlayer = 0
          escreva("O jogo terminou! Você já usou todos os palpites!\n")
          simnao()
        }
    }
  }

  funcao dificil() {
    escreva("MODO DE JOGO - DIFÍCIL\n\nAcerte o número secreto!\n")

    enquanto(tentativasPlayer < 3){
    
    escreva("Palpite: " )
      leia(numero)
      

        se(numero == numSecreto){
          escreva("Voçe acertou!")
          limpa()
          // numSecreto = u.sorteia(1,100)
          // tentativasPlayer = 0
          pare
        }
        se(numero < numSecreto){
          limpa()
          escreva(tentativasPlayer+2, "° palpite\n")
          escreva(numero,"\té abaixo do Número Secreto\n")

          tentativasPlayer++
        }
        se(numero > numSecreto){
          limpa()
          escreva(tentativasPlayer+2, "° palpite\n")
          escreva(numero,"\té acima do Numero secreto\n")

        tentativasPlayer++
        }
        se(tentativasPlayer == 3){
          limpa()
          // numSecreto = u.sorteia(1,100)
          // tentativasPlayer = 0
          escreva("O jogo terminou! Você já usou todos os palpites!\n")
          simnao()
        }
    }
  }

 funcao inicio() {
    
    enquanto(reiniciar){
      menu()
      
      dificuldade()
      
      regras()
      
      facil()
  
      normal()
    
      dificil()
      
      simnao()
      
    }

  }

  funcao simnao(){
      cadeia simnao
      numSecreto = u.sorteia(1,100)
      tentativasPlayer = 0

      escreva("\n\nCalcular novamente? digite 's' ou 'sim' para continuar jogando, ou 'não' para finalizar:\n")
      escreva("Resposta:\t")
        leia(simnao)
          limpa()

           se(simnao == "s" ou simnao == "sim" ou simnao == "S" ou simnao == "SIM"){
              reiniciar = verdadeiro
              menu()
            }
            senao{
              reiniciar = falso
            }

            se(simnao == "n" ou simnao == "não" ou simnao == "NÃO" ou simnao == "nao" ou simnao == "NAO"){
             
        reiniciar = falso
        }
  }
}
