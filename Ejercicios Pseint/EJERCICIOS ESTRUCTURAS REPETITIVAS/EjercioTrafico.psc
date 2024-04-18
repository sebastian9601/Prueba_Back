Algoritmo EjercioTrafico
	
	definir cantidadAutos, velocidad, sumaVelocidades, promedioVelocidades Como Entero
	
	Escribir "Ingrese la cantidad de autos que pasaron por un punto de control:"
	Leer cantidadAutos
	
	sumaVelocidades = 0
	
	Para i = 1 Hasta cantidadAutos Con Paso 1 Hacer
		Escribir "Ingrese la velocidad del auto",i,"en Km/h: "
		Leer velocidad
		sumaVelocidades = sumaVelocidades + velocidad
	FinPara
	
	promedioVelocidades = sumaVelocidades / cantidadAutos
	
	si promedioVelocidades > 60 Entonces
		Escribir "El promedio de velocidad de los ", cantidadAutos, "autos es:", promedioVelocidades,"Km/h"
		Escribir "El trafico esta por encima del limite de velocidad permitido. Se recomienda tomar medidas para reducir la velocidad"
	SiNo
		Escribir "El promedio de velocidad de los ", cantidadAutos,"autos es:", promedioVelocidades, "Km/h"
		Escribir "EL trafico esta dentro del limite de velocidad"
		
	FinSi
	 	
	
	
	
FinAlgoritmo
