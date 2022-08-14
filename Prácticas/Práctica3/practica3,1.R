#EJERCICIO1, PRÁCTICA3

"Escribe una función que dado un valor y un vector devuelva cuántas veces se
encuentra el valor en el vector"

my_func <- function() {
  vec <- c()
  cat("Digita el numero de valores que tendra la funcion")
  n <- readLines(n = 1)
  n <- as.integer(n)

  cat("Digita los valores")
  for(i in 1:n){
    valor <- as.integer(readLines(n=1))
    vec <- append(vec, valor)
  }
  return(vec)
}

repite <- function(vec) {
  my_func()
  cat("Ingresa el numero el cual buscas que se repite")
  r <- readLines(n = 1)
  r <- as.numeric(r)
  vec %in% r
}
