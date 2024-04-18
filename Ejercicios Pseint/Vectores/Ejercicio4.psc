Algoritmo Ejercicio4
	Definir n, long Como Real;
	Definir tamanhoValido Como Logico;
	Definir temp Como Real;
	
	Escribir "Ejercicio 4:";
	Escribir "Pedir por teclado el tama�o de un arreglo de n�meros y pedir los valores num�ricos con los que se rellena. Los valores no se pueden repetir, por lo tanto, deber� de encargarse de buscar cada n�mero que lea y verificar que no se haya le�do antes. Mostrar el arreglo con los valores al final.";	
	
	tamanhoValido <- Falso;
	Mientras NO tamanhoValido Hacer
		Escribir "Ingrese el n�mero de elementos que tendr� el arreglo.";
		Leer long;
		
		Si (long > 0 Y (long - trunc(long)) = 0) Entonces
			tamanhoValido <- Verdadero;
		SiNo
			Escribir "Ingrese un tama�o v�lido. Mayor que cero y entero.";
		FinSi
	FinMientras
	
	Dimension n[long];
	
	Para i <- 0 Hasta long-1 Con Paso 1 Hacer
		Escribir "Ingrese el ", i + 1 ," n�mero";
		leer temp;
		si i = 0 Entonces
			n[i] <- temp;
		SiNo
			para j <- 0 Hasta i - 1 Con Paso 1 Hacer
				si temp = n[j] Entonces
					Escribir "El n�mero ingresado ya se ha ingresado antes, intente con uno distinto";
					Escribir "Ingrese el ", i + 1 ," n�mero";
					leer temp;
					j <- -1;
				SiNo
					si j = i - 1 Entonces
						n[i] <- temp;
					FinSi
				FinSi
			FinPara
		FinSi
	FinPara
	
	Escribir "El arreglo creado es:";
	mostrarArreglo(n, long);
FinAlgoritmo

Funcion mostrarArreglo (arreglo, tamanho)
	Definir i Como Entero;
	Escribir Sin Saltar "[";
	Para i <- 0 Hasta tamanho - 1 Con Paso 1 Hacer
		Si i = tamanho - 1 Entonces
			Escribir Sin Saltar arreglo(i), "]";
			Escribir "";
		SiNo
			Escribir Sin Saltar arreglo(i), ", ";
		FinSi
	FinPara
FinFuncion