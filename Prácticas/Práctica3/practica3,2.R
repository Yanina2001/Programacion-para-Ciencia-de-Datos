#EJERCICIO2, PRÁCTICA3

"Una función recibe como parámetro una matriz. La matriz representa ciclista 
en varias etapas. Cada fila representa una etapa. La primera columna de la 
matriz almacena elnúmero de horas, la segunda columna el número de minutos y la 
tercera columna el número de segundos que tardó en completar l ejemplo, si se 
recibe:

2 30 50
1 55 20

El ciclista ha completado dos etapas. En la primera etapa ha tardado 2 horas, 
30 minutos y 50 segundos. La función debe devolver una lista con el número total 
de horas, minutos y segundos empleados por el ciclista en cubrir el total de 
etapas. Para los datos de ejemplo se devolvería 4 horas, 26 minutos y 10 
segundos."

mi_prin <- function(){
  
  c <- readline("Digite el numero de tiempos que registrara: \n")
  c <- as.integer(c)
  mi_mat(c)
}

mi_mat <- function(c){
 
  mtz1 <- matrix(seq(1:c*c), nrow = c, ncol = 3, byrow = FALSE)
  
  for (i in c) {
    cat("Digite el tiempo: ")
    t1 <- readLines(n=3)
    t1 <- as.integer(t1)
    
    mtz1[i, ] <- t1
    t1 <- NULL
  }
  mtz1
  apply(mtz1, 2,sum)
}



