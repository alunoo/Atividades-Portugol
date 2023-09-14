programa {
  
  inclua biblioteca Matematica-->mat
  real capitalIncial, montante,tempoMes
  real tax
  real result
  real qualtax
  real rein
  
  logico reiniciar = verdadeiro

 funcao inicio() {
    
    enquanto(reiniciar){
      dados()
      calculoJuros()
      simnao()
    }

  }

  funcao simnao(){
      cadeia simnao

      escreva("\n\nCalcular novamente? digite 's' ou 'sim' para continuar calculando, ou qualquer outra tecla para finalizar:\n")
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

  funcao dados(){

    escreva("Calculadora - JUROS COMPOSTOS\n\n")
    escreva("Valor em dinheiro a ser investido:\t")
    leia(capitalIncial)

    escreva("Digite o valor da taxa de juros(%):\t")
    leia(tax)

    escreva("Digite a quantidade de meses:\t")
    leia(tempoMes)
    limpa()

    }

  funcao calculoJuros(){
    result = capitalIncial*mat.potencia(1+tax/100, tempoMes)


    escreva("Calculadora de juros compostos\n")
    escreva("\nValor total final: R$",result)
    escreva("\nValor total investido: R$", capitalIncial)
    escreva("\nValor total em juros: R$", result - capitalIncial)
  }
}
    

