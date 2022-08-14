"Una persona invierte $1000 en una cuenta de ahorro que produce el 5% de
interés. Suponiendo que todo el interés se deposita en la cuenta, calcule e
imprima el monto de dinero en la cuenta al final de cada año, durante 10
años. Use la siguiente fórmula para determinar los montos:
C=p(1+t)n
Donde
p es el monto que se invirtió originalmente (el monto principal)
t es la tasa de interés anual
n es el número de años. (NOTA: En la formula, el valor de n siempre es igual a 1, 
porque es el tiempo que dura la inversion del monto+interes generado cada año.
Al finalizar cada año, el monto p cambia por el monto nuevo generado al sumarle los intereses
de este nuevo año).
c es la cantidad depositada al final del n-esimo año.

Consideraciones:
Todos los programas deben de contar con su diagrama de flujo respectivo y 
5 pruebas de escritorio; asimismo realice una
presentación que explique cuáles fueron las consideraciones que se realizaron 
para resolverlo."

##Declaración e inicialización de variables
p<-1000
t<-0.05
n<-10
c<-c()

##Cálculo del saldo con interés anual
for(tiempo in 1:n)
{
  c[tiempo]<-(p*(1+t))**1
  p<-c[tiempo]
}

##Impresión de saldo anual en cuenta
anual<-c(1:n)
resultados<-matrix(c(anual,c), ncol=2)
colnames(resultados)<-c("Año","Saldo en cuenta (en $)")
resultados