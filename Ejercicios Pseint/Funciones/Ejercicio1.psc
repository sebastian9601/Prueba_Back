Proceso Ejercicio1
	//Definición variables necesariasm para el desarrollo del ejercicio
	Definir numero1, numero2, numero3, sumaTresNumeros Como Real;
	Definir i Como Entero;
	
	Escribir "Cálculo de la suma de tres números.";
	
	//Invocación función para la petición de los números y asignación a sus respectivas variables
	numero1 <- ingresarNumero(1);
	numero2 <- ingresarNumero(2);
	numero3 <- ingresarNumero(3);
	
	//Asignación a la variable sumaTresNumeros lo que se retorna de la funcion invocada
	sumaTresNumeros <- sumarTresNumeros (numero1, numero2, numero3);
	
	//Mostrando resultado
	Escribir "El resultado de la suma de (", numero1, ") + (", numero2, ") + (", numero3, ") es: ", sumaTresNumeros, ".";
	
FinProceso

//Función para petición y captura de los números a sumar
Funcion numeroIngresado <- ingresarNumero (i)
	Definir numeroIngresado Como Real;
	Escribir "Ingrese el número ", i, ":";
	Leer numeroIngresado;
FinFuncion

//Función para calcular la suma de tres números
Funcion sumaTresNumeros <- sumarTresNumeros (numero1, numero2, numero3)
	Definir sumaTresNumeros Como Real;
	sumaTresNumeros <- numero1 + numero2 + numero3;
FinFuncion
	