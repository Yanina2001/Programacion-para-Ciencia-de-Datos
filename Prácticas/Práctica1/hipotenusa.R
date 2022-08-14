#Práctica1

#Ejercicio1, obtener la hipotenuas de un triángulo y preguntar si desea otra

cat("Digite el primer cateto: \n")

cateto1 <- readLines(n=1)
cateto1 <- as.integer(cateto1)

cat("Digite el segundo cateto: \n")

cateto2<-readLines(n=1)
cateto2<-as.integer(cateto2)

op <- (cateto1**2)+(cateto2**2)
hipotenusa <- sqrt(op)
cat("La hipotenusa obtenida es: ", hipotenusa, "\n")

cat("¿Quiere obtener otra hipotenusa? 1/0")
res<-readLines(n=1)
res<-as.integer(res)

while(res == 1){
  
  cat("\nDigite el primer cateto: \n")
  
  cateto1 <- readLines(n=1)
  cateto1 <- as.integer(cateto1)
  
  cat("Digite el segundo cateto: \n")
  
  cateto2<-readLines(n=1)
  cateto2<-as.integer(cateto2)
  
  op <- (cateto1**2)+(cateto2**2)
  hipotenusa <- sqrt(op)
  cat("La hipotenusa obtenida es: ", hipotenusa)
  
  cat("\n¿Quiere obtener otra hipotenusa? 1/0")
  res<-readLines(n=1)
  res<-as.integer(res)
}