Algoritmo notasEstudiantes
	definir seguimiento1, seguimiento2, parcial, notaAcumulada,final Como Real
	
	Escribir "Ingresa nota seguimiento 1"
	Leer seguimiento1
	
	Escribir "Ingresa nota seguimiento 2"
	Leer seguimiento2
	
	Escribir "Ingresa nota del parcial"
	Leer parcial
	
	notaAcumulada = 0.2 * seguimiento1 + 0.2 * seguimiento2 + 0.3 * parcial // 70%
	
	si notaAcumulada >= 3 Entonces
		Escribir "Usted ya gano a materia"
		
	SiNo
		final = (3 - notaAcumulada) / 0.3
		Escribir "En el final debe obtener una nota minima de " final

	FinSi
	
	
FinAlgoritmo
