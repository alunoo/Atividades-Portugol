programa {
  inclua biblioteca Util --> u
  inteiro numSecreto = u.sorteia(1,100)
  logico reiniciar = verdadeiro
  inteiro numero
  inteiro tentativasPlayer = 0

  funcao inicio1() {
    escreva("Acerte o número secreto!\nVocê tem 10 tentativas.\n")

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
          escreva("O jogo terminou! Você já usou todos os palpites!")
        }
    }
  }


 funcao inicio() {
    
    enquanto(reiniciar){
      inicio1()
      simnao()
    }

  }

  funcao simnao(){
      cadeia simnao
      numSecreto = u.sorteia(1,100)
      tentativasPlayer = 0

      escreva("\n\nCalcular novamente? digite 's' ou 'sim' para continuar jogando, ou qualquer outra tecla para finalizar:\n")
      escreva("Resposta:\t")
        leia(simnao)
          limpa()

           se(simnao == "s" ou simnao == "sim" ou simnao == "S" ou simnao == "SIM"){
              reiniciar = verdadeiro
            }

       senao{
        reiniciar = falso
        }
  }
}
