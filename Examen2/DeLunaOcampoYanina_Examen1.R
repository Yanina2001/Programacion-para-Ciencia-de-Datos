"
Para cada ejercicio planteado obtenga lo siguiente:
a) Elabora el diagrama de dispersión.
b) Calcula la pendiente y ordenada al origen.
c) Obtener la ecuación que mejor se ajusta a los datos.
d) Traza la línea estimada en el diagrama de dispersión.
e) Calcula el error estándar de estimación.
f) Calcula el coeficiente de determinación.
g) Determina el coeficiente de correlación.
h) Calcula la matriz de covarianza y correlación
i) Realiza la interpretación de resultados

Un vendedor de Century 21 desea establecer la relación entre el tiempo en
meses que están a la venta los departamentos antes de lograr su venta y el
precio pedido por ellos. Los datos de una muestra de 9 departamentos se
muestran a continuación:

Meses en venta 6.5 7 8.6 12.1 9 9.5 8.6 10.6 15
Precio pedido (en miles de ventas) 800 1000 990 1250 1400 1100 990 990 1250
"

# Datos
mesVenta <- c(6.5, 7, 8.6, 12.1, 9, 9.5, 8.6, 10.6, 15)
precioPedido <- c(800, 1000, 990, 1250, 1400, 1100, 990, 990, 1250)

# a) Grafico de dispersion 
plot(x = mesVenta, y = precioPedido)

disp <- ggplot(gapminder, aes(x=mesVenta, y=precioPedido))
disp+geom_point()

disp+geom_point()+geom_smooth(method="lm", colour="Red")

# b) Calcula la pendiente y ordenada al origen.
b = ((96647-(9*9.65*1085.55))/(894.19-(9*93.22)))
b
a = (1085.55 - (41.94*93.22))
a

# c) Obtener la ecuación que mejor se ajusta a los datos.
# ec = 680 + 41.9x

# d) Traza la línea estimada en el diagrama de dispersión.
disp+geom_point()+geom_smooth(method="lm", colour="Red")

# e) Calcula el error estándar de estimación.
errorEst <- ((114517.946-(680.53*9770)-(41.9*96647))/7)
errorRaiz <- sqrt(errorEst)
errorRaiz

# f) Calcula el coeficiente de determinación.
coefDet <- ((680.53*9770)+(41.9*96647)-(9*117830.86))/(114517.946 - (9*1178430.86))
coefDet

# g) Determina el coeficiente de correlación.
coefCorr <- cor(mesVenta, precioPedido, method = "pearson")
coefCorr <- round(coefCorr, digits = 2)
coefCorr

# h) Calcula la matriz de covarianza y correlación
library(ggcorrplot)
df <- data.frame(mesVenta, precioPedido)
correlacion <- round(cor(df, method = "pearson"),2)

ggcorrplot(correlacion, method = 'circle', type = 'lower', lab = TRUE)+ 
  ggtitle("Matriz de correlacion")+
  theme_minimal()

#i) Realiza la interpretación de resultados