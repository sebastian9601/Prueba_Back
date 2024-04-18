Algoritmo Ejercicio4
	//Definición de variables.
	definir tabla,i,j como entero
	
	//Definición de la dimensión de la matriz.
    Dimension tabla[10,10]
	
	//Generación de los elementos de la matriz.
    Para i <- 0 Hasta 10 - 1 Con Paso 1 Hacer
		//Esta línea inicia un bucle "para" con la variable "i" que 
		//va desde 0 hasta 10 - 1 (es decir, hasta 9) con incrementos de 1.
		//Este bucle se utiliza para recorrer las filas de la matriz.
        Para j <- 0 Hasta 10 - 1 Con Paso 1 Hacer
			//Esta línea inicia un bucle "para" anidado con la variable "j" 
			//que va desde 0 hasta 10 - 1 (es decir, hasta 9) con incrementos de 1.
			//Este bucle se utiliza para recorrer las columnas de la matriz.
			tabla(i,j) <- i * j
			//En esta línea se asigna el valor de la multiplicación de "i" y "j" a la 
			//posición (i, j) de la matriz "tabla". Esto significa que cada elemento de 
			//la matriz se calculará multiplicando el valor del índice de fila "i" por el valor del índice de columna "j".
        FinPara
    FinPara
	
	//Visualización de los elementos de la matriz.
	Escribir "|  0 |  1 |  2 |  3 |  4 |  5 |  6 |  7 |  8 |  9 |";
	//Esta línea muestra en la salida una línea con los encabezados de las columnas de la matriz. Cada número del 0 
	//al 9 se muestra entre barras verticales y separados por espacios.
    Para i <- 1 Hasta 10 - 1 Con Paso 1 Hacer
		//Esta línea inicia un bucle "para" con la variable "i" que va desde 1 hasta 10 - 1 (es decir, hasta 9) con incrementos de 1. 
		//Este bucle se utiliza para recorrer las filas de la matriz, excepto la primera fila que contiene los encabezados.
		Escribir "|  ", i, " |" Sin Saltar;
		//En esta línea se muestra en la salida el número de fila actual entre barras verticales y separado por espacios. Utilizando 
		//"Sin Saltar" se imprime sin agregar un salto de línea.
        Para j <- 1 Hasta 10 - 1 Con Paso 1 Hacer
			//Esta línea inicia un bucle "para" anidado con la variable "j" que va desde 1 hasta 10 - 1 (es decir, hasta 9) con incrementos 
			//de 1. Este bucle se utiliza para recorrer las columnas de la matriz, excepto la primera columna que corresponde al número de fila.
			Si tabla(i, j) < 10 Entonces
				//esta línea verifica si el valor en la posición (i, j) de la matriz "tabla" es menor que 10.
				Escribir "  ", tabla(i,j), " |" Sin Saltar
				//Si el valor en la posición (i, j) es menor que 10, se muestra en la salida con un espacio adicional alineado a la derecha y 
				//separado por barras verticales. Utilizando "Sin Saltar" se imprime sin agregar un salto de línea.
			SiNo
				//Si el valor en la posición (i, j) de la matriz "tabla" es mayor o igual que 10, se ejecuta el bloque SiNo
				Escribir " ", tabla(i,j), " ",  "|" Sin Saltar
				//En esta línea se muestra en la salida el valor en la posición (i, j) de la matriz "tabla" alineado a la derecha y separado por
				//barras verticales. Utilizando "Sin Saltar" se imprime sin agregar un salto de línea.
			Fin Si
        FinPara
        Escribir ""
    FinPara
	
FinAlgoritmo
