Algoritmo Ejercicio3
	Definir cantidadPositivos, cantidadNegativos, cantidadNulos, i Como Entero;
	Definir n Como Real;
	cantidadPositivos <- 0;
	cantidadNegativos <- 0;
	cantidadNulos <- 0;
	Dimension n[10];
	
	Escribir "Ejercicio 3:";
	Escribir "Hacer un programa que permita ingresar 10 valores a un array seguido muestre cuantos son positivos, cuantos negativos y cuantos son nulos.";
	Para i <- 0 Hasta 9 Con Paso 1 Hacer
		Escribir "Ingrese el ", i + 1 ," número.";
		leer n[i];
		si n[i] > 0 Entonces;
			cantidadPositivos <- cantidadPositivos + 1;
		SiNo 
			si n[i] < 0 Entonces
				cantidadNegativos <- cantidadNegativos + 1;
			SiNo
				cantidadNulos <- cantidadNulos + 1;
			FinSi
		FinSi
	FinPara
	
	Escribir "El arreglo creado es:";
	mostrarArreglo(n, 10);
	
	Escribir "La cantidad de números positivos es: ", cantidadPositivos;
	Escribir "La cantidad de números negativos es: ", cantidadNegativos;
	Escribir "La cantidad de números nulos es: ", cantidadNulos;
	
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