#practica2, script3

"El encargado de un aeropuerto necesita una lista de los vuelos de llegada y de 
partida ordenados por código de vuelo, los datos que se tienen de cada vuelo 
son:

Campo
  Código de vuelo
  Número de pasajeros en el vuelo
  Línea aérea
  Hora de llegada
  Origen de salida
  Destino

Elabore un programa que imite el comportamiento y ordene de forma descendente y 
con respecto al código de vuelo e imprima la información; además agregue la 
siguiente información (908, 85, Volaris, 11:30, Tijuana, Cd. México). También 
modifique el nombre de la aerolínea (Volaris por TAR)"

vuelos <- list(matrix(c(540, 74, "TAR", 05.42, "Durango", "Colima",
                          320, 45, "Volaris", 08.21, "Veracruz", "Mexico",
                          123, 15, "TAR", 14.26, "Chiapas", "Sinaloa"), 
                        nrow = 3,
                        ncol = 6,
                        byrow = T))
vuelos

nuevo <- list(c(908, 85, "Volaris", 11.30, "Tijuana", "Cd. México"))
vuelos <- c(vuelos, nuevo)
#listaVue

vuelos[["Volaris"]]<-NULL

vuelos