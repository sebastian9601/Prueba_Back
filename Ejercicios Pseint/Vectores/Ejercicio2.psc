Algoritmo Ejercicio2
	Definir cantidadPares, cantidadImpares, i Como Entero;
	Definir elementoArray Como Real;
	Definir elementoValido Como Logico;
	Definir n Como Real;
	
	cantidadPares <- 0;
	cantidadImpares <- 0;
	Dimension n[10];
	
	Escribir "Ejercicio 2:";
	Escribir "Ingresar 10 valores numéricos a un array y mostrar cuantos son pares y cuantos son impares.";
	Para i <- 0 Hasta 9 Con Paso 1 Hacer
		elementoValido <- Falso;
		Mientras NO elementoValido Hacer
			Escribir "Ingrese el ", i + 1 ," número.";
			leer elementoArray;
			Si elementoArray - trunc(elementoArray) <> 0 Entonces
				Escribir "Ingrese un valor válido. Un número entero.";
			SiNo
				n[i] <- elementoArray;
				elementoValido <- Verdadero;
			FinSi
		FinMientras
		
		si n[i] mod 2 = 0 Entonces
			cantidadPares <- cantidadPares + 1;
		SiNo
			cantidadImpares <- cantidadImpares + 1;
		FinSi
	FinPara
	
	Escribir "El arreglo creado es:";
	mostrarArreglo(n, 10);
	
	Escribir "La cantidad de números pares es: ", cantidadPares, ".";
	Escribir "La cantidad de números impares es: ", cantidadImpares, ".";
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