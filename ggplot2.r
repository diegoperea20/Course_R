#-----Importar librerias
source(file = "C:\\Users\\User\\Documents\\curso_r\\Librerias.r")



file.choose()
base_datos <- read.csv("C:\\Users\\User\\Documents\\curso_r\\5_11+proyecto1.csv") 
View(base_datos)

#---grafica en ggplot

ggplot(data=base_datos) + geom_point(aes(x = no_clientes , y =ventas_tot))

#----nuevo data frame

lty <- c("solid","dashed","dotted","dotdash","longdash","twodash")
tipos_lineas <- data.frame(y = seq_along(lty),lty = lty)

ggplot(data=tipos_lineas,aes(x=0 ,y=y)) + geom_segment(aes(xend=5,yend=y,linetype=lty))

#----Grafico con capas
base_datos$porc_pagos <- round(base_datos$pagos_tot/base_datos$ventas_tot,digits=2)

#base_soc %>%  group_by(tipo_cliente) %>% summarise(media_pagos = round(mean(porc_pagos),2)) %>% ungroup() %>%
#  ggplot(aes(x = tipo_cliente,y=media_pagos,fill = tipo_cliente)) + 
 # geom_bar(stat = 'identity') +
  #geom_text(aes(label = media_pagos),vadjust = 1.6,size = 4,color = 'black') + 
  #scale_fill_manual(values = c('yellow','red','green'))


#-------------------DE AQUI PARA ABAJO SOLO GRAFICAS CON OTRO .CSV MIRAR VIDEO S :)

#-----------------Mapping vs setting
ggplot(data = base_soc,aes(x = edad,y = deuda_act)) + 
  geom_point(aes(color = tipo_cliente)) +
  xlim(18,75) +
  scale_color_manual(values = c('blue','red','green'))




"__________Histograma"

ggplot(data = base_soc,aes(x = venta_trimestral)) + 
  geom_bar(stat = 'count',fill = 'white',aes(color = tipo_cliente)) +
  scale_color_manual(values = c('red','yellow','blue')) + 
  xlim(100,20000)

"__________Densidad"

ggplot(data = base_soc,aes(x = venta_trimestral)) +
  geom_density(stat = 'density',aes(color = tipo_cliente)) +
  xlim(100,20000) +
  scale_color_manual(values = c('orange','green','red'))

"_________Facet wrap & facet grid"

ggplot(data = base_soc,aes(x = venta_trimestral)) +
  geom_density(stat = 'density',aes(color = nombre_suc)) + 
  facet_wrap(vars(nombre_suc)) 



"___________coordenadas"

ggplot(data = base_soc,aes(x= edad,y = deuda_act)) +
  stat_bin2d(bins = 25,color = 'white') +
  scale_x_continuous(limits = c(18,100))


ggplot(data = base_soc,aes(x= edad,y = deuda_act)) +
  stat_bin2d(bins = 25,color = 'white') +
  coord_cartesian(xlim = c(18,100))

"________A�adir temas"

ggplot(data = base_soc,aes(x = venta_trimestral)) +
  geom_density(stat = 'density',aes(color = tipo_cliente)) +
  coord_cartesian(xlim = c(100,20000)) +
  scale_color_manual(values = c('orange','green','red')) +
  theme_dark()
 
