"Del portal de datos abiertos de la Cd. De MÃ©xico 
(https://datos.cdmx.gob.mx/dataset/)
descarga un archivo con informacion de tu interes en formato xls; 
ademas, agrega una fila adicional y nombre a las columnas; asicomo, crea un 
archivo llamado datos_Update.csv."

principal <- function() {
  
  ruta <- lookRuta ()
  dataSet <- openFile (ruta)
  dataSet <- nuevaFila(dataSet)
  rutaPrincipal <- getwd()
  saveFile (rutaPrincipal, dataSet)
  
}

lookRuta <- function (){

  xl <- file.choose()
  return (xl)
  
}

openFile <- function (ruta){

  datosExcel <- read_excel(ruta, col_names = c("Cambio1","Cambio2", "Cambio3"))
  return (datosExcel)
    
}

nuevaFila <- function (dataSet){

  vec <- list("Añado mi fila", "Hasta abajo", "Clase")
  dataSet <- rbind(dataSet, vec)
  View(dataSet)
  
}

saveFile <- function (rutaPrincipal, dataSet){
  
  rutaPrincipal <- str_c(rutaPrincipal, "/datos_Update.csv")
  write.csv(dataSet, file = rutaPrincipal,)
  
}

principal ()