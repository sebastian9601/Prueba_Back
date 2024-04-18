Funcion sumaTresNumeros <- sumarTresNumeros(numero1,numero2,numero3 )
	Definir sumaTresNumeros Como Real
	sumaTresNumeros = numero1 + numero2 + numero3
Fin Funcion

Funcion numeroIngresado <- ingresarNumero (i)
	Definir numeroIngresado Como Real
	Escribir "Ingrese el numero ", i ,":"
	Leer numeroIngresado
Fin Funcion


Algoritmo Ejercicio1
	Definir numero1,numero2,numero3,sumaTresNumeros Como Real
	Definir i Como Entero
	
	Escribir "Calculo de la suma de tres numeros"
	
	//Invocacion de la funcion para la peticion de los numeros y asigne a sus respectivas variables
	numero1 = ingresarNumero(1)
	numero2 = ingresarNumero(2)
	numero3 = ingresarNumero(3)
	
	sumaTresNumeros = sumarTresNumeros(numero1,numero2,numero3)
	
	Escribir "El resultado de la suma de (", numero1, ") + (" ,numero2, ") + (",numero3,") es: ", sumaTresNumeros, "."
	

FinAlgoritmo

