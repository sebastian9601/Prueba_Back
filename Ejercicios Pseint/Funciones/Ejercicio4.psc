Proceso Ejercicio4
	//Definici�n variables necesariasm para el desarrollo del ejercicio
	Definir cantidadEnPesosMexicanos, cantidadEnDolares Como Real;
	Definir cantidadPositiva Como Logico;
	
	Escribir "Conversi�n de pesos mexicanos a d�lares estadounidenses.";
	
	//Validaci�n del valor ingresado
	cantidadPositiva <- Falso;
	Mientras NO cantidadPositiva Hacer
		Escribir "Ingrese el valor a convertir.";
		Leer cantidadEnPesosMexicanos;
		
		Si cantidadEnPesosMexicanos < 0 Entonces
			Escribir "Error. Ingrese una cantidad positiva.";
		SiNo
			cantidadPositiva <- Verdadero;
		FinSi
	FinMientras
	
	//Asignaci�n a la variable cantidadEnDolares lo que se retorna de la funcion invocada
	cantidadEnDolares <- convertirDePesosMexicanosADolares (cantidadEnPesosMexicanos);
	
	//Mostrando resultado
	Escribir cantidadEnPesosMexicanos, " pesos mexicanos equivalen a ", cantidadEnDolares, " d�lares.";
FinProceso

//Funci�n para convertir a dolares estadounidenses un valor dado en pesos mexicanos 
Funcion cantidadEnDolares <- convertirDePesosMexicanosADolares (cantidadEnPesosMexicanos)
	Definir cantidadEnDolares Como Real;
	//1 peso mexicano = 0.056 dolares estadounidenses
	cantidadEnDolares <- 0.056 * cantidadEnPesosMexicanos;
FinFuncion
	