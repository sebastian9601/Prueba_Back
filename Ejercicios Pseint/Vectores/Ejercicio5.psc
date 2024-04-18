Algoritmo Ejercicio5
	Definir cantidadMayores,numeroComparativo Como Entero;
	cantidadMayores <- 0;
	Dimension n[10];
	
	Escribir "Ejercicio 5:";
	Escribir "Haz un vector numerico de 10 posiciones dados por el usuario y muestre los elementos que son mayores al numero dado por el usuario.";	
	
	Para i = 0 Hasta 9 Con Paso 1 Hacer
		Escribir "Ingrese el ", i + 1 ," número";
		leer n[i];
	FinPara
	
	Escribir "El arreglo creado es:";
	mostrarArreglo(n, 10);
	
	Escribir "Ingrese el número para comparar con los ingresados anteriormente";
	leer numeroComparativo;
	
	Escribir "Los números mayores a ", numeroComparativo, " son:";
	Para i = 0 Hasta 9 Con Paso 1 Hacer
		si n[i] > numeroComparativo Entonces
			Escribir n[i];
			cantidadMayores <- cantidadMayores + 1;
		FinSi
	FinPara
	
	Escribir "La cantidad total de números mayores a ", numeroComparativo, " es: ", cantidadMayores, ".";
	
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