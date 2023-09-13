
// imc < 18.5 abaixo do peso
// imc < 24.9 normal
// imc > 25 acima
// formula = peso/(altura*altura)

programa {

      real peso, altura, imc
      real result // variavel que guarda o resultado do IMC
      logico reiniciar = verdadeiro

  funcao simnao(){
      cadeia simnao

      escreva("\nCalcular novamente? digite 's' ou 'sim' para continuar calculando, ou qualquer outra tecla para finalizar:\n")
      escreva("Resposta:\t")
      leia(simnao)
      limpa()

      se(simnao == "s" ou simnao == "sim"){
        reiniciar = verdadeiro
      }

       senao{
        reiniciar = falso
      }

  }


  funcao calcularIMC(){

    escreva("########\tCALCULADORA DE IMC\t########\n")
    escreva("Forneça um valor para peso:\t")
    leia(peso)
    
    escreva("Forneça um valor para altura (ex.: 1.72):\t")
    leia(altura)

    result = peso/(altura*altura)
    

    se(result > 18.6 e result < 24.9){
      limpa()
      escreva("O valor do seu IMC é:\t",result, "\n\nÍNDICE DE MASSA CORPORAL IDEAL (PARABÉNS!)\n")
     }

    se(result < 18.5){
      limpa()
      escreva("O valor do seu IMC é:\t",result, "\n\nATENÇÃO!\nÍNDICE DE MASSA CORPORAL ABAIXO DO PESO IDEAL\n")
     }

    se(result > 24.9){
      limpa()
      escreva("O valor do seu IMC é:\t",result, "\n\nATENÇÃO!\nÍNDICE DE MASSA CORPORAL ÁCIMA DO PESO IDEAL (OBESIDADE - 1° GRAU)\n")
    }
  }


  funcao inicio() {

    enquanto (reiniciar) {
      calcularIMC()
      simnao()
     }
    }
  }
