
#EJERCICIO1 CAPTURADO EN IPAD 27/08/2021

num_aleatorio<-sample(1:100, 1)
print(num_aleatorio)

contador<-0

#sample permite generar numeros aleatorios enteros
#runif permite generar numeros aleatorios decimales

while(contador<5){
  
  cat("Ingresa el numero \n")
  
  num<-readLines(n=1)
  num<-as.integer(num)
  
  contador<-contador+1
  
  if(num == num_aleatorio){
    cat("Felicidades lo lograste en ", contador, "intentos \n")
    break
  }else{
    if(num<num_aleatorio){
      cat("El numero es menor al generado\n")
    }else{
      cat("El numero es mayor al generado\n")
    }
    
      cat("Lastima, suerte para la proxima\n")
    
  }
  
  contador<-contador+1
  
}