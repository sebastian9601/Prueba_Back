
Funcion rellenaArray(tama�oFilas, tama�oColumnas)
	
	Definir i,j Como Entero
	Definir matrizLectura Como Entero
	
	Dimension matrizLectura[tama�oFilas,tama�oColumnas]
	
	//Bucle que me genera los datos de la matriz
	Para i=0 Hasta tama�oFilas - 1 Con Paso 1 Hacer
		Para j=0 Hasta tama�oColumnas - 1 Con Paso 1 Hacer
			matrizLectura(i,j) = Azar(100)
		Fin Para
	Fin Para
	
	//Bucle que me recorre e imprime por consola la matriz
	
	Escribir "La matriz generada es: "
	Para i=0 Hasta tama�oFilas - 1 Con Paso 1 Hacer
		Para j=0 Hasta tama�oColumnas - 1 Con Paso 1 Hacer
			Escribir Sin Saltar matrizLectura(i,j),", "
		Fin Para
		Escribir ""
	Fin Para
	
Fin Funcion


Algoritmo EjercicioMatrices
	Definir tama�oFilas, tama�oColumnas Como Real
	definir tama�oValido Como Logico
	
	tama�oValido = Falso
	Mientras No tama�oValido hacer 
		
		Escribir "Ingrese el numero de filas que tendra la matriz. "
		Leer tama�oFilas
	
		Si (tama�oFilas > 0 Y (tama�oFilas - trunc(tama�oFilas)) = 0) Entonces
			tama�oValido = Verdadero
		SiNo
			Escribir "Ingrese un numero de filas valido. Mayor que cero y entero"
		FinSi
	FinMientras
	
	tama�oValido = Falso
	Mientras No tama�oValido hacer 
		
		Escribir "Ingrese el numero de columnas que tendra la matriz. "
		Leer tama�oColumnas
		
		Si (tama�oColumnas > 0 Y (tama�oColumnas - trunc(tama�oColumnas)) = 0) Entonces
			tama�oValido = Verdadero
		SiNo
			Escribir "Ingrese un numero de columnas valido. Mayor que cero y entero"
		FinSi
	FinMientras
	
	rellenaArray(tama�oFilas, tama�oColumnas)
	

FinAlgoritmo



