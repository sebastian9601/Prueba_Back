Algoritmo Ejercicio1
	Definir temp Como Real;
	Definir n, long Como Real;
	Definir tamanhoValido Como Logico;
	
	Escribir "Ejercicio 1:";
	Escribir "Crear un arreglo con n numeros, ingresados por teclado y mostrar sus valores elevados al cuadrado.";
	
	tamanhoValido <- Falso;
	Mientras NO tamanhoValido Hacer
		Escribir "Ingrese el número de elementos que tendrá el arreglo.";
		Leer long;
		
		Si (long > 0 Y (long - trunc(long)) = 0) Entonces
			tamanhoValido <- Verdadero;
		SiNo
			Escribir "Ingrese un tamaño válido. Mayor que cero y entero.";
		FinSi
	FinMientras
	
	Dimension n[long];
	
	Para i <- 0 Hasta long-1 Con Paso 1 Hacer
		Escribir "Ingrese el ", i + 1 ," número";
		leer temp;
		n[i] <- temp;
	FinPara
	
	Escribir "El arreglo creado es:";
	mostrarArreglo(n, long);
	
	Para i <- 0 Hasta long-1 Con Paso 1 Hacer
		n[i] <- n[i] * n[i];
	FinPara
	
	Escribir "Los números ingresados elevados al cuadrado son:";
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