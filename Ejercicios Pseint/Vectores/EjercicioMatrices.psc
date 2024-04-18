
Funcion rellenaArray(tamaņoFilas, tamaņoColumnas)
	
	Definir i,j Como Entero
	Definir matrizLectura Como Entero
	
	Dimension matrizLectura[tamaņoFilas,tamaņoColumnas]
	
	//Bucle que me genera los datos de la matriz
	Para i=0 Hasta tamaņoFilas - 1 Con Paso 1 Hacer
		Para j=0 Hasta tamaņoColumnas - 1 Con Paso 1 Hacer
			matrizLectura(i,j) = Azar(100)
		Fin Para
	Fin Para
	
	//Bucle que me recorre e imprime por consola la matriz
	
	Escribir "La matriz generada es: "
	Para i=0 Hasta tamaņoFilas - 1 Con Paso 1 Hacer
		Para j=0 Hasta tamaņoColumnas - 1 Con Paso 1 Hacer
			Escribir Sin Saltar matrizLectura(i,j),", "
		Fin Para
		Escribir ""
	Fin Para
	
Fin Funcion


Algoritmo EjercicioMatrices
	Definir tamaņoFilas, tamaņoColumnas Como Real
	definir tamaņoValido Como Logico
	
	tamaņoValido = Falso
	Mientras No tamaņoValido hacer 
		
		Escribir "Ingrese el numero de filas que tendra la matriz. "
		Leer tamaņoFilas
	
		Si (tamaņoFilas > 0 Y (tamaņoFilas - trunc(tamaņoFilas)) = 0) Entonces
			tamaņoValido = Verdadero
		SiNo
			Escribir "Ingrese un numero de filas valido. Mayor que cero y entero"
		FinSi
	FinMientras
	
	tamaņoValido = Falso
	Mientras No tamaņoValido hacer 
		
		Escribir "Ingrese el numero de columnas que tendra la matriz. "
		Leer tamaņoColumnas
		
		Si (tamaņoColumnas > 0 Y (tamaņoColumnas - trunc(tamaņoColumnas)) = 0) Entonces
			tamaņoValido = Verdadero
		SiNo
			Escribir "Ingrese un numero de columnas valido. Mayor que cero y entero"
		FinSi
	FinMientras
	
	rellenaArray(tamaņoFilas, tamaņoColumnas)
	

FinAlgoritmo



