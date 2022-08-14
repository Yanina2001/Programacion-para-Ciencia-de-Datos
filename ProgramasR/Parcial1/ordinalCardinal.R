#EJERCICIO EN CLASE

"Realice una funcion que lea una cadena y en esta identifique que el numero
ordinal y lo cambie por cardinal."

principal <- function() {
  cadena <- solicitaCad()
  cambiaNum(cadena)
}

solicitaCad <- function() {
  cad = readline("Ingresa el numero ordinal: \n")
}

cambiaNum <- function(cadena) {
  cadena <- str_to_lower(cadena)
  cadena <- str_replace(cadena, "primer", "1")
  
  cat("La cadena con el reemplazo es ", cadena)
}

principal()