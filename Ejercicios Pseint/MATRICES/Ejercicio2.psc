Algoritmo Ejercicio2
	//Definición de variables.
	Definir i, j Como Entero;
	Definir matrizLectura Como Real;
	Definir tamanhoFilas, tamanhoColumnas, valorElem1, valorElem2 Como Real;
	Definir tamanhoValido Como Logico;
	
	//Asignación del número de columnas que tendrá la matriz.
	tamanhoColumnas <- 3;
	
	//Petición, validación y asignación del número de filas que tendrá la matriz.
	tamanhoValido <- Falso;
	//Esta línea asigna el valor falso a la variable "tamanhoValido". Esta variable se 
	//utiliza para verificar si el tamaño ingresado es válido.


	Mientras NO tamanhoValido Hacer
		//Esta línea marca el comienzo de un bucle "mientras". El bucle se ejecutará 
		//mientras "tamanhoValido" sea falso, es decir, hasta que se ingrese un tamaño válido.
		Escribir "Ingrese el número de filas que tendrá la matriz.";
		Leer tamanhoFilas;
		
		Si (tamanhoFilas > 0 Y (tamanhoFilas - trunc(tamanhoFilas)) = 0) Entonces
			//Esta línea verifica si "tamanhoFilas" es mayor que cero y si su diferencia con su 
			//parte entera es igual a cero. En otras palabras, verifica si "tamanhoFilas" es un número entero positivo.
			tamanhoValido <- Verdadero;
			//Si la condición en la línea 6 es verdadera, se asigna el valor verdadero a la variable "tamanhoValido". 
			//Esto indica que el tamaño ingresado es válido.
		SiNo
		//Si la condición en la línea 6 es falsa, se ejecuta el bloque SiNo.	
			Escribir "Ingrese un número de filas válido. Mayor que cero y entero.";
			
		FinSi
	FinMientras
	
	//Definición de la dimensión de la matriz.
	Dimension matrizLectura[tamanhoFilas, tamanhoColumnas];
	//Esta línea define la dimensión de la matriz "matrizLectura" utilizando los tamaños de filas y columnas proporcionados anteriormente.
	//Crea una matriz bidimensional con el número de filas y columnas especificadas.
	
	//Construcción de la matriz a partir de la petición y asignación de las dos primeras columnas y el cálculo de la tercera para cada fila.
	Para i<-0 Hasta tamanhoFilas - 1 Con Paso 1 Hacer
		//Esta línea inicia un bucle "para" con la variable "i" que va desde 0 hasta "tamanhoFilas - 1" con incrementos de 1. Este bucle se 
		//utiliza para recorrer las filas de la matriz y realizar operaciones en cada fila.
		Escribir "Ingrese el valor correspondiente a la posición (", i, ", ", 0, "):";
		//Esta línea muestra un mensaje en la salida para solicitar al usuario que ingrese el valor correspondiente a la posición (i, 0) de 
		//la matriz. Aquí, "i" representa el número de fila actual.
		Leer valorElem1;
		//Esta línea lee el valor ingresado por el usuario y lo guarda en la variable "valorElem1". Este valor corresponde a la
		//posición (i, 0) de la matriz.
		matrizLectura(i, 0) <- valorElem1;
		//En esta línea, se asigna el valor ingresado por el usuario a la posición (i, 0) de la matriz "matrizLectura"
		
		Escribir "Ingrese el valor correspondiente a la posición (", i, ", ", 1, "):";
		//Esta línea muestra un mensaje en la salida para solicitar al usuario que ingrese el valor correspondiente a la posición 
		//(i, 1) de la matriz. Aquí, "i" representa el número de fila actual.
		Leer valorElem2;
		//Esta línea lee el valor ingresado por el usuario y lo guarda en la variable "valorElem2". Este valor corresponde a 
		//la posición (i, 1) de la matriz.
		matrizLectura(i, 1) <- valorElem2;
		//En esta línea, se asigna el valor ingresado por el usuario a la posición (i, 1) de la matriz "matrizLectura".
		
		matrizLectura(i, 2) <- valorElem1 + valorElem2;
		//Esta línea calcula la suma de "valorElem1" y "valorElem2" y asigna el resultado a la posición (i, 2) de la matriz 
		//"matrizLectura". Aquí se realiza el cálculo de la tercera columna de cada fila de la matriz.
	Fin Para
	
	//Visualización de los elementos de la matriz.
	Escribir "La matriz generada es:";
	Para i<-0 Hasta tamanhoFilas - 1 Con Paso 1 Hacer
		//Esta línea inicia otro bucle "para" con la variable "i" que va desde 0 hasta "tamanhoFilas - 1" con incrementos 
		//de 1. Este bucle se utiliza para recorrer las filas de la matriz y mostrar los elementos.
		Escribir matrizLectura(i, 0), " + ", matrizLectura(i, 1), " = ", matrizLectura(i, 2);
		//En esta línea se muestra en la salida el valor de la posición (i, 0) seguido de un signo de suma, el valor de 
		//la posición (i, 1), un signo igual y finalmente el valor de la posición (i, 2) de la matriz "matrizLectura".
	Fin Para
	
FinAlgoritmo


