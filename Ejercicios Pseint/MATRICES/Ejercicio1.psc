Algoritmo Ejercicio1
	//Definici�n de variables.
	Definir tamanhoFilas, tamanhoColumnas Como Real;
	Definir tamanhoValido Como Logico;
	
	//Petici�n, validaci�n y asignaci�n del n�mero de filas que tendr� la matriz.
	tamanhoValido <- Falso; //Aqu� se inicializa la variable "tamanhoValido" con el valor falso, 
	//lo que indica que los tama�os a�n no han sido validados.
	Mientras NO tamanhoValido Hacer
		//Inicio de un bucle mientras, que continuar� ejecut�ndose mientras "tamanhoValido" sea falso, 
		//es decir, hasta que se ingresen tama�os v�lidos.
		Escribir "Ingrese el n�mero de filas que tendr� la matriz.";
		Leer tamanhoFilas;
		
		Si (tamanhoFilas > 0 Y (tamanhoFilas - trunc(tamanhoFilas)) = 0) Entonces
			//Esta l�nea verifica si "tamanhoFilas" es mayor que cero y si su diferencia con su parte entera 
			//es igual a cero. En otras palabras, verifica si "tamanhoFilas" es un n�mero entero positivo.
			tamanhoValido <- Verdadero;
			//Si la condici�n anterior es verdadera, se asigna el valor verdadero a la variable "tamanhoValido",
			//indicando que el tama�o de las filas es v�lido.
		SiNo
			Escribir "Ingrese un n�mero de filas v�lido. Mayor que cero y entero.";
		FinSi
	FinMientras
	
	//Petici�n, validaci�n y asignaci�n del n�mero de columnas que tendr� la matriz.
	tamanhoValido <- Falso;
	Mientras NO tamanhoValido Hacer
		//Se repite el bucle mientras para solicitar y validar el n�mero de columnas 
		//de la matriz.
		Escribir "Ingrese el n�mero de columnas que tendr� la matriz.";
		Leer tamanhoColumnas;
		
		Si (tamanhoColumnas > 0 Y (tamanhoColumnas - trunc(tamanhoColumnas)) = 0) Entonces
			tamanhoValido <- Verdadero;
			//Esta l�nea verifica si "tamanhoColumnas" es mayor que cero y si su diferencia con su parte 
			//entera es igual a cero. En otras palabras, verifica si "tamanhoColumnas" es un n�mero entero positivo.
		    //Si la condici�n anterior es verdadera, se asigna el valor verdadero a la variable "tamanhoValido",
			//indicando que el tama�o de las columnas es v�lido.	
		SiNo
			Escribir "Ingrese un n�mero de columnas v�lido. Mayor que cero y entero.";
		FinSi
	FinMientras
	
	//Llamado a la funci�n que genera y muestra la matriz.
	rellenaArray(tamanhoFilas,tamanhoColumnas);
FinAlgoritmo

Funcion rellenaArray(tamanhoFilas,tamanhoColumnas)
	//Definici�n de variables.
	Definir i, j Como Entero;
	Definir matrizLectura Como Real;
	//Se declara una variable llamada "matrizLectura" como un arreglo 
	//unidimensional de n�meros reales. Esta variable se utilizar� para almacenar los elementos de la matriz.
	
	//Definici�n de la dimensi�n de la matriz.
	Dimension matrizLectura[tamanhoFilas, tamanhoColumnas];
	//Esta l�nea define la dimensi�n de la matriz "matrizLectura" utilizando los tama�os de filas y columnas 
	//proporcionados como argumentos.
	
	//Generaci�n de los elementos de la matriz.
	Para i<-0 Hasta tamanhoFilas - 1 Con Paso 1 Hacer
		//Se inicia un bucle "para" con la variable "i" que ir� desde 0 hasta "tamanhoFilas - 1" con incrementos 
		//de 1. Este bucle recorrer� las filas de la matriz.
		Para j<-0 Hasta tamanhoColumnas - 1 Con Paso 1 Hacer
			//Se inicia un bucle "para" anidado con la variable "j" que ir� desde 0 hasta "tamanhoColumnas - 1" 
			//con incrementos de 1. Este bucle recorrer� las columnas de la matriz.
			matrizLectura(i, j) <- Azar(100);
			//En esta l�nea se asigna un n�mero aleatorio entre 0 y 100 a la posici�n (i, j) de la matriz 
			//"matrizLectura".
		Fin Para
	Fin Para
	
	//Visualizaci�n de los elementos de la matriz.
	Escribir "La matriz generada es:";
	Para i<-0 Hasta tamanhoFilas - 1 Con Paso 1 Hacer
		//Se inicia otro bucle "para" con la variable "i" que ir� desde 0 hasta "tamanhoFilas - 1" con incrementos 
		//de 1. Este bucle recorrer� las filas de la matriz para mostrar sus elementos.
		Para j<-0 Hasta tamanhoColumnas - 1 Con Paso 1 Hacer
			//Se inicia un bucle "para" anidado con la variable "j" que ir� desde 0 hasta "tamanhoColumn
			//as - 1" con incrementos de 1. Este bucle recorrer� las columnas de la matriz para mostrar sus elementos.
			Escribir Sin Saltar matrizLectura(i, j), " ";
			//En esta l�nea se muestra el valor del elemento en la posici�n (i, j) de la matriz "matrizLectura" sin 
			//agregar un salto de l�nea. Luego se agrega un espacio en blanco para separar los elementos.
		Fin Para
		Escribir "";
		//Esta l�nea agrega un salto de l�nea en la salida despu�s de mostrar todos los elementos de una fila de la matriz.
	Fin Para
FinFuncion