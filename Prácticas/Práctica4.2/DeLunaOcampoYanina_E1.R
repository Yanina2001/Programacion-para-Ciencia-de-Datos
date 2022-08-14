"Declare una estructura de datos  (dataframe)
Alumno que considere, los siguientes datos:
- matricula
-	nombre,
- apellidoP,
-	apellidoM,
-	carrera,
-	calf1, calf2, calf3, calf4, calf5;
Considere la informacion de  5 alumnos,
dichos datos deberan de ser escritos a un archivo separado por comas"

principal <- function(){
  
  import()
  
}

import <- function(){
  
  ruta_alumnos <- "C:/Users/Yanina/Desktop/Practica4.csv"
  alumnos <- read.csv(ruta_alumnos, header = FALSE,
                      col.names = c("matrícula", "nombre", "apellidoP", "apellidoM",
                                    "carrera", "calf1", "calf2", "calf3", "calf4", "calf5"))
  
  View(alumnos)
  
}

principal()
