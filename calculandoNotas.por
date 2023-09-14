programa {
  logico reiniciar = verdadeiro

    cadeia materias[] = {"port","mat","hist","ing","geo"}
    cadeia periodo[] = {"1° mês", "2º mês", "3º mês"}
    real periodo1[] = {0,0,0,0,0}
    real periodo2[] = {0,0,0,0,0}
    real periodo3[] = {0,0,0,0,0}
   
    
    real 

    funcao notas(){

    }


    funcao calcularMedia(){
      escreva("Calculando média de notas\n")
        
    }





  funcao inicio() {
     enquanto(reiniciar){
      calcularMedia()
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

