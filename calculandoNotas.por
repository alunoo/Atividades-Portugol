programa {
  logico reiniciar = verdadeiro

    cadeia materias[] = {"Português","Matematica"}
    cadeia periodo[] = {"1°"}
    real periodo1[] = {0,0,0,0,0}
    real periodo2[] = {0,0,0,0,0}
    real periodo3[] = {0,0,0,0,0}
    real verificaMateria
    real result //variavel que guarda o resuldado da média
   


    funcao notas(){

      escreva("Calculando média de notas\n")

      escreva("escolha qual materia deseja verificar as notas:\n")
      escreva("1 - portugues\n")
      escreva("2 - matematica\n")
      escreva("Reposta:\t")
      leia(verificaMateria)
      limpa()
          
          se(verificaMateria == 1){
              escreva("Calculando média de notas\n")
              escreva("Digite as notas de ", materias[0]," do ", periodo[0], " Período\n")

            escreva("nota1: ")
            leia(periodo1[0])

            escreva("nota2: ")
            leia(periodo1[1])

            escreva("nota3: ")
            leia(periodo1[2])

              result = (periodo1[0]+periodo1[1]+periodo1[2])/3 

              escreva("\nA média desse aluno é ",result)
          }
          se(verificaMateria == 2){
              escreva("Calculando média de notas\n")
              escreva("Digite as notas de ", materias[1]," do ", periodo[0], " Período\n")

            escreva("nota1: ")
            leia(periodo1[0])

            escreva("nota2: ")
            leia(periodo1[1])

            escreva("nota3: ")
            leia(periodo1[2])

              result = (periodo1[0]+periodo1[1]+periodo1[2])/5  

              escreva("\nA média desse aluno é ",result)
          }
          
    }

  funcao inicio() {
     enquanto(reiniciar){
      notas()
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
