programa {
  logico reiniciar = verdadeiro

    cadeia materias[] = {"port","mat","hist","ing","geo"}
    cadeia periodo[] = {"1° mês", "2º mês", "3º mês"}
    real 

    funcao notas(){

    }


    funcao calcularMedia(){
      escreva("Calculando média de notas\n")
      escreva("Escolha um período:\n")
      escreva("1° mês")
      escreva("2° mês")
      escreva("3° mês")
      
    }





  funcao inicio() {
     enquanto(reiniciar){
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
}
