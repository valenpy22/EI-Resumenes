# Cargar las bibliotecas necesarias 

library(ggplot2) 

library(ez) 


# Crear un conjunto de datos de ejemplo 

# data <- data.frame(Estudiante = factor(rep(1:10, each = 3)), Examen = factor(rep(c("Lenguaje", "Ingles", "Religion"), times = 10)), Calificación = c(80, 85, 78, 75, 79, 82, 92, 88, 90, 87, 86, 88, 70, 75, 68, 65, 69, 72, 82, 78, 76, 75, 74, 77, 88, 85, 87, 84, 89, 90) ) 


# Realizar el ANOVA de una vía para muestras correlacionadas 
anova_result <- ezANOVA( data = data, dv = Calificación, within = Examen, wid = Estudiante, detailed = TRUE ) 


# Mostrar los resultados 

print(anova_result)