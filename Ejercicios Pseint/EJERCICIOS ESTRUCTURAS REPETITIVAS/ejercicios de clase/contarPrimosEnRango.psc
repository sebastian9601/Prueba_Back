Algoritmo contarPrimosEnRango
	
	Definir num, contadorDivisores, i, inicioRango, finRango, contadorPrimos Como Entero
	
	Escribir "Ingrese el inicio del rango: "
	Leer inicioRango
	
	Escribir "Ingrese el fin del rango: "
	Leer finRango
	
	contadorPrimos = 0
	
	Para i = inicioRango Hasta finRango Con Paso 1 Hacer
		contadorDivisores = 0
		
		Para j = 1 Hasta i Con Paso 1 Hacer
			si i MOD j = 0 Entonces
				contadorDivisores = contadorDivisores + 1
			FinSi
		Fin Para
		
		si contadorDivisores = 2 Entonces
			contadorPrimos = contadorPrimos + 1
		FinSi
	Fin Para
	
	Escribir "Se encontraron ", contadorPrimos, " números primos en el rango."
	
FinAlgoritmo

