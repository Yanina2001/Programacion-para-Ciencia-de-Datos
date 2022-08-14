#Practica1

#Ejercicio3, realice 3 conversiones de unidades de sistema ingles al decimal

cat("Conversion de ingles a decimal")
cat("Tome en cuenta que el numero que digite será tomado como las sig unidades:")
cat("Unidades puestas en cm")
unPie <- 30.48
unaYd <- 91.44
unInch <- 2.54
cat("Digita el numero a convertir.")

opc <- readLines(n=1)
opc <- as.integer(opc)
opc 
  
res1 <- opc*unPie
cat("El valor digitado (pies) en sistema decimal es: ", res1, "cm")
res2 <- opc*unaYd
cat("El valor digitado (yardas) en sistema decimal es: ", res2, "cm")
res3 <- opc*unInch
cat("El valor digitado (pulgadas) en sistema decimal es: ", res3, "cm")