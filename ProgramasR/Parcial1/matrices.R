#Ejercico en clase

#Crear la matriz
mtransicion <- matrix(c(0.3, 0.5, 0.2, 0.5, 0.2, 0.1, 0.2, 0.1, 0.7),
                      nrow = 3,
                      ncol = 3,
                      byrow = T)

#Asignar nombre a filas y columnas
colnames(mtransicion) <- c("Movistar", "Telcel", "AT&T")

rownames(mtransicion) <- c("Movistar", "Telcel", "AT&T")

#Selecciona las probabilidades de Telcel
mtransicion["Telcel",] #separacion entre filas y columnas

#Selecciona las probabilidades de Movistar y AT&T
mtransicion[, c("Movistar", "AT&T")] #

#Agrega una nueva columna Diginet (0.3, 0.4, 0.3)
Diginet <- c(0.3, 0.4, 0.3)
cbind(mtransicion, Diginet)

#Elimina la columna que agregaste Diginet
mtransicion <- mtransicion[, -4]