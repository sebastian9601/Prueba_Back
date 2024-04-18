Algoritmo Ejercicio2
	//Definici�n de variables.
	Definir i, j Como Entero;
	Definir matrizLectura Como Real;
	Definir tamanhoFilas, tamanhoColumnas, valorElem1, valorElem2 Como Real;
	Definir tamanhoValido Como Logico;
	
	//Asignaci�n del n�mero de columnas que tendr� la matriz.
	tamanhoColumnas <- 3;
	
	//Petici�n, validaci�n y asignaci�n del n�mero de filas que tendr� la matriz.
	tamanhoValido <- Falso;
	//Esta l�nea asigna el valor falso a la variable "tamanhoValido". Esta variable se 
	//utiliza para verificar si el tama�o ingresado es v�lido.


	Mientras NO tamanhoValido Hacer
		//Esta l�nea marca el comienzo de un bucle "mientras". El bucle se ejecutar� 
		//mientras "tamanhoValido" sea falso, es decir, hasta que se ingrese un tama�o v�lido.
		Escribir "Ingrese el n�mero de filas que tendr� la matriz.";
		Leer tamanhoFilas;
		
		Si (tamanhoFilas > 0 Y (tamanhoFilas - trunc(tamanhoFilas)) = 0) Entonces
			//Esta l�nea verifica si "tamanhoFilas" es mayor que cero y si su diferencia con su 
			//parte entera es igual a cero. En otras palabras, verifica si "tamanhoFilas" es un n�mero entero positivo.
			tamanhoValido <- Verdadero;
			//Si la condici�n en la l�nea 6 es verdadera, se asigna el valor verdadero a la variable "tamanhoValido". 
			//Esto indica que el tama�o ingresado es v�lido.
		SiNo
		//Si la condici�n en la l�nea 6 es falsa, se ejecuta el bloque SiNo.	
			Escribir "Ingrese un n�mero de filas v�lido. Mayor que cero y entero.";
			
		FinSi
	FinMientras
	
	//Definici�n de la dimensi�n de la matriz.
	Dimension matrizLectura[tamanhoFilas, tamanhoColumnas];
	//Esta l�nea define la dimensi�n de la matriz "matrizLectura" utilizando los tama�os de filas y columnas proporcionados anteriormente.
	//Crea una matriz bidimensional con el n�mero de filas y columnas especificadas.
	
	//Construcci�n de la matriz a partir de la petici�n y asignaci�n de las dos primeras columnas y el c�lculo de la tercera para cada fila.
	Para i<-0 Hasta tamanhoFilas - 1 Con Paso 1 Hacer
		//Esta l�nea inicia un bucle "para" con la variable "i" que va desde 0 hasta "tamanhoFilas - 1" con incrementos de 1. Este bucle se 
		//utiliza para recorrer las filas de la matriz y realizar operaciones en cada fila.
		Escribir "Ingrese el valor correspondiente a la posici�n (", i, ", ", 0, "):";
		//Esta l�nea muestra un mensaje en la salida para solicitar al usuario que ingrese el valor correspondiente a la posici�n (i, 0) de 
		//la matriz. Aqu�, "i" representa el n�mero de fila actual.
		Leer valorElem1;
		//Esta l�nea lee el valor ingresado por el usuario y lo guarda en la variable "valorElem1". Este valor corresponde a la
		//posici�n (i, 0) de la matriz.
		matrizLectura(i, 0) <- valorElem1;
		//En esta l�nea, se asigna el valor ingresado por el usuario a la posici�n (i, 0) de la matriz "matrizLectura"
		
		Escribir "Ingrese el valor correspondiente a la posici�n (", i, ", ", 1, "):";
		//Esta l�nea muestra un mensaje en la salida para solicitar al usuario que ingrese el valor correspondiente a la posici�n 
		//(i, 1) de la matriz. Aqu�, "i" representa el n�mero de fila actual.
		Leer valorElem2;
		//Esta l�nea lee el valor ingresado por el usuario y lo guarda en la variable "valorElem2". Este valor corresponde a 
		//la posici�n (i, 1) de la matriz.
		matrizLectura(i, 1) <- valorElem2;
		//En esta l�nea, se asigna el valor ingresado por el usuario a la posici�n (i, 1) de la matriz "matrizLectura".
		
		matrizLectura(i, 2) <- valorElem1 + valorElem2;
		//Esta l�nea calcula la suma de "valorElem1" y "valorElem2" y asigna el resultado a la posici�n (i, 2) de la matriz 
		//"matrizLectura". Aqu� se realiza el c�lculo de la tercera columna de cada fila de la matriz.
	Fin Para
	
	//Visualizaci�n de los elementos de la matriz.
	Escribir "La matriz generada es:";
	Para i<-0 Hasta tamanhoFilas - 1 Con Paso 1 Hacer
		//Esta l�nea inicia otro bucle "para" con la variable "i" que va desde 0 hasta "tamanhoFilas - 1" con incrementos 
		//de 1. Este bucle se utiliza para recorrer las filas de la matriz y mostrar los elementos.
		Escribir matrizLectura(i, 0), " + ", matrizLectura(i, 1), " = ", matrizLectura(i, 2);
		//En esta l�nea se muestra en la salida el valor de la posici�n (i, 0) seguido de un signo de suma, el valor de 
		//la posici�n (i, 1), un signo igual y finalmente el valor de la posici�n (i, 2) de la matriz "matrizLectura".
	Fin Para
	
FinAlgoritmo


