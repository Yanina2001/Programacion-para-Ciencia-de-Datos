#Ejercicio2 visto el clase, 08/09/2021

"Realice un script que implemente una calculadora con funciones utilizando
como argumentos el operador y los operandos"

principal <- function(){
  
  operando <-  solicitaOperando() #retorno de funciones
  oper <- solicitaOper()
  calculadora(operando, oper) #invoco la funcion con argumentos
  
}

solicitaOperando <- function(){ #argumentos reales o actuales
  
  cat("Ingresa el oeprando 1 y 2 separados por un Enter\n")
  operando <- readLines(n = 2)
  operando <- as.numeric(operando)
  
  return(operando) #Forma explicita
  
}

solicitaOper <- function(){
  
  cat("Ingresa la operación a realizar\n
      +: suma\n -: resta\n *:multiplicacion\n /: division\n")
  
  oper <- readLines(n = 1)
  oepr <- as.character(oper) #Forma implicita
  
}


calculadora <- function(operando, oper){ #argumentos ficticios o formales
  
  res <- switch (oper,
                 '+' = sum(operando),
                 '-' = operando[1] - operando[2],
                 '*' = operando[1] * operando[2],
                 '/' = operando[1] / operando[2]
  )
  
  cat("El resultado de: ", operando[1], oper, operando[2], "=", res)
  
}
