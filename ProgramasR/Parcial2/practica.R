# DE LUNA OCAMPO YANINA
# IPN, ESCOM
# PRÁCTICA
# PROGRAMACION PARA CIENCIA DE DATOS
# CRISTAL GALINDO DURAN

"EJERCICIO1
Realiza de forma individual los siguientes ejercico en R. Verifica qué se
obtiene con cada una de las siguientes instrucciones. Interpretar los resul."

norm <- rnorm(100,2,5)
norm

norm[1:10]
norm

dnorm(-1.96)
dnorm

dnorm(0)
dnorm

pnorm(1.959964)
pnorm

pnorm(0)
pnorm

pchisq(7,15)
pchisq

rchisq(10,12)
rchisq

rt(15,25)
rt

pt(0,25)
pt

rf(15,5,7)
rf

df(5,5,7)
df

"EJERCICIO3
Graficar una distribución normal con media de 10 y desviación estándar de 2."
x <- seq(-4, 8, 0.1)
plot(x, dnorm(x, mean = 10, sd = 2), type = "l",
     ylim = c(0, 0.6), ylab = "", lwd = 2, col = "blue")

"EJERCICIO4
Graficar una distribucion F con v1=10 y v2=20 grados de libertad. Analizar los
cambios que esta distribución tiene al invertir los grados de libertad del
numerador y del denominador."
gl.n <- 10
gl.d <- 20

varAleatoria <- rf(1000, gl.n, gl.d)
hist(varAleatoria, xlab = "variable x", ylab = "P(x)", freq = FALSE,
     main = "Generacion de numeros aleatorios Fisher", col = "red")

gl.n <- 20
gl.d <- 10

varAleatoria <- rf(1000, gl.n, gl.d)
hist(varAleatoria, xlab = "variable x", ylab = "P(x)", freq = FALSE,
     main = "Generacion de numeros aleatorios Fisher", col = "red")

"EJERCICIO5
Graficar, distribuciones T-Student con 10, 20, 30, 50 y 100 grados de libertad
Analizar los resultados obtenidos."
x <- seq(-5, 5, 1000)
plot( function(x) dt( x, df = 10), -5, 5, ylim = c( 0, 0.5),
      col = "blue", type = "l", lwd = 2,
      main = "Función densidad t de Student df = 10" )

plot( function(x) dt( x, df = 20), -5, 5, ylim = c( 0, 0.5),
      col = "red", type = "l", lwd = 2,
      main = "Función densidad t de Student df = 20" )

plot( function(x) dt( x, df = 30), -5, 5, ylim = c( 0, 0.5),
      col = "red", type = "l", lwd = 2,
      main = "Función densidad t de Student df = 30")

plot( function(x) dt( x, df = 50), -5, 5, ylim = c( 0, 0.5),
      col = "red", type = "l", lwd = 2,
      main = "Función densidad t de Student df = 50")

plot( function(x) dt( x, df = 100), -5, 5, ylim = c( 0, 0.5),
      col = "red", type = "l", lwd = 2,
      main = "Función densidad t de Student df = 100")