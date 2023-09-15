programa {

  inclua biblioteca Util --> u
  inteiro sorteio = u.sorteia(1,100)

  inteiro result // variavel que guarda o numero secreto
  inteiro respostaPlayer

  funcao apresentacao(){


    escreva("Estou pensando em um número. Tente advinha-lo. Boa sorte!\n")
    escreva("Começe digitando um numero inteiro de 1 a 100\n")
    leia(respostaPlayer)
  }

    funcao calculo(){
      se(respostaPlayer == sorteio){
        escreva("Você acertou!")
      }
      se(respostaPlayer > sorteio){
        escreva("está acima")
      }
      escreva(sorteio)
    }


  funcao inicio() {
    apresentacao()
  }
}
