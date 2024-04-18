Proceso Ejercicio3
	//Definici�n variables necesariasm para el desarrollo del ejercicio
	Definir calif1, calif2, calif3, calif4, calif5 Como Entero;
	Definir i Como Entero;
	
	Escribir "C�lculo del promedio de cinco calificaciones.";
	//Invocaci�n funci�n para la petici�n de las calificaciones y asignaci�n a sus respectivas variables
	calif1 <- recibirCalificacion(1);
	calif2 <- recibirCalificacion(2);
	calif3 <- recibirCalificacion(3);
	calif4 <- recibirCalificacion(4);
	calif5 <- recibirCalificacion(5);
	
	//Invocaci�n de la funci�n que calcula el promedio de las cinco calificaciones
	calcularPromedio(calif1, calif2, calif3, calif4, calif5);
	
FinProceso

//Funci�n para petici�n y captura de las calificaciones a promediar
Funcion calificacion <- recibirCalificacion(i)
	Definir numeroPositivo Como Logico;
	Definir calificacion Como Real;
	
	numeroPositivo <- Falso;
	Mientras NO numeroPositivo Hacer
		Escribir "Ingrese el valor de la calificaci�n No. ", i, ":";
		Leer calificacion;
		Si calificacion < 0 O calificacion > 5 Entonces
			Escribir "Error. Ingrese una calificaci�n v�lida. Una calificaci�n entre cero y cinco.";
		SiNo
			numeroPositivo <- Verdadero;
		FinSi
	FinMientras
FinFuncion

//Funci�n para el c�lculo del promedio de las cinco calificaciones
Funcion calcularPromedio (calif1, calif2, calif3, calif4, calif5)
	Definir promedio Como Real;
	
	promedio <- (calif1 + calif2 + calif3 + calif4 + calif5) / 5;
	Escribir "El promedio de las notas es: ", promedio, ".";
	
FinFuncion
	