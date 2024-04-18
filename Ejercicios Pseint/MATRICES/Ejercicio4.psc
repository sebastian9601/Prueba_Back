Algoritmo Ejercicio4
	//Definici�n de variables.
	definir tabla,i,j como entero
	
	//Definici�n de la dimensi�n de la matriz.
    Dimension tabla[10,10]
	
	//Generaci�n de los elementos de la matriz.
    Para i <- 0 Hasta 10 - 1 Con Paso 1 Hacer
		//Esta l�nea inicia un bucle "para" con la variable "i" que 
		//va desde 0 hasta 10 - 1 (es decir, hasta 9) con incrementos de 1.
		//Este bucle se utiliza para recorrer las filas de la matriz.
        Para j <- 0 Hasta 10 - 1 Con Paso 1 Hacer
			//Esta l�nea inicia un bucle "para" anidado con la variable "j" 
			//que va desde 0 hasta 10 - 1 (es decir, hasta 9) con incrementos de 1.
			//Este bucle se utiliza para recorrer las columnas de la matriz.
			tabla(i,j) <- i * j
			//En esta l�nea se asigna el valor de la multiplicaci�n de "i" y "j" a la 
			//posici�n (i, j) de la matriz "tabla". Esto significa que cada elemento de 
			//la matriz se calcular� multiplicando el valor del �ndice de fila "i" por el valor del �ndice de columna "j".
        FinPara
    FinPara
	
	//Visualizaci�n de los elementos de la matriz.
	Escribir "|  0 |  1 |  2 |  3 |  4 |  5 |  6 |  7 |  8 |  9 |";
	//Esta l�nea muestra en la salida una l�nea con los encabezados de las columnas de la matriz. Cada n�mero del 0 
	//al 9 se muestra entre barras verticales y separados por espacios.
    Para i <- 1 Hasta 10 - 1 Con Paso 1 Hacer
		//Esta l�nea inicia un bucle "para" con la variable "i" que va desde 1 hasta 10 - 1 (es decir, hasta 9) con incrementos de 1. 
		//Este bucle se utiliza para recorrer las filas de la matriz, excepto la primera fila que contiene los encabezados.
		Escribir "|  ", i, " |" Sin Saltar;
		//En esta l�nea se muestra en la salida el n�mero de fila actual entre barras verticales y separado por espacios. Utilizando 
		//"Sin Saltar" se imprime sin agregar un salto de l�nea.
        Para j <- 1 Hasta 10 - 1 Con Paso 1 Hacer
			//Esta l�nea inicia un bucle "para" anidado con la variable "j" que va desde 1 hasta 10 - 1 (es decir, hasta 9) con incrementos 
			//de 1. Este bucle se utiliza para recorrer las columnas de la matriz, excepto la primera columna que corresponde al n�mero de fila.
			Si tabla(i, j) < 10 Entonces
				//esta l�nea verifica si el valor en la posici�n (i, j) de la matriz "tabla" es menor que 10.
				Escribir "  ", tabla(i,j), " |" Sin Saltar
				//Si el valor en la posici�n (i, j) es menor que 10, se muestra en la salida con un espacio adicional alineado a la derecha y 
				//separado por barras verticales. Utilizando "Sin Saltar" se imprime sin agregar un salto de l�nea.
			SiNo
				//Si el valor en la posici�n (i, j) de la matriz "tabla" es mayor o igual que 10, se ejecuta el bloque SiNo
				Escribir " ", tabla(i,j), " ",  "|" Sin Saltar
				//En esta l�nea se muestra en la salida el valor en la posici�n (i, j) de la matriz "tabla" alineado a la derecha y separado por
				//barras verticales. Utilizando "Sin Saltar" se imprime sin agregar un salto de l�nea.
			Fin Si
        FinPara
        Escribir ""
    FinPara
	
FinAlgoritmo
