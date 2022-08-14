"Crea una funcion que tome los nombres de los archivos
archivos <- c('ventas.csv_20160522_zacatecas', 'perdidos_20160422_sinaloa')
Genere una tabla con una fila por fichero y tres columnas: el nombre del
fichero, la fecha y el estado"

principal <- function() {
  
  archivos <- c("ventas.csv_20160522_zacatecas", "perdidos_20160422_sinaloa")
  cat("Los datos de entradas son: \n", archivos)
  descomponeCadena(archivos)
  
}

descomponeCadena <- function(archivos) {
  
  a1 <- str_split(archivos, "_")
  cat("\nLa descomposicion es ")
  a1
  llenaDatos(a1)
  
}

llenaDatos <- function(a1) {
  
  darchivos = data.frame(matrix(vector(), 0, 3))
  for (i in 1:length(a1)) {
    vector <- c(a1[[i]][1], a1[[i]][2], str_to_title(as.character(a1[[i]][3])))
    darchivos <- rbind(darchivos, vector)
  }
  
  names(darchivos) <- c("Nombre", "Fecha", "Lugar")
  
  cat("\n\nLos datos de la tabla son: \n\n")
  darchivos
  
}

principal()