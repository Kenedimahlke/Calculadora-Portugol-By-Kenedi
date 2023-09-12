programa {
  funcao somar(real numero1, real numero2){
    retorne numero1 + numero2
  }

  funcao subtrair(real numero1 , real numero2){
    retorne numero1 - numero2
  }

  funcao multiplicar(real numero1, real numero2){
    retorne numero1 * numero2
  }

  funcao dividir(real numero1, real numero2){
    se(numero2 != 0){
      retorne numero1 / numero2
    }
    senao{
      escreva("Erro! Não é possível dividir por zero")
    }
  }

  funcao inicio() {
    caracter operador
    real resultado = 0.0, numero1, numero2
    logico continuar = verdadeiro

    enquanto(continuar){
      escreva("Digite o primeiro número: ")
			leia(numero1)

			escreva("Digite o segundo número: ")
			leia(numero2)

			escreva("\n")

			escreva("Agora digite uma das operações ( + - * / ) ou 's' para sair: ")
			leia(operador)

      se(operador == 's'){
				continuar = falso
			}

      senao{
				se (operador == '+')
				{
					resultado = somar(numero1, numero2)
				}
				senao se (operador == '-')
				{
					resultado = subtrair(numero1, numero2)
				}
				senao se (operador == '/')
				{
					resultado = dividir(numero1, numero2)
				}
				senao se (operador == '*')
				{
					resultado = multiplicar(numero1, numero2)
				}

				escreva("Resultado:\n\n")
				escreva(numero1, " ", operador, " ", numero2, " = ", resultado)
				escreva("\n")
    }
  }
}
}
