Algoritmo numeroPrimo
	
	definir num, contadorDivisores, i Como Entero
	
	Escribir "Ingrese numero para saber si es primo"
	Leer num
	
	contadorDivisores = 0
	
	Para i = 1 Hasta num Con Paso 1 Hacer
		si num MOD i = 0 Entonces
			contadorDivisores = contadorDivisores + 1
		FinSi
	Fin Para
	
	si contadorDivisores = 2 Entonces
		Escribir "El numero es primo"
	SiNo
		Escribir "No es primo"
	FinSi
	
	
	
FinAlgoritmo
