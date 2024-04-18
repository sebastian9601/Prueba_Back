Proceso Ejercicio5
	Escribir "Cálculo de tablas de multiplicar del 1 al 10.";
	
	//Invocación de la función que calcula las tablas de multiplicar
	calcularTablasMultiplicar();
	
FinProceso

//Función para calcular las tablas de multiplicar
Funcion calcularTablasMultiplicar()
	Definir i, j Como Entero;
	
	Para i<-1 Hasta 10 Con Paso 1 Hacer
		Escribir "Tabla del ", i, ".";
		Para j<-1 Hasta 10 Con Paso 1 Hacer
			Escribir i, " * ", j, " = ", i * j, ".";
		FinPara
		Escribir "";
	FinPara
FinFuncion
