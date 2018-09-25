# Kevin García - 1533173
# Alejandro Vargas - 1525953
# Alejandro Soto - 1532457
# Laboratorio 2 - Multivariada

#base de datos
provincias=read.table("clipboard",header=T)
View(provincias)
#*****Lab 2
#funciones
#Porcentaje de incercia
library("ade4")
library("FactoMineR")
x11()
PCA.results=PCA(provincias)
PCA.results$eig[2,3]#porcentaje de varianza explicada por los dos primeros ejes
X11()
barplot(PCA.results$eig[,2],ylim = c(0,70),xlab='Componentes',
        main='Gráfico de barras del porcentaje de inercia explicada por cada componente',ylab = '% de varianza explicado')#grafico del porcentaje explicado
#1)nube de individuos
X11()
plot(PCA.results)#grafico de los individuos dos primeras dimenciones
#2)Circulo de correlaciones
x11()
plot(PCA.results,choix="var")
#3) representacion simultanea
library(factoextra)
x11()
fviz_pca_biplot(PCA.results)
#4)contribuciones y cosenos cuadrados
PCA.results$var$cos2 #cosenos cuadrados
PCA.results$var$contrib #contribuciones
#f) Descriptivas
summary(provincias)
X11()
boxplot(provincias,xlab='Variable',ylab='Presupuesto Familiar',main='Gráfico de cajas del presupuesto familiar por variable')
#Matriz de correlaciones
cor(provincias)
