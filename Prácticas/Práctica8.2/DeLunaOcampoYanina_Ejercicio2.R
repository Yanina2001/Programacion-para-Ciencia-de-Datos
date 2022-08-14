# IPN, ESCOM
# PRÁCTICA 8, ANALISIS DE COMPONENETES PRINCIPALES
# EJERCICIO2
# DE LUNA OCAMPO YANINA
# GALINDO DURAN CRISTAL KARINA


# PASO1
"Importamos nuestros datos (csv) con las funciones vistas antes en clase."
vino <- read_csv("C:/Users/Yanina/Desktop/wine.csv")
head(vino)

# PASO2
"Visualizamos los datos para verificar que se importaron correctamente."
View(vino)

# PASO3
"Obtenemos la media, la varianza y la desviacion estandar con el fin de ver 
que no sean un cero y poder aplicar el metodo pedido correspondiente, ya que
si alguna llega a ser igual a 0, no debemos aplicar el metodo"
  # MEDIA 
apply(X = vino, MARGIN = 2, FUN = mean)
  # VARIANZA
apply(X = vino, MARGIN = 2, FUN = var)
  # DESVIACION ESTANDAR
apply(X = vino, MARGIN = 2, FUN = sd)

# PASO4
"Utilizamos el prcomp para poder empezar a implementar nuestro modelo
estadistico que nos ayudara a analizar los datos dados. calcula automáticamente 
el valor de las componentes principales para cada observación (principal 
component scores) multiplicando los datos por los vectores de loadings."
pca <- prcomp(vino, scale = TRUE)
names(pca)

# PASO4.1
"Mandamos llamar individualmente los subgrupos de arriba. Con center y scale
obtenemos la media y la desviacion tipica de las variables, en cuanto al 
rotation, podemos ver que analiza el valor de los loading de cada eigenvector."
pca$center
pca$scale
pca$rotation

head(pca$x)
dim(pca$x)

# PASO5
"se puede obtener una representación bidimensional de las dos primeras 
componentes. Es recomendable indicar el argumento scale = 0 para que las 
flechas estén en la misma escala que las componentes."
biplot(x = pca, scale = 0, cex = 0.6, col = c("blue4", "brown3"))

# PASO5.1
"Aqui solo invertimos la grafica pero se termina representando con los mismos
resultados finales."
pca$rotation <- -pca$rotation
pca$x        <- -pca$x
biplot(x = pca, scale = 0, cex = 0.6, col = c("blue4", "brown3"))