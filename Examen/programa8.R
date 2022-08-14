#De Luna Ocampo Yanina
#IPN, ESCOM
#3AM1
#Programacion para Ciencia de Datos

"8.  En un vector guarde n números enteros y determine ¿Cuántas veces se repite 
cada uno de ellos?
Si n = 6  y los
elementos del vector son: 3, 4, 6, 6, 4, 6 se imprimirá
3 =1, 4 = 2, 6 = 3"

miFun <- function() {
  
  df <- data.frame(num = c(1, 7, 9, 11, 1, 2, 11, 4, 7, 3, 3, 9, 1, 3, 4, 3, 5))
  new_df<-aggregate(df$num, df, length)
  
  df %>%                       
  group_by(num) %>%       
  tally() 
  
}

miFun()