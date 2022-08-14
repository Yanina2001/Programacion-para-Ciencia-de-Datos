"Descargar el archivo de vinos del repositorio UCI ML
https://archive.ics.uci.edu/ml/machine-learning-databases/wine/wine.data

Importar los datos descargados
Visualizar los datos exportados
Agregar una fila de datos
Guardar los datos en un archivo CSV con el nombre wineModif.data"

principal <- function(){
  

  #Descargar archivo
  URL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
  download.file(URL, destfile = "C:/Users/Yanina/Desktop/data/data.csv")
  #descargarArchivo()
  #Importar datos
  datos = importarDatos()
  #Agregar una fila de datos
  agregaDatos()
  
}

#descargaArchivo <- function(){
  
  
  
#}

importarDatos <- function(){
  
  datos = read.csv(file = "data.csv", header = FALSE)
  
}

agregaDatos <- function(datos){
  
  v1 <- c()
  datos <- rbind(datos, v1)
  View(datos)
  
}

principal()