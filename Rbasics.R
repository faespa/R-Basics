#Data Frame

library(dslabs)

data(murders)

#clase del data frame
class(murders)

#examinar DFrame
str(murders)

#mostrar primeras 6 lineas del DataFrame
head(murders)

#Operador de Acceso $
murders$population

#Ver variables del DataFrame 
names(murders)

#longitud de un arreglo
LenghtPop <- length(murders$population)
class(LenghtPop)
LenghtPop


#Factores
class(murders$region)
levels(murders$region)

#Reordenar
region <- murders$region
value <- murders$total
region <- reorder(region, value, FUN = sum)
levels(region)


#Generar Listas
# la c se utiliza para crear un vector 
record <- list(name = "John Doe",
               student_id = 1234,
               grades = c(95, 82, 91, 97, 93),
               final_grade = "A")
#tambien se puede extraer datos de la lista como en los dataFrames 
record$student_id



######MATRICES#######
#generar una matriz especificar filas y columnas
mat <- matrix(1:12, 4, 3)
#acceder a la matriz
#a un espacio especifico
mat[2, 3]
#a una fila especifica 
mat[2,]
#a una columna especifica 
mat[, 3]

#crear subconjuntos basados tanto en las filas como en las columnas
mat[1:2, 2:3]

#convertir las matrices en data frames
as.data.frame(mat)

#acceder a las filas y las columnas de un data frame
data("murders")
murders[25, 1]



######VECTORES#######
#Concatenar crear un vector
codes <- c(380, 124, 818)

#Vector de caracteres use "" o ''
country <- c("italy", "canada", "egypt")

#generar  nombre a las variables del vector
codes <- c(italy = 380, canada = 124, egypt = 818)
names(codes)
class(codes)

#dos formas de hacerlo
codes <- c(380, 124, 818)
country <- c("italy","canada","egypt")
names(codes) <- country
codes




