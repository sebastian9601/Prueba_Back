Proceso Ejercicio2
	//Definici�n variables necesariasm para el desarrollo del ejercicio
	Definir mes, dia Como Entero;
	Definir mesValido, diaValido Como Logico;
	Definir signoZodiacal Como Caracter;
	
	Escribir "Signo Zodiacal.";
	
	//Validaci�n del mes ingresado
	mesValido <- Falso;
	Mientras No mesValido Hacer
		Escribir "Ingrese el n�mero correspondiente al mes de nacimiento.";
		Leer mes;
		Si mes > 0 Y mes < 13 Entonces
			mesValido <- Verdadero;
		SiNo
			Escribir "Ingrese un mes v�lido.";
		FinSi
	FinMientras
	
	//Validaci�n del d�a ingresado
	diaValido <- Falso;
	Mientras No diaValido Hacer
		Escribir "Ingrese el n�mero correspondiente al d�a de nacimiento.";
		Leer dia;
		
		Si mes = 4 O mes = 6 O mes = 9 O mes = 11 Entonces
			Si dia > 0 Y dia < 31 Entonces
				diaValido <- Verdadero;
			SiNo
				Escribir "Ingrese un d�a v�lido.";
			FinSi
		SiNo
			Si mes = 2 Entonces
				Si dia > 0 Y dia < 30 Entonces
					diaValido <- Verdadero;
				SiNo
					Escribir "Ingrese un d�a v�lido.";
				FinSi
			SiNo
				Si dia > 0 Y dia < 32 Entonces
					diaValido <- Verdadero;
				SiNo
					Escribir "Ingrese un d�a v�lido.";
				FinSi
			FinSi
		FinSi
	FinMientras
	
	//Asignaci�n a la variable signoZodiacal lo que se retorna de la funcion invocada
	signoZodiacal <- definirSignoZodiacal(mes, dia);
	
	//Mostrando resultado
	Escribir "El signo sodiacal correspondiente al mes y d�a de nacimiento ingresados es: ", signoZodiacal, ".";
	
FinProceso

//Funci�n para el c�lculo del signo zodiacal en funci�n del mes y el d�a de nacimiento
Funcion signoZodiacal <- definirSignoZodiacal (mes, dia)
	Definir signoZodiacal Como Caracter;
	
	Segun mes Hacer
		1:
			Si dia >= 21 Entonces
				signoZodiacal <- "Acuario";
			SiNo
				signoZodiacal <- "Capricornio";
			FinSi
		2:
			Si dia >= 20 Entonces
				signoZodiacal <- "Piscis";
			SiNo
				signoZodiacal <- "Acuario";
			FinSi
		3:
			Si dia >= 21 Entonces
				signoZodiacal <- "Aries";
			SiNo
				signoZodiacal <- "Piscis";
			FinSi
		4:
			Si dia >= 21 Entonces
				signoZodiacal <- "Tauro";
			SiNo
				signoZodiacal <- "Aries";
			FinSi
		5:
			Si dia >= 21 Entonces
				signoZodiacal <- "Geminis";
			SiNo
				signoZodiacal <- "Tauro";
			FinSi
		6:
			Si dia >= 21 Entonces
				signoZodiacal <- "Cancer";
			SiNo
				signoZodiacal <- "Geminis";
			FinSi
		7:
			Si dia >= 23 Entonces
				signoZodiacal <- "Leo";
			SiNo
				signoZodiacal <- "Cancer";
			FinSi
		8:
			Si dia >= 24 Entonces
				signoZodiacal <- "Virgo";
			SiNo
				signoZodiacal <- "Leo";
			FinSi
		9:
			Si dia >= 23 Entonces
				signoZodiacal <- "Libra";
			SiNo
				signoZodiacal <- "Virgo";
			FinSi
		10:
			Si dia >= 24 Entonces
				signoZodiacal <- "Escorpio";
			SiNo
				signoZodiacal <- "Libra";
			FinSi
		11:
			Si dia >= 23 Entonces
				signoZodiacal <- "Sagitario";
			SiNo
				signoZodiacal <- "Escorpio";
			FinSi
		12:
			Si dia >= 22 Entonces
				signoZodiacal <- "Capricornio";
			SiNo
				signoZodiacal <- "Sagitario";
			FinSi
	FinSegun
FinFuncion
	