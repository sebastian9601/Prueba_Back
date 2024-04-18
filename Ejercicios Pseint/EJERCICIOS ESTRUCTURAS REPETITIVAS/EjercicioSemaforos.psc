Algoritmo EjercicioSemaforos
	
	Definir cantidadTranseuntes, tiempoEspera Como Entero
	
	Escribir "Ingrese la cantida de transeuntes esperando en el cruce:"
	Leer cantidadTranseuntes
	
	Escribir "Ingrese el tiempo de espera en segundos:"
	Leer tiempoEspera
	
	Para i = 1 Hasta cantidadTranseuntes Con Paso 1 Hacer
		Escribir "Transeunte", i , "cruza la calle cuando el semaforo esta en verde."
		Esperar tiempoEspera Segundos
	FinPara
	Escribir "Todos los transeuntes han cruzado la calle de manera segura"
	
	
FinAlgoritmo
