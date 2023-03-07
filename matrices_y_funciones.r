#creacion de verctores se pone la c
vector_numerico <- c(1, 2, 3, 4, 5, 6, 7)
print(vector_numerico)

vector_caracter <- c("hola","verc","carate")
print(vector_caracter)

#Acceder entradas de vectores SE EMPIEZA CON 1 DIFERENTE A OTROS LENGUAJES
print(vector_numerico[1])

print(length(vector_numerico))

print(paste("acceder varias sectores:", vector_numerico[c(1:4, 7)], sep = " "))
#Operaciones de vectores
vnum1 <- c(1:4)
vnum2 <- c(2:5)

sumav <- vnum1 + vnum2 #suma de vector
restav <- vnum1 - vnum2 #resta
multiv <- vnum1 * vnum2 #multiplicacion
diviv <- vnum1 / vnum2 #division
pescalar <- vnum1 %% vnum2 #producto escalar


#PONER LIBRERIAS
#library(Nombre_de_la_libreria)
#-----------------------------MATRICES
#source(file = "/Librerias.r")

nombre_productos <- c("Tortas", "Jugos", "Yogourt" , "Panes")
nombre_cafeterias <- c("Cafteria A", "Cafteria B", "Cafteria C")
precios <- c(20,22,18,10,9,12,15,15,17,13,12,10)

#contruir matriz
Matriz_productos <- matrix (precios, nrow = 4, byrow = TRUE, dimnames = list(nombre_productos,nombre_cafeterias)) 
print(Matriz_productos)
dim(Matriz_productos) #ver la dimension de matriz
colnames(Matriz_productos) #nombre de columnas
rownames(Matriz_productos) #nombre de filas

#----operaions de matrices

#Transpuesta de una matriz
t(Matriz_productos) #pone la filas en columnas  y viceversa

#segunda matriz
matriz_segunda <- matrix(data =c(1:12), nrow = 4)

Matriz_productos + matriz_segunda #suma
Matriz_productos - matriz_segunda #resta
Matriz_productos * matriz_segunda #multi
Matriz_productos / matriz_segunda #divi

#Agregar nueva columna
"Cafeteria D" <- c(21,15,13,15,23)
Matriz_productos <- cbind(Matriz_productos,"Cafeteria D")
print(Matriz_productos)

#---Grafica matriz
matplot(Matriz_productos)
matplot(Matriz_productos,type = "o") #lineas l #numeros p 
matplot(Matriz_productos,type = "o" , pch = 6:10 , col = c("red","black","blue"))
# 6:10 son simbolos
matplot(Matriz_productos,type = "o" , xlab = "Distintos productos" , ylab = "Valor del producto")
matplot(Matriz_productos,type = "o" , xlim = c(1,4),ylim = c(9,22) )

#subsetting: seleccionar datos
Matriz_productos[c("Tortas"),]
Matriz_productos[c(1:4),c(2)]  #FILAS , COLUMNAS seleccion
Matriz_productos[c(-1:3),] # quitar filas
Matriz_productos[c(-2)]#quitar columnas 


#------FUNCIONES
mi_funcion <- function(argumento_funcion){

    argumento_funcion <- round(argumento_funcion * 0,85)
    return(argumento_funcion)
}

mi_funcion(argumento_funcion = Matriz_productos) #llamada de funcion