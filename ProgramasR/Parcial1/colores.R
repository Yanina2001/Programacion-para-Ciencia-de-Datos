"colors() es una función que devuelve el nombre de más de 600 colores en R. 
Encuentra aquellos cuyo nombre contenga un número
Encuentra aquellos que comiencen con yellow 
Encuentra aquellos que contengan blue 
Reemplaza secuencias de números por x (por ejemplo, blue10 quedaría como bluex)"

principal <- function(){
  
  colores <- colors()
  coloresY <- encuentraColor(colores, "yellow")
  cat("Los colores amarillos son: \n")
  print(coloresY)
  coloresY <- encuentraColor(colores, "blue")
  cat("Los colores azules son: \n")
  print(coloresY)
  reemplazaNum(coloresY)
  nombreCNum(colores)
  
}

encuentraColor <- function(colores, color){
  
  patron <- paste("^", color, sep = "")
  coloresY <- grep(patron, colores, value = T)
  
}

nombreCNum <- function(colores){
  
  coloresNum <- grep("[0-9]$", "x", colores, value = T)
  cat("Los colores con numero son: \n")
  print(colores)
  
}

reemplazaNum <- function(colores){
  
  colores <- gsub("[0-9]$", "x", colores)
  cat("Los colores con reemplazo son: \n")
  print(colores)
  
}

principal()