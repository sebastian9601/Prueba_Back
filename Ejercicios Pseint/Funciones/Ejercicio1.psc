Proceso Ejercicio1
	//Definici�n variables necesariasm para el desarrollo del ejercicio
	Definir numero1, numero2, numero3, sumaTresNumeros Como Real;
	Definir i Como Entero;
	
	Escribir "C�lculo de la suma de tres n�meros.";
	
	//Invocaci�n funci�n para la petici�n de los n�meros y asignaci�n a sus respectivas variables
	numero1 <- ingresarNumero(1);
	numero2 <- ingresarNumero(2);
	numero3 <- ingresarNumero(3);
	
	//Asignaci�n a la variable sumaTresNumeros lo que se retorna de la funcion invocada
	sumaTresNumeros <- sumarTresNumeros (numero1, numero2, numero3);
	
	//Mostrando resultado
	Escribir "El resultado de la suma de (", numero1, ") + (", numero2, ") + (", numero3, ") es: ", sumaTresNumeros, ".";
	
FinProceso

//Funci�n para petici�n y captura de los n�meros a sumar
Funcion numeroIngresado <- ingresarNumero (i)
	Definir numeroIngresado Como Real;
	Escribir "Ingrese el n�mero ", i, ":";
	Leer numeroIngresado;
FinFuncion

//Funci�n para calcular la suma de tres n�meros
Funcion sumaTresNumeros <- sumarTresNumeros (numero1, numero2, numero3)
	Definir sumaTresNumeros Como Real;
	sumaTresNumeros <- numero1 + numero2 + numero3;
FinFuncion
	