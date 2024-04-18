Algoritmo Ejercicio1
	//Definición de variables.
	Definir tamanhoFilas, tamanhoColumnas Como Real;
	Definir tamanhoValido Como Logico;
	
	//Petición, validación y asignación del número de filas que tendrá la matriz.
	tamanhoValido <- Falso; //Aquí se inicializa la variable "tamanhoValido" con el valor falso, 
	//lo que indica que los tamaños aún no han sido validados.
	Mientras NO tamanhoValido Hacer
		//Inicio de un bucle mientras, que continuará ejecutándose mientras "tamanhoValido" sea falso, 
		//es decir, hasta que se ingresen tamaños válidos.
		Escribir "Ingrese el número de filas que tendrá la matriz.";
		Leer tamanhoFilas;
		
		Si (tamanhoFilas > 0 Y (tamanhoFilas - trunc(tamanhoFilas)) = 0) Entonces
			//Esta línea verifica si "tamanhoFilas" es mayor que cero y si su diferencia con su parte entera 
			//es igual a cero. En otras palabras, verifica si "tamanhoFilas" es un número entero positivo.
			tamanhoValido <- Verdadero;
			//Si la condición anterior es verdadera, se asigna el valor verdadero a la variable "tamanhoValido",
			//indicando que el tamaño de las filas es válido.
		SiNo
			Escribir "Ingrese un número de filas válido. Mayor que cero y entero.";
		FinSi
	FinMientras
	
	//Petición, validación y asignación del número de columnas que tendrá la matriz.
	tamanhoValido <- Falso;
	Mientras NO tamanhoValido Hacer
		//Se repite el bucle mientras para solicitar y validar el número de columnas 
		//de la matriz.
		Escribir "Ingrese el número de columnas que tendrá la matriz.";
		Leer tamanhoColumnas;
		
		Si (tamanhoColumnas > 0 Y (tamanhoColumnas - trunc(tamanhoColumnas)) = 0) Entonces
			tamanhoValido <- Verdadero;
			//Esta línea verifica si "tamanhoColumnas" es mayor que cero y si su diferencia con su parte 
			//entera es igual a cero. En otras palabras, verifica si "tamanhoColumnas" es un número entero positivo.
		    //Si la condición anterior es verdadera, se asigna el valor verdadero a la variable "tamanhoValido",
			//indicando que el tamaño de las columnas es válido.	
		SiNo
			Escribir "Ingrese un número de columnas válido. Mayor que cero y entero.";
		FinSi
	FinMientras
	
	//Llamado a la función que genera y muestra la matriz.
	rellenaArray(tamanhoFilas,tamanhoColumnas);
FinAlgoritmo

Funcion rellenaArray(tamanhoFilas,tamanhoColumnas)
	//Definición de variables.
	Definir i, j Como Entero;
	Definir matrizLectura Como Real;
	//Se declara una variable llamada "matrizLectura" como un arreglo 
	//unidimensional de números reales. Esta variable se utilizará para almacenar los elementos de la matriz.
	
	//Definición de la dimensión de la matriz.
	Dimension matrizLectura[tamanhoFilas, tamanhoColumnas];
	//Esta línea define la dimensión de la matriz "matrizLectura" utilizando los tamaños de filas y columnas 
	//proporcionados como argumentos.
	
	//Generación de los elementos de la matriz.
	Para i<-0 Hasta tamanhoFilas - 1 Con Paso 1 Hacer
		//Se inicia un bucle "para" con la variable "i" que irá desde 0 hasta "tamanhoFilas - 1" con incrementos 
		//de 1. Este bucle recorrerá las filas de la matriz.
		Para j<-0 Hasta tamanhoColumnas - 1 Con Paso 1 Hacer
			//Se inicia un bucle "para" anidado con la variable "j" que irá desde 0 hasta "tamanhoColumnas - 1" 
			//con incrementos de 1. Este bucle recorrerá las columnas de la matriz.
			matrizLectura(i, j) <- Azar(100);
			//En esta línea se asigna un número aleatorio entre 0 y 100 a la posición (i, j) de la matriz 
			//"matrizLectura".
		Fin Para
	Fin Para
	
	//Visualización de los elementos de la matriz.
	Escribir "La matriz generada es:";
	Para i<-0 Hasta tamanhoFilas - 1 Con Paso 1 Hacer
		//Se inicia otro bucle "para" con la variable "i" que irá desde 0 hasta "tamanhoFilas - 1" con incrementos 
		//de 1. Este bucle recorrerá las filas de la matriz para mostrar sus elementos.
		Para j<-0 Hasta tamanhoColumnas - 1 Con Paso 1 Hacer
			//Se inicia un bucle "para" anidado con la variable "j" que irá desde 0 hasta "tamanhoColumn
			//as - 1" con incrementos de 1. Este bucle recorrerá las columnas de la matriz para mostrar sus elementos.
			Escribir Sin Saltar matrizLectura(i, j), " ";
			//En esta línea se muestra el valor del elemento en la posición (i, j) de la matriz "matrizLectura" sin 
			//agregar un salto de línea. Luego se agrega un espacio en blanco para separar los elementos.
		Fin Para
		Escribir "";
		//Esta línea agrega un salto de línea en la salida después de mostrar todos los elementos de una fila de la matriz.
	Fin Para
FinFuncion