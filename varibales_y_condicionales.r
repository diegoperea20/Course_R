print("hello world")
variable_numerica <- 5
variable_caracter <- "MI primera variable"
variable_fecha <- as.Date("2022-07-13", format = "%Y-%m-%d")
str(variable_numerica) #define el tipo de variable

#----------------Trabajar con variables numericas
variable_numerica1 <- 7
suma <- variable_numerica + variable_numerica1
print(suma)
print(paste("El resultado es:", suma, sep = " ")) #CONQUETACION 
#----------------Trabajar con variables  Caracter

variable_caracter <- paste(variable_caracter, "en 2022", sep = " ")
print(variable_caracter)
#----------------Trabajar con variables  fecha
variable_fecha1 <- as.Date("2022-04-13")
variable_fecha2 <- variable_fecha - variable_fecha1
#variable_fecha2 <- as.numeric(variable_fecha - variable_fecha1) # nolint
print(variable_fecha2)

#correr codigo en la consola
#source(file "/varibales_y_condicionales.r")

#----------------Trabajar con logicas y condicionales
# and ----> &
# or ----> |
# diferent ---> !=
#--while
i <- 1
while (i <= 10) {
    print(i)
    i <- i + 1
}
print("termina bucle while")
#--For
variable_for <- 0
for (i in 1:5) {
    print(i)
    variable_for <- i + variable_for
}
print(variable_for)

#--if
if (5 < 6) {
    print("5 es menorrr")
}else {
   print("funcion if hecha!!")
}

if (5 > 10) {
    print("5 es naa")
}else if (5 > 20) {
   print("5 es naaa")
}else if (5 < 30) {
   print("5 es menorrr")
}else {
   print("cosa loca")
}

#exponentes

exponntes <- 2^5
print(exponntes)