



Subalgoritmo signoZodiacal <-definirSignoZodiacal ( mes, dia )
	
	definir signoZodiacal Como Caracter
	
	Segun mes Hacer
		1:
			si dia >= 21 Entonces
				signoZodiacal = "Acuario"
			SiNo
				signoZodiacal = "Capricornio"
			FinSi
		2:
			si dia >= 20 Entonces
				signoZodiacal = "Piscis"
			SiNo
				signoZodiacal = "Acuario"
			FinSi
		3:
			si dia >= 21 Entonces
				signoZodiacal ="Aries"
			SiNo
				signoZodiacal = "Piscis"
			FinSi
		4:  
			si dia >= 21 Entonces
				signoZodiacal ="Tauro"
			SiNo
				signoZodiacal = "Aries"
			FinSi
		5:
			si dia >= 21 Entonces
				signoZodiacal ="Geminis"
			SiNo
				signoZodiacal = "Tauro"
			FinSi
		6:
			si dia >= 21 Entonces
				signoZodiacal ="Cancer"
			SiNo
				signoZodiacal = "Geminis"
			FinSi
		7:
			si dia >= 23 Entonces
				signoZodiacal ="Leo"
			SiNo
				signoZodiacal = "Cancer"
			FinSi
		8:
			si dia >= 24 Entonces
				signoZodiacal ="Virgo"
			SiNo
				signoZodiacal = "Leo"
			FinSi
		9:
			si dia >= 23 Entonces
				signoZodiacal ="Libra"
			SiNo
				signoZodiacal = "Virgo"
			FinSi
		10:
			si dia >= 24 Entonces
				signoZodiacal ="Escorpio"
			SiNo
				signoZodiacal = "Libra"
			FinSi
		11:
			si dia >= 23 Entonces
				signoZodiacal ="Sagitario"
			SiNo
				signoZodiacal = "Escorpio"
			FinSi
		12:
			si dia >= 22 Entonces
				signoZodiacal = "Capricornio"
			SiNo
				signoZodiacal = "Sagitario"
			FinSi

	Fin Segun
	
Fin Funcion








Algoritmo Ejercicio2
	
	definir mes, dia Como Entero
	definir mesValido, diaValido Como Logico
	definir signoZodiacal Como Caracter
	
	Escribir "Signo Zodiacal"
	
	//Validacion del mes
	mesValido = Falso
	Mientras No mesValido Hacer
		Escribir "Ingrese el numero correspondiente al mes de nacimiento."
		Leer mes
		Si mes > 0 Y mes < 13 Entonces
			mesValido = Verdadero
		SiNo
			Escribir "Ingrese un mes valido"
		FinSi
		
		
	FinMientras
	
	
	//Validar dia ingresado
	diaValido = Falso
	Mientras No diaValido Hacer
		Escribir "Ingrese el numero correspondiente al dia de nacimiento."
		Leer dia
		
		si mes = 4 O mes = 6 O mes = 9 O mes = 11 Entonces
			si dia > 0 Y dia < 31 Entonces
				diaValido = Verdadero
	        SiNo
				Escribir "Ingrese un dia valido"
			FinSi
		SiNo
			si mes = 2 Entonces
				si dia > 0 Y dia < 30 Entonces
					diaValido = Verdadero
				SiNo
					Escribir "Ingrese un dia valido"
				FinSi
			SiNo
				si dia > 0 Y dia < 32 Entonces
					diaValido =  Verdadero
				SiNo
					Escribir "Ingrese un dia valido"
				FinSi
			FinSi
		FinSi
	FinMientras
	
	
	//Asignar a la variable signoZodiacal lo que retorna de la funcion invocada
	signoZodiacal = definirSignoZodiacal(mes, dia)
	
	Escribir "El signo zodiacal correspondiente al mes y dia de nacimento es: ", definirSignoZodiacal(mes,dia),"."
	
	
	
FinAlgoritmo
