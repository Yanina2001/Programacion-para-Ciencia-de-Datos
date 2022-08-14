#Ejercicio2

x<-43

mod<-x%%4

cat("El resultado es: ",mod)

selector<-ifelse(mod==0, "cero", ifelse(mod==1,"uno", ifelse(mod==2,"dos","tres")))

cat("El selector es ", selector)

res<-switch(selector,
      cero = x**2,
      uno = x/6,
      dos = x,
      tres = x**3+5)

cat("El resultado de la función es: ",res)