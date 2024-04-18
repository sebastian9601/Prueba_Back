Algoritmo Ejercicio3
	//Definición de variables.
	Definir i, j, k Como Entero;
	Definir matrizLectura Como Real;
	Definir tamanhoFilas, tamanhoColumnas, valorElem, arrayUnico Como Real;
	Definir tamanhoValido Como Logico;
	
	//Asignación de la variabl que controlará el recorrido del vector.
	k <- 0;
	
	//Petición, validación y asignación del número de filas que tendrá la matriz.
	tamanhoValido <- Falso;
	Mientras NO tamanhoValido Hacer
		Escribir "Ingrese el número de filas que tendrá la matriz.";
		Leer tamanhoFilas;
		
		Si (tamanhoFilas > 0 Y (tamanhoFilas - trunc(tamanhoFilas)) = 0) Entonces
			tamanhoValido <- Verdadero;
			////Esta línea verifica si "tamanhoFilas" es mayor que cero y si su diferencia con su 
			//parte entera es igual a cero. En otras palabras, verifica si "tamanhoFilas" 
			//es un número entero positivo
		SiNo
			Escribir "Ingrese un número de filas válido. Mayor que cero y entero.";
		FinSi
	FinMientras
	
	//Petición, validación y asignación del número de columnas que tendrá la matriz.
	tamanhoValido <- Falso;
	Mientras NO tamanhoValido Hacer
		Escribir "Ingrese el número de columnas que tendrá la matriz.";
		Leer tamanhoColumnas;
		
		Si (tamanhoColumnas > 0 Y (tamanhoColumnas - trunc(tamanhoColumnas)) = 0) Entonces
			tamanhoValido <- Verdadero;
		SiNo
			Escribir "Ingrese un número de columnas válido. Mayor que cero y entero.";
		FinSi
	FinMientras
	
	//Definición de la dimensión de la matriz.
	Dimension matrizLectura[tamanhoFilas, tamanhoColumnas];
	
	//Definición de la dimensión del vector.
	Dimension arrayUnico[tamanhoFilas * tamanhoColumnas];
	
	//Generación de los elementos de la matriz y asignación de los elementos al vector.
	Para i<-0 Hasta tamanhoFilas - 1 Con Paso 1 Hacer
		Para j<-0 Hasta tamanhoColumnas - 1 Con Paso 1 Hacer
			matrizLectura(i, j) <- Azar(100);
			//En esta línea, se asigna un número aleatorio entre 0 y 100 a la posición 
			//(i, j) de la matriz "matrizLectura". La función "Azar(100)" genera un número aleatorio en el rango de 0 a 100.
			arrayUnico(k) <- matrizLectura(i, j);
			//Esta línea asigna el valor de la posición (i, j) de la matriz "matrizLectura" a la posición "k" del arreglo 
			//"arrayUnico". Se supone que la variable "k" se ha declarado anteriormente y se utiliza para rastrear la posición en el arreglo.
			k <- k + 1;
			//Esta línea incrementa el valor de la variable "k" en 1. Se utiliza para avanzar a la siguiente posición del arreglo 
			//"arrayUnico" en la que se almacenará el siguiente elemento de la matriz.
		Fin Para
	Fin Para
	
	//Visualización de los elementos de la matriz.
	Escribir "Matriz generada:";
	Para i<-0 Hasta tamanhoFilas - 1 Con Paso 1 Hacer
		//Esta línea inicia un bucle "para" con la variable "i" que va desde 0 hasta "tamanhoFilas - 1" con incrementos de 1.
		//Este bucle se utiliza para recorrer las filas de la matriz.
		Para j<-0 Hasta tamanhoColumnas - 1 Con Paso 1 Hacer
			//Esta línea inicia un bucle "para" anidado con la variable "j" que va desde 0 hasta "tamanhoColumnas - 1" con 
			//incrementos de 1. Este bucle se utiliza para recorrer las columnas de la matriz.
			Escribir Sin Saltar matrizLectura(i, j), " ";
			//En esta línea se muestra en la salida el valor del elemento en la posición (i, j) de la matriz "matrizLectura". 
			//Utilizando "Escribir Sin Saltar" se imprime sin agregar un salto de línea. Luego se agrega un espacio en blanco 
			//para separar los elementos.
		Fin Para
		Escribir "";
		//Esta línea agrega un salto de línea en la salida después de mostrar todos los elementos de una fila de la matriz. 
		//Esto crea una separación visual entre las filas de la matriz.
	Fin Para
	
	//Visualización de los elementos del vector.
	Escribir "Vector generado:";
	Para i<-0 Hasta ((tamanhoFilas * tamanhoColumnas) - 1) Con Paso 1 Hacer
		//Esta línea inicia un bucle "para" con la variable "i" que va desde 0 hasta el resultado de la operación 
		//"(tamanhoFilas * tamanhoColumnas) - 1" con incrementos de 1. Este bucle se utiliza para recorrer los elementos del vector "arrayUnico"
		Escribir Sin Saltar arrayUnico(i), " ";
		//En esta línea se muestra en la salida el valor del elemento en la posición "i" del vector "arrayUnico". Utilizando "Escribir Sin 
		//Saltar" se imprime sin agregar un salto de línea. Luego se agrega un espacio en blanco para separar los elementos.
	Fin Para
FinAlgoritmo