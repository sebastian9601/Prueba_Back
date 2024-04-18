Proceso Ejercicio1
	
	//definir las variables a utilizar
	Definir promedio, numeroActual, sumaNumeros Como Real
	
	//Variable para la iteracion
	Definir i Como Real
	
	sumaNumeros= 0
	
	Escribir "Calculo del promedio de 15 numeros"
	
	//Definir el ciclo para pedir los 15 numeros
	Para i=1 Hasta 15 Con Paso 1 Hacer
		Escribir "Ingrese el valor del numero ", i,":"
		Leer numeroActual
		sumaNumeros = sumaNumeros + numeroActual
	Fin Para
	
	//calculo y asignacion del promedio de los 15 numeros
	promedio= sumaNumeros / 15 
	
	//visualizar el resultado
	Escribir "El promedio de los 15 numeros ingresados es: ", promedio, "."
	
	
FinProceso
