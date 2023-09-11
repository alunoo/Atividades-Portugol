programa {

  caracter opcao   //variavel que guarda a opção de °F para °C
  caracter opcao2  //variavel que guarda a opção de °C para °F
  real fator1      //variavel que guarda o valor de °C
  real fator2      //variavel que guarda o valor de °F
  real result      //
  logico reiniciar = verdadeiro 


//função que vai perguntar a temperatura que o usuario quer converter
  funcao operacao(cadeia trocaTemperatura){
    limpa()
    escreva("CONVERSÃO ESCOLHIDA: \n", trocaTemperatura, "\n")
    escreva("Digite a temperatura: \t")
    leia(fator1)

  }


  funcao calcular(){
    escreva("1 - Celcius para Fahrenheit\n")
    escreva("2 - Fahrenheit para Celcius\n")
    escreva("Escolha '1' ou '2' \n")
    leia(opcao)

    se (opcao == 1){
      operacao("°C para °F")
      result = fator1*1.8+32
      escreva(fator1,"°C equivale a: \t", result,"°F\n")
    }

    se (opcao == 2){
      operacao("°F para °C")
      result = (fator1-32)/1.8
      escreva(fator1,"°F equivale a: \t", result,"°C\n")
    }
  }
  funcao inicio() {
    enquanto (reiniciar) {
      calcular()
      escreva("\nCALCULAR NOVAMENTE? DIGITE 'verdadeiro' PARA SIM E 'falso' PARA NÃO: \n")
      leia(reiniciar)
    }
  }
}
