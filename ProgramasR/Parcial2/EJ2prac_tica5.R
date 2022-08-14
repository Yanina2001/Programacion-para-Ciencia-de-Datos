main<-function()
{
  mc<-0
  xf<-0
  limi<-c(0,4,8,12,16)
  lims<-c(4,8,12,16,20)
  f<-c(3,5,6,4,3)
  Fa<-cumsum(f)
  A<-limi[2]-limi[1]
  
  for (i in 1:length(limi)) 
  {
    mc[i]<-(limi[i]+lims[i])/2 
  }
  
  for (i in 1:length(limi)) 
  {
    xf[i]<-(f[i]*mc[i])
  }
  
  y<-sum(xf)
  y2<-sum(f)
  
  a<-media(y,y2)
  b<-varianza(a,f,mc)
  c<-desviacion(b)
  d<-moda(f, limi, A)
  e<-cuartiles(A)
  f<-rangoe(limi, lims)
  
 
  cat("Datos obtenidos por funciones propias\n")
  mat1<-matrix(c(a,e[2],d,b,c,e,f), nrow = 1, ncol = 9, byrow=TRUE)
  colnames(mat1)<-c("Media", "Mediana", "Moda", "Desviacion estandar", "Varianza","Q1", "Q2", "Q3", "Rango estadistico")
  print(mat1)
  cat("Podemos decir que el 25% es menor a 6 libros, el 50% es menor a 10 libros y el 75% es menor a 14 libros")
  
}


media<-function(y,y2)
{
  x<-y/y2
  x
}

varianza<-function(a,f,mc)
{
  for (i in 1:length(mc)) 
  {
    uno<-abs(mc[i]-a)*f[i]
  }
  
  a<-sum(uno)
  b<-sum(f)
  r<-a/b
  r
}

desviacion<-function(b)
{
  r<-sqrt(b)
  r
}

moda<-function(f, limi, A)
{
  mo<-(limi[3]+((f[3]-f[2])/((f[3]-f[2])+(f[3]-f[4]))))*A
  mo
}

cuartiles<-function(A)
{
  p1<-(1*21)/4
  p2<-(2*21)/4
  p3<-(3*21)/4
  
  q1<-ceiling(4+A*((p1-3)/5))
  q2<-ceiling(8+A*((p2-8)/6))
  q3<-ceiling(12+A*((p3-14)/4))
  
  r<-c(q1,q2,q3)
  r

  
}

rangoe<-function(limi, lims)
{
  n<-length(lims)
  x<-lims[n]-limi[1]
  x
  
}

main()