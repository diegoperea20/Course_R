#-----Importar Datos
file.choose()
base_datos <- read.csv("C:\\Users\\User\\Documents\\curso_r\\5_11+proyecto1.csv") 
View(base_datos)
str(base_datos)

#---uso de $$ #para ver obtrner datos de la columna
base_datos$B_adeudo
base_datos$B_adeudo[5]

#.----Cread columna
base_datos$porc_adeudo <- base_datos$adeudo_actual / base_datos$ventas_tot
#base_datos$porc_adeudo <- round(base_datos$adeudo_actual / base_datos$ventas_tot, digits = 2)
View(base_datos)

#----operaciones en columnas
sum(base_datos$adeudo_actual) #suma total de la columna
mean(base_datos$no_clientes) #media de la columna
min(base_datos$no_clientes) #minimo
max(base_datos$no_clientes) # maximo

#---eliminar columna
base_datos$X <- NULL

#---filtrar 
baseda_dos <- filter(base_datos, B_adeudo == "Con adeudo")
head(baseda_dos)


#--VISUALIZACION CON QPLOT

qplot(B_mes,data = base_datos,geom = 'density',color = B_adeudo,bins = 30,
      xlab = 'MES',ylab = 'Frecuencia',main = 'Distribuci�n de adeudo por mes') #frecuencia

qplot(adeudo_actual,no_clientes,data =base_datos,geom=c('point','line')) #lineal

qplot(id_sucursal,data =base_datos,geom='histogram',fill = B_adeudo)#histograma




#CONSTRUIR DATA FRAME
id_sucursal <- c(0:17,22,37,42,68,97,65,98,36)
suc <- c('SYS','CDMX','VER','LEON','QRO','ECA','PUE','AGS','JAL','GDL','TOL','TIJ',
         'GTO','OAX','TAB','SLP','BCS','BCN','PUE','BCN','AGS','PUE','VER','TOL','GDL','BCS')

nombres_suc <- data.frame(id_sucursal,suc)
View(nombres_suc)

#----Unir data frames

base_datos_union <- merge(x= base_datos,y = nombres_suc, by = 'id_sucursal',all.x = TRUE)
head(base_datos_union)
View(base_datos_union)


#-----visualizacion qplot
qplot(ventas_tot,data = base_datos_union,geom = 'density',color = B_adeudo,bins = 30,
      xlab = 'VENTAS TOT',ylab = 'Frecuencia',main = 'Distribuci�n de ventas por adeudo') + 
  geom_vline(xintercept = mean(base_datos_union$ventas_tot))

qplot(ventas_tot,data = base_datos_union,geom = 'density',facets = ~ B_adeudo,color = B_adeudo,bins = 30,
      xlab = 'VENTAS TOT',ylab = 'Frecuencia',main = 'Distribuci�n de ventas por adeudo') + 
  geom_vline(xintercept = mean(base_datos_union$ventas_tot))

qplot(suc,no_cdtos, data = base_datos_union,geom = 'point',size = ventas_tot)

qplot(B_adeudo,adeudo_actual, data = base_datos_union,geom = 'boxplot',fill = B_adeudo)