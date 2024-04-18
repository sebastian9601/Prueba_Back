Algoritmo CalcularPromedioEstudiantes
	
	Dimension notas[9]
	Definir suma_notas, promedio Como Real
	Definir estudiante, nota Como Entero
	
	Para estudiante = 0 Hasta 2 Con Paso 1 Hacer
		Escribir "Ingrese las notas del estudiante ", estudiante + 1
		suma_notas = 0
		
		Para nota = 0 Hasta 2 Con Paso 1 Hacer
			Escribir "Ingrese la nota ", nota + 1, "del estudiante " estudiante + 1
			Leer notas[estudiante * 3 + nota]
			suma_notas = suma_notas + notas[estudiante * 3 + nota]
		Fin Para
		
		promedio = suma_notas/3
		Escribir "El promedio del estudante  ", estudiante + 1, "es : ", promedio
	Fin Para
	
FinAlgoritmo
