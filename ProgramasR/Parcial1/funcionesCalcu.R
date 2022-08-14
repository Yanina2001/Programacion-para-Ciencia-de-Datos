#Ejercicio1 visto el clase, 08/09/2021

"Escriba un programa con funciones, realice una calculadora a traves de
funciones vacias"

principal <- function(){
  calculadora()
}

calculadora <- function(){
  
  cat("Ingresa el oeprando 1 y 2 separados por un Enter\n")
  operando <- readLines(n = 2)
  operando <- as.numeric(operando)
  cat("Ingresa la operación a realizar\n
      +: suma\n -: resta\n *:multiplicacion\n /: division\n")
  
  oper <- readLines(n = 1)
  oepr <- as.character(oper)
  
  res <- switch (oper,
    '+' = sum(operando),
    '-' = operando[1] - operando[2],
    '*' = operando[1] * operando[2],
    '/' = operando[1] / operando[2]
  )
  
  cat("El resultado de: ", operando[1], oper, operando[2], "=", res)
  
}