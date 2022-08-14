"Lea una cadena e imprimir el total de vocales, dígitos, caracteres especiales, 
mayúsculas, minúsculas, espacios en blanco, consonantes y total de los 
caracteres de la cadena"

principal <- function(){
  
  cadena = readline("Ingresa la cadena: \n")
  analizaCadena(cadena)
  
}

analizaCadena <- function(cadena){
  
  cat("Resumen de la cadena.\n")
  cat("\nVocales - ", str_count(cadena, "[aeiouAEIOU]"),
      "\nMayusculas - ", str_count(cadena, "[:upper:]"),
      "\nMinusculas - ", str_count(cadena, "[:lower:]"),
      "\nDigitos - ", str_count(cadena, "[:digit:]"),
      "\nCaracteres esp - ", str_count(cadena, "[:punct:]"),
      "\nEspacios en blanco - ", str_count(cadena, "[:space:]"),
      "\nTotal de caracteres - ", str_length(cadena),
      "\nConsonantes - ", str_count(cadena, "[^aeiouAEIOU ]"))
      
}

principal()