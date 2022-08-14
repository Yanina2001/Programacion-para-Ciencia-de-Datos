"1.-
words es una función que devuelve más de 900 palabras en inglés. 

Encuentra aquellas palabras que empiecen con una vocal
Encuentra aquellas palabras que terminen con day
Encuentra aquellas palabras que empiecen y terminen con el mismo carácter"

principal <- function(){
  
  palabras <- words
  
  #str_view_all(palabras, "^[aeiou]", match = TRUE)
  
  #cat("Las palabras que empiezan con vocal son: \n")
  #print(vocales)
  
  #str_view_all(palabras, "day$", match = TRUE)
  cat("Palabras que terminen con day.\n")
  dayFin <- grep("day$", palabras, value = TRUE)
  print(dayFin)
  
  cat("\nPalabras que empiecen y terminen con el mismo carácter.\n")
  caracter <- grep("^([:alpha:]).*\\1$", palabras, value = TRUE)
  print(caracter)
  
}

principal()