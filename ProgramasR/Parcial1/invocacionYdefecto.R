"Retome el ejercicio de la calculadora por "

principal <- function(){
  
  listaDatos <- solicitaDatos()
  calculadora(oper = datos[[2]], operando2 = datos[[1]][2], operando1 = datos[[1]][1]) 
  
}

solicitaDatos <- function(){
  
  cat("Ingresa el oeprando 1 y 2 separados por un Enter\n")
  operando <- readLines(n = 2)
  operando <- as.numeric(operando)
  
  cat("Ingresa la operación a realizar\n
      +: suma\n -: resta\n *:multiplicacion\n /: division\n")
  oper <- readLines(n = 1)
  oper <- as.character(oper) #Forma implicita
  
  datos <- list(operando, oper)
  
}

calculadora <- function(operando1, operando2, oper){
  
  res <- switch (oper,
                 '+' = sum(listaDatos[[1]]),
                 '-' = operando1 - operando2,
                 '*' = operando1 * operando2,
                 '/' = operando1 / operando2
  )
  
  cat("El resultado de: ", operando1, operando2, oper, "=", res)
  
}


