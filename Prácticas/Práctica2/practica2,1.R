#Practica 2, scrpt1

"Ejercicio1
Alamacene en un vector las temperaturas de un dia (0-23). Calcule su media e
imprima la temperatura más alta y la más baja; así mismo imprimir la hora
respectiva. Por ejemplo la temperatura media fue de 21.5°, la más alta de 29°
-14 hrs y la más baja de 9°-3hrs"

tem <- seq(1:24)
for (q in 1:24){
  cat("Digita la temperatura que desea asginarle a las horas del día: ")
  t <- readLines(n=1)
  t <- as.double(t)
  tem[q] <- t
  } 

#Calcule su media e imprima la temperatura más alta y la más baja
promedio <- mean(tem)
promedio

h <- seq(0:23)

#imprimir la hora respectiva
cat("La teperatura maxima fue de ", max(tem), "a las ", max(h), "hrs")
cat("La teperatura minima fue de ", min(tem), "a las ", min(h), "hrs")
