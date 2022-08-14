#EJERCICIO3 DE CLASE, 10/09/2021

"Cree un programa en R que permita leer un número y obtenga su valor absoluto 
sin utilizar la función abs"

cat("Digite el numero que guste\n")
num <- readLines(n = 1)
num <- as.numeric(num)

absoluto <- abs(num)
absoluto