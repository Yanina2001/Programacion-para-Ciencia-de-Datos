library(tidyverse)
library(openxlsx)
library(nortest)
library(psych)
library(ggcorrplot)

main<-function()
{
  datos<-read.xlsx("D:/DS.xlsx", sheet = 1, cols = 2:3 )
  a<- lillie.test(datos$Capacity)
  b<- lillie.test(datos$Occupancy)
  
  f<- qqnorm(datos$Capacity)
  qqline(datos$Capacity)
  
  g<- qqnorm(datos$Occupancy)
  qqline(datos$Occupancy)
  
  print(a)
  print(b)
  View(datos)
  
  dis(datos)
  corr(datos)
}


dis<-function(datos)
{
  a<-(datos$Capacity)
  b<-(datos$Occupancy)
  
  grafica = ggplot(datos, aes(x=Capacity, y=Occupancy))
  grafica+geom_point()
  
  modelo<-lm(Occupancy~Capacity , data = datos)
  summary(modelo)
  
  
  grafica+geom_point()+geom_smooth(method="lm", colour="Red")
  
}

corr<-function(datos)
{
  correlacion<-round(cor(datos, method = "pearson"),2)
  ggcorrplot(correlacion , method = "circle")
  print(correlacion)
  
}


main()