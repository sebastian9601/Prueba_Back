
Funcion rellenaArray(tamañoFilas, tamañoColumnas)
	
	Definir i,j Como Entero
	Definir matrizLectura Como Entero
	
	Dimension matrizLectura[tamañoFilas,tamañoColumnas]
	
	//Bucle que me genera los datos de la matriz
	Para i=0 Hasta tamañoFilas - 1 Con Paso 1 Hacer
		Para j=0 Hasta tamañoColumnas - 1 Con Paso 1 Hacer
			matrizLectura(i,j) = Azar(100)
		Fin Para
	Fin Para
	
	//Bucle que me recorre e imprime por consola la matriz
	
	Escribir "La matriz generada es: "
	Para i=0 Hasta tamañoFilas - 1 Con Paso 1 Hacer
		Para j=0 Hasta tamañoColumnas - 1 Con Paso 1 Hacer
			Escribir Sin Saltar matrizLectura(i,j),", "
		Fin Para
		Escribir ""
	Fin Para
	
Fin Funcion


Algoritmo EjercicioMatrices
	Definir tamañoFilas, tamañoColumnas Como Real
	definir tamañoValido Como Logico
	
	tamañoValido = Falso
	Mientras No tamañoValido hacer 
		
		Escribir "Ingrese el numero de filas que tendra la matriz. "
		Leer tamañoFilas
	
		Si (tamañoFilas > 0 Y (tamañoFilas - trunc(tamañoFilas)) = 0) Entonces
			tamañoValido = Verdadero
		SiNo
			Escribir "Ingrese un numero de filas valido. Mayor que cero y entero"
		FinSi
	FinMientras
	
	tamañoValido = Falso
	Mientras No tamañoValido hacer 
		
		Escribir "Ingrese el numero de columnas que tendra la matriz. "
		Leer tamañoColumnas
		
		Si (tamañoColumnas > 0 Y (tamañoColumnas - trunc(tamañoColumnas)) = 0) Entonces
			tamañoValido = Verdadero
		SiNo
			Escribir "Ingrese un numero de columnas valido. Mayor que cero y entero"
		FinSi
	FinMientras
	
	rellenaArray(tamañoFilas, tamañoColumnas)
	

FinAlgoritmo



