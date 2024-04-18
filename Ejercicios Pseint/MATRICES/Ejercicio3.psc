Algoritmo Ejercicio3
	//Definici�n de variables.
	Definir i, j, k Como Entero;
	Definir matrizLectura Como Real;
	Definir tamanhoFilas, tamanhoColumnas, valorElem, arrayUnico Como Real;
	Definir tamanhoValido Como Logico;
	
	//Asignaci�n de la variabl que controlar� el recorrido del vector.
	k <- 0;
	
	//Petici�n, validaci�n y asignaci�n del n�mero de filas que tendr� la matriz.
	tamanhoValido <- Falso;
	Mientras NO tamanhoValido Hacer
		Escribir "Ingrese el n�mero de filas que tendr� la matriz.";
		Leer tamanhoFilas;
		
		Si (tamanhoFilas > 0 Y (tamanhoFilas - trunc(tamanhoFilas)) = 0) Entonces
			tamanhoValido <- Verdadero;
			////Esta l�nea verifica si "tamanhoFilas" es mayor que cero y si su diferencia con su 
			//parte entera es igual a cero. En otras palabras, verifica si "tamanhoFilas" 
			//es un n�mero entero positivo
		SiNo
			Escribir "Ingrese un n�mero de filas v�lido. Mayor que cero y entero.";
		FinSi
	FinMientras
	
	//Petici�n, validaci�n y asignaci�n del n�mero de columnas que tendr� la matriz.
	tamanhoValido <- Falso;
	Mientras NO tamanhoValido Hacer
		Escribir "Ingrese el n�mero de columnas que tendr� la matriz.";
		Leer tamanhoColumnas;
		
		Si (tamanhoColumnas > 0 Y (tamanhoColumnas - trunc(tamanhoColumnas)) = 0) Entonces
			tamanhoValido <- Verdadero;
		SiNo
			Escribir "Ingrese un n�mero de columnas v�lido. Mayor que cero y entero.";
		FinSi
	FinMientras
	
	//Definici�n de la dimensi�n de la matriz.
	Dimension matrizLectura[tamanhoFilas, tamanhoColumnas];
	
	//Definici�n de la dimensi�n del vector.
	Dimension arrayUnico[tamanhoFilas * tamanhoColumnas];
	
	//Generaci�n de los elementos de la matriz y asignaci�n de los elementos al vector.
	Para i<-0 Hasta tamanhoFilas - 1 Con Paso 1 Hacer
		Para j<-0 Hasta tamanhoColumnas - 1 Con Paso 1 Hacer
			matrizLectura(i, j) <- Azar(100);
			//En esta l�nea, se asigna un n�mero aleatorio entre 0 y 100 a la posici�n 
			//(i, j) de la matriz "matrizLectura". La funci�n "Azar(100)" genera un n�mero aleatorio en el rango de 0 a 100.
			arrayUnico(k) <- matrizLectura(i, j);
			//Esta l�nea asigna el valor de la posici�n (i, j) de la matriz "matrizLectura" a la posici�n "k" del arreglo 
			//"arrayUnico". Se supone que la variable "k" se ha declarado anteriormente y se utiliza para rastrear la posici�n en el arreglo.
			k <- k + 1;
			//Esta l�nea incrementa el valor de la variable "k" en 1. Se utiliza para avanzar a la siguiente posici�n del arreglo 
			//"arrayUnico" en la que se almacenar� el siguiente elemento de la matriz.
		Fin Para
	Fin Para
	
	//Visualizaci�n de los elementos de la matriz.
	Escribir "Matriz generada:";
	Para i<-0 Hasta tamanhoFilas - 1 Con Paso 1 Hacer
		//Esta l�nea inicia un bucle "para" con la variable "i" que va desde 0 hasta "tamanhoFilas - 1" con incrementos de 1.
		//Este bucle se utiliza para recorrer las filas de la matriz.
		Para j<-0 Hasta tamanhoColumnas - 1 Con Paso 1 Hacer
			//Esta l�nea inicia un bucle "para" anidado con la variable "j" que va desde 0 hasta "tamanhoColumnas - 1" con 
			//incrementos de 1. Este bucle se utiliza para recorrer las columnas de la matriz.
			Escribir Sin Saltar matrizLectura(i, j), " ";
			//En esta l�nea se muestra en la salida el valor del elemento en la posici�n (i, j) de la matriz "matrizLectura". 
			//Utilizando "Escribir Sin Saltar" se imprime sin agregar un salto de l�nea. Luego se agrega un espacio en blanco 
			//para separar los elementos.
		Fin Para
		Escribir "";
		//Esta l�nea agrega un salto de l�nea en la salida despu�s de mostrar todos los elementos de una fila de la matriz. 
		//Esto crea una separaci�n visual entre las filas de la matriz.
	Fin Para
	
	//Visualizaci�n de los elementos del vector.
	Escribir "Vector generado:";
	Para i<-0 Hasta ((tamanhoFilas * tamanhoColumnas) - 1) Con Paso 1 Hacer
		//Esta l�nea inicia un bucle "para" con la variable "i" que va desde 0 hasta el resultado de la operaci�n 
		//"(tamanhoFilas * tamanhoColumnas) - 1" con incrementos de 1. Este bucle se utiliza para recorrer los elementos del vector "arrayUnico"
		Escribir Sin Saltar arrayUnico(i), " ";
		//En esta l�nea se muestra en la salida el valor del elemento en la posici�n "i" del vector "arrayUnico". Utilizando "Escribir Sin 
		//Saltar" se imprime sin agregar un salto de l�nea. Luego se agrega un espacio en blanco para separar los elementos.
	Fin Para
FinAlgoritmo