#Ejercicio de clase

"Cree una lista que contenga nombre y apellidos de 3 alumnos y 
sus calificaciones

Nombre las etiquetas de la lista
Agregue las edades de los alumnos
Elimine la lista de las edades de los alumnos"

#Cree una lista que contenga nombre y apellidos de 3 alumnos y sus calificaciones
listaCal <- list(matrix(c("Gio", "Perea",
                         "Jaqueline", "Ochoa",
                         "Simon", "Salina"), 
                        nrow = 3,
                        ncol = 2,
                        byrow = T),
           c(9, 6, 5))
listaCal

#Nombre las etiquetas de la lista
names(listaCal) <- c("mNombreAp", "calif")

#Agregue las edades de los alumnos
edades <- list(c(23, 19, 25))
listaCal <- append(listaCal, edades)
listaCal
#listaCal <- c(listaCal, edades)

#Elimine la lista de las edades de los alumnos
listaCal[[3]] <- NULL
listaCal

#Seleccion de elementos
listaCal[["mNombreAp"]][2,2]

listaCal[["calif"]][3]