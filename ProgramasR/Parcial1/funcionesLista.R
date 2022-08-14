#Ejercicio3 visto el clase, 08/09/2021

"Realice un script que implemente una calculadora con funciones utilizando
como argumentos la lista del operador y de los operandos"

principal <- function(){
  
  listaDatos <- solicitaDatos()
  calculadora(listaDatos) #invoco la funcion con argumentos
  
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

calculadora <- function(listaDatos){ #argumentos ficticios o formales
  
  res <- switch (listaDatos[[2]],
                 '+' = sum(listaDatos[[1]]),
                 '-' = listaDatos[[1]][1] - listaDatos[[1]][2],
                 '*' = listaDatos[[1]][1] * listaDatos[[1]][2],
                 '/' = listaDatos[[1]][1] / listaDatos[[1]][2]
  )
  
  cat("El resultado de: ", listaDatos[[1]][1], listaDatos[[2]], listaDatos[[1]][2], "=", res)
  
}
