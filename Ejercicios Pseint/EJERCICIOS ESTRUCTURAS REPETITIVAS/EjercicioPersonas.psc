Algoritmo EjercicioPersonas
	
	Definir cantidadPersonas, edad, sumaEdades, promedioEdades Como Real
	
	Escribir "Ingrese la cantidad de personas:"
	Leer cantidadPersonas
	
	sumaEdades = 0
	
	Para i = 1 Hasta cantidadPersonas Con Paso 1 Hacer
		Escribir "Ingrese la edad de la persona ", i , ":"
		Leer edad
		sumaEdades = sumaEdades + edad
	FinPara
	
	promedioEdades = sumaEdades / cantidadPersonas
	
	Escribir "EL promedio de las ",cantidadPersonas, "perosnas es: ", promedioEdades
	
	
FinAlgoritmo
