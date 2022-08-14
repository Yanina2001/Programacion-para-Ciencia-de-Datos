#practica2, script2 

"Ejercicio2
Almacene los elementos de una matriz mxn (5x5), imprimir cuantos numeros son 
cero cuantos son negativos y cuantos positivos.Imprimir ademas la suma de los
negativos, positivos y la diagonal"

#Crear la matriz

numeros <- c(-5,-8,5,6,0,0,7,-1,-6,1,2,4,0,0,0,3,2,8,-5,-4,-2,8,5,6,2)
mnum <- matrix(numeros,
               nrow = 5,
               ncol = 5,
               byrow = T)
mnum

i <- 0
j <- 0
c <- 0
n <- 0
p <- 0

for (i in 1:5) {
  for (j in 1:5) {
    if (numeros==0){
      c <- c+1
    }
     if(numeros<0){
        n <- n+1
     }
     if(numeros>0){
        p <- p+1
     }
  }
}

#cuantos numeros son cero 
cat("Cantidad de ceros ", c, "\n")

#cuantos son negativos
cat("Cantidad de numeros negativos", n, "\n")

#cuantos positivos
cat("Cantidad de numeros positivos", p, "\n")

#imprimir ademas la suma de los negativos

#imprimir ademas la suma de los positivos

#diagonal
diagonal <- diag(mnum)
diagonal

