"Dada una cadena con acentos y signos de puntuacion, eliminar todos los 
caracteres especiales y reemplazarlas con un espacio"


principal <- function(){
  
  cadena <- readline("Ingresa la cadena a trabajar: \n")
  cadena <- iconv(cadena, to = "ASCII//TRANSLIT")
  cadena <- str_replace_all(cadena, "[:punct:]", " ")
  cadena
  
}

principal()