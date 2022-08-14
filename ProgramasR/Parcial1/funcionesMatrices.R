#Ejercicio2

m1 <- matrix(c(0.3, 0.5, 0.2, 0.5, 0.2, 0.1, 0.2, 0.1, 0.7),
             nrow = 3,
             ncol = 3,
             byrow = T)

#suma de la matriz
sumM1 <- m1 + m1
sumM1

#resta de la matriz
restaM1 <- m1 - m1
restaM1

#multiplicacion de la matriz
mulM1 <- m1 %*% m1
mulM1

#transpuesta de la matriz
tM1 <- t(m1)
tM1

#determinante de la matriz
detM1 <- det(m1)
detM1

#diagonal de la matriz
diagM1 <- diag(m1)
diagM1