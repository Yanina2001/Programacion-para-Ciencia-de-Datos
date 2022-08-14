#EJERCICIO2, PRÁCTICA3

"Una matriz es simétrica si es cuadrada y es igual a su transpuesta. Escribe 
una función que devuelva un valor lógico indicando si una matriz es simétrica."

mtzSimetrica <- function() {
  df <- structure(list(V1 = c(0L, 0L, 0L, 0L, 0L), 
                       V2 = c(2L, 0L, 0L, 0L, 0L), 
                       V3 = c(3L, 6L, 0L, 0L, 0L), 
                       V4 = c(4L, 8L, 12L, 0L, 0L), 
                       V5 = c(5L, 10L, 15L, 20L, 0L)),
                  .Names = c("V1", "V2", "V3","V4", "V5"), class = "data.frame", row.names = c("1", "2", "3","4", "5"))
  
  df + t(df)
  df[lower.tri(df)] <- t(df)[lower.tri(df)]
  df[lower.tri(df)] <- df[upper.tri(df)]
  print(df)
  print(t(df))
  if(df==t(df)){
    cat("La matriz es simetrica. \n")
  }
}

