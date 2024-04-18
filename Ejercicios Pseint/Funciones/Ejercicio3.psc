Proceso Ejercicio3
	//Definición variables necesariasm para el desarrollo del ejercicio
	Definir calif1, calif2, calif3, calif4, calif5 Como Entero;
	Definir i Como Entero;
	
	Escribir "Cálculo del promedio de cinco calificaciones.";
	//Invocación función para la petición de las calificaciones y asignación a sus respectivas variables
	calif1 <- recibirCalificacion(1);
	calif2 <- recibirCalificacion(2);
	calif3 <- recibirCalificacion(3);
	calif4 <- recibirCalificacion(4);
	calif5 <- recibirCalificacion(5);
	
	//Invocación de la función que calcula el promedio de las cinco calificaciones
	calcularPromedio(calif1, calif2, calif3, calif4, calif5);
	
FinProceso

//Función para petición y captura de las calificaciones a promediar
Funcion calificacion <- recibirCalificacion(i)
	Definir numeroPositivo Como Logico;
	Definir calificacion Como Real;
	
	numeroPositivo <- Falso;
	Mientras NO numeroPositivo Hacer
		Escribir "Ingrese el valor de la calificación No. ", i, ":";
		Leer calificacion;
		Si calificacion < 0 O calificacion > 5 Entonces
			Escribir "Error. Ingrese una calificación válida. Una calificación entre cero y cinco.";
		SiNo
			numeroPositivo <- Verdadero;
		FinSi
	FinMientras
FinFuncion

//Función para el cálculo del promedio de las cinco calificaciones
Funcion calcularPromedio (calif1, calif2, calif3, calif4, calif5)
	Definir promedio Como Real;
	
	promedio <- (calif1 + calif2 + calif3 + calif4 + calif5) / 5;
	Escribir "El promedio de las notas es: ", promedio, ".";
	
FinFuncion
	