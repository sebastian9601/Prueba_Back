Proceso Ejercio4
	
	Definir limiteNumeros, mayor , numeroIngresado Como Real
	
	Definir i Como Entero
	
	Definir bandera Como Logico
	
	Escribir "Calculo del mayor numero de n numeros"
	
	bandera = Verdadero
	Mientras bandera Hacer
		Escribir "Ingrese la cantidad de numeros a evaluar: "
		Leer limiteNumeros
		Si (limiteNumeros <= 0) Entonces
			Escribir "Error la cantidad de numeros no puede ser menor o igual a 0"
		SiNo
			Si(limiteNumeros - trunc(limiteNumeros) <> 0)Entonces
				Escribir "Error la cantidad de numeros debe ser entera "
			SiNo
				bandera = Falso
			FinSi
		FinSi
	FinMientras
	
	//Evaluar el numero mayor
	Para i = 1 Hasta limiteNumeros Con Paso 1 Hacer
		Escribir "Ingrese el numero ", i , ":"
		Leer numeroIngresado
		
		Si i = 1 Entonces
			mayor = numeroIngresado
		FinSi
		
		Si numeroIngresado > mayor Entonces
			mayor = numeroIngresado
		FinSi
	Fin Para
	
	
	Escribir "De los " , limiteNumeros , "numeros ingresados, el mayor fue: ", mayor, " "
	
	
FinProceso
