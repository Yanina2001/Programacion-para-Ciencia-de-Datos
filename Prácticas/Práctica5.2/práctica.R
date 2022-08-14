"
1.    Descargar del siguiente enlace: https://archive.ics.uci.edu/ml/datasets/Parking+Birmingham
2.    Importarlo a R 
3.    Verificar la normalidad para las variables utilizadas(gráfica y función) 
4.    Realizar el diagrama de dispersión entre las variables
5.    Encontrar el modelo que mejor se ajuste a los datos 
6.    Obtener el coeficiente de correlación que mejor se adecue a la 
      distribución de los datos
7.    Obtener la matriz de correlación entre las variables analizadas
8.    Interpretar resultados
"
# Escribimos nuestras librerías
library(readr)
library(ggplot2)
library(psycho)

# Punto1 y 2
# Función para mandar llamar nuestro dataset desde su ubicacion
gapminder <- read_csv("C:/Users/Yanina/Desktop/dataset.csv")
head(gapminder)
# Visualizamos los datos para verificar que se importaron correctamente
View(gapminder)
# Seleccionamos las columnas a utilizar dentro de nuestro analisis
gapminder[, 2:3] 


# Punto3
# Verificar la normalidad
hist(gapminder$Capacity, col = "blue")
hist(gapminder$Occupancy, col = "blue")

qqnorm(gapminder$Capacity)
qqline(gapminder$Capacity, col = "red", lwd = 2)

qqnorm(gapminder$Occupancy)
qqline(gapminder$Occupancy, col = "violetred1", lwd = 2)

# Punto3.1
# Verificar la normalidad por test
#install.packages("nortest")
library(nortest)
lillie.test(gapminder$Capacity)
lillie.test(gapminder$Occupancy)

# Punto4
# Dispersion
plot(x = gapminder$Capacity, y = gapminder$Occupancy)

grafica <- ggplot(gapminder, aes(x=Capacity, y=Occupancy))
grafica+geom_point()

grafica+geom_point()+geom_smooth(method="lm", colour="Red")

# Punto5
# Mejor modelo

# Punto6
# Obtener coeficiente de correlacion
coefCorr <- cor(gapminder$Capacity, gapminder$Occupancy, method = "pearson")
coefCorr <- round(coefCorr, digits = 2)
coefCorr

# Punto7
# Matriz de correlacion
#install.packages("ggcorrplot")
library(ggcorrplot)
df <- data.frame(gapminder$Capacity, gapminder$Occupancy)
correlacion <- round(cor(df, method = "pearson"),2)

ggcorrplot(correlacion, method = 'circle', type = 'lower', lab = TRUE)+ 
  ggtitle("Matriz de correlacion")+
  theme_minimal()

# Punto8
# Interpretarlos
