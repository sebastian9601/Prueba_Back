Algoritmo calculadora
	
	Definir operacion, numero1, numero2 Como Entero
	
	Escribir "Ingrese operacion a realizar (1 suma, 2 resta, 3 multiplicacion, 4 division)"
	Leer operacion
	
	Escribir "Ingrese el numero 1"
	Leer numero1
	
	Escribir "Ingrese el numero 2"
	Leer numero2
	
	Segun operacion Hacer
		caso 1:
			suma = numero1 + numero2
			Escribir "la suma de los dos numeros es" suma
		Caso 2:
			resta = numero1 - numero2
			Escribir "la resta de losdos numeros es" resta
		Caso 3:
			multiplicacion = numero1 * numero2
			Escribir "la multiplicacion es" multiplicacion
		Caso 4:
			division = numero1/numero2
			Escribir "la division es" division
		De Otro Modo:
			Escribir "operacion no valida verifique su eleccion"
		
	FinSegun
	
	
	
FinAlgoritmo
