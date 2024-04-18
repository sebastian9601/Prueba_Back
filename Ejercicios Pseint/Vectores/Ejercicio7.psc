Algoritmo Ejercicio7
	Definir n, long, elemento, cantidadNumerosPrimos Como Real;
	Definir tamanhoValido, numeroEsPrimo Como Logico;
	
	Escribir "Ejercicio 7:";
	Escribir "Realizar la operación para llenar de forma aleatoria un vector de números enteros y contar cuantos números que están almacenados en el vector son números primos.";	
	
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
	
	cantidadNumerosPrimos <- 0;
	Para i <- 0 Hasta long - 1 Con Paso 1 Hacer
		elemento <- Aleatorio(0, 100);
		n[i] <- elemento;
		numeroEsPrimo <- validarNumeroSeaPrimo(elemento);
		Si numeroEsPrimo Entonces
			cantidadNumerosPrimos <- cantidadNumerosPrimos + 1;
		Fin Si
	FinPara
	
	Escribir "El arreglo creado es:";
	mostrarArreglo(n, long);
	
	Escribir "La cantidad de números primos en el arreglo creado es: ", cantidadNumerosPrimos, ".";
	
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

Funcion numeroEsPrimo <- validarNumeroSeaPrimo( numeroAValidar)
	Definir numeroEsPrimo Como Logico;
	Definir contador, multiplos Como Entero;
	
	contador <- 2;
	multiplos <- 0;
	Mientras contador < numeroAValidar Y multiplos = 0 Hacer
		Si numeroAValidar MOD contador = 0 Entonces
			multiplos <- multiplos + 1;
		SiNo
			contador <- contador + 1;
		FinSi
	FinMientras
	
	Si multiplos = 0 Entonces
		numeroEsPrimo <- Verdadero;
	SiNo
		numeroEsPrimo <- Falso;
	FinSi
FinFuncion