Proceso Ejercicio3
	
	Definir numeroAnterior, numeroAnteriorAlAnterior, limiteSerie, contador, numeroActual Como Entero
	Definir serieFibonacci, separador Como Caracter
	
	//definir una variable para realizar la validacion del numero ingresado
	Definir bandera Como Logico
	
	Escribir "Serie Fibonacci"
	
	//validar el numero ingresado por el usuario
	bandera = Verdadero
	Mientras bandera Hacer
		Escribir "Ingrese numero limite de la serie Fibonacci. "
		Leer limiteSerie
		Si limiteSerie <= 0 Entonces
			Escribir "Error . Ingrese un limite valido(un numero positivo)"
		SiNo
			bandera = Falso
		Fin Si
	Fin Mientras
	
	
	//Desarrollo y visualizar la serie fibonacci en funcion de la variable limiteSerie
	
	Si limiteSerie = 1 Entonces
		Escribir "Serie Fibonacci :"
		Escribir "0."
	SiNo
		Si limiteSerie = 2 Entonces
			Escribir "Serie Fibinacci :"
			Escribir "0,1."
		SiNo
			numeroAnterior = 1
			numeroAnteriorAlAnterior = 0
			contador = 2
			serieFibonacci = "0, 1"
			separador = ", "
			
			Mientras contador < limiteSerie Hacer
				numeroActual = numeroAnterior + numeroAnteriorAlAnterior
				serieFibonacci = Concatenar(serieFibonacci,separador)
				serieFibonacci = Concatenar(serieFibonacci,ConvertirATexto(numeroActual))
				numeroAnteriorAlAnterior = numeroAnterior
				numeroAnterior = numeroActual
				contador = contador + 1 
				
			Fin Mientras
			
			Escribir "Serie Fibonacci: "
			Escribir Concatenar(serieFibonacci, ".")
			
			
			
		Fin Si
	Fin Si
	
	
	
	
	
	
	
FinProceso
