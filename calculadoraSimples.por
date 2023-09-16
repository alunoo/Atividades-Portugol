programa {
  funcao inicio() {
    caracter operacao
    real n1, n2, resultado
    escreva("Informe o 1° número:\t")
    leia(n1)

    escreva("Informe o 2° número:\t")
    leia(n2)

    escreva("\nOperação:\n")
    escreva("1 - Soma\n")
    escreva("2 - Subtração\n")
    escreva("3 - Multiplicação\n")
    escreva("4 - Divisão\n")
    leia(operacao)

      se (operacao == 1) {
        limpa(operacao)
        resultado = n1+n2
        escreva("\nO resultado é:\t", resultado, "\n")
      }
      
      se (operacao == 2) {
        resultado = n1-n2
        escreva("\nO resultado é:\t", resultado, "\n")
      }
      
      se ( operacao == 3) {
        resultado = n1*n2
        escreva("\nO resultado é:\t", resultado, "\n")
      }

      se (operacao == 4) {
        resultado = n1/n2
        escreva("\nO resultado é:\t", resultado, "\n")
      }
  }
}
