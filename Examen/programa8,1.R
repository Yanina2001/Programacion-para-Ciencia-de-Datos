#De Luna Ocampo Yanina
#IPN, ESCOM
#3AM1
#Programacion para Ciencia de Datos

"8.
En Netflix se lleva la siguiente información de cada película: código,
título, género y cantidad de préstamos. Capturar la información de las
películas que se tienen en existencia, posteriormente imprimir:
a)    
Los títulos de un género específico
Las películas más demandadas"

codigo <- c(123, 456, 789, 101)
titulo <- c("Anabelle", "Liss", "Guarderia de papa", "Noche del demonio")
genero <- c("Terror", "Amor", "Comedia", "Terror")
prestamos <- c(896, 2, 45, 587)

datosPeliculas <- data.frame(codigo, titulo, genero, prestamos)
datosPeliculas


datosLibros$genero

if(prestamos >= 50){
  print("Las peliculas mas demandadas son: ", titulo)
}


