//Algoritmo que suma los numeros leidos hasta que ingrese un numero menor o igual a 0

Algoritmo sumarMientras
	
	definir num Como Entero
	
	Escribir "Ingrese numero"
	Leer num
	
	suma = 0
	
	Mientras num > 0 Hacer
		suma = suma + num
		Escribir "Ingrese numero:"
		leer num
	Fin Mientras
	
	Escribir "La sumatoria es :" suma
	
FinAlgoritmo
