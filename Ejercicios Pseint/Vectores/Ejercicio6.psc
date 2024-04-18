Algoritmo Ejercicio6
	Definir cantidadMenoresOIguales, elemento Como Entero;
	cantidadMenoresOIguales <- 0;
	Dimension n[20];
	
	Escribir "Ejercicio 6:";
	Escribir "Elaborar un programa que ingrese 20 números aleatorios a un array y mostrar una lista de los números menores o iguales que 10 que hayan sido ingresados.";	
	
	Para i = 0 Hasta 19 Con Paso 1 Hacer
		elemento <- Aleatorio(-100, 100);
		n[i] <- elemento;
	FinPara
	
	Escribir "El arreglo creado es:";
	mostrarArreglo(n, 20);
	
	Escribir "Los números menores o iguales a 10 son:";
	Para i = 0 Hasta 19 Con Paso 1 Hacer
		si n[i] <= 10 Entonces
			Escribir n[i];
			cantidadMenoresOIguales <- cantidadMenoresOIguales + 1;
		FinSi
	FinPara
	
	Escribir "La cantidad total de números menores o iguales a 10 es: ", cantidadMenoresOIguales, ".";
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