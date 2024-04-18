Proceso Ejercicio7
	Escribir "Creaci�n de cuadrado de +.";
	//Invocaci�n de la funci�n que crea el cuadrado con signos +
	crearCuadrado();
FinProceso

//Funci�n para crear el cuadrado con signos +
Funcion crearCuadrado ()
	Definir numeroFilas, i, j Como Entero;
	Definir asterisco Como Caracter;
	Definir numeroEsPositivo Como Logico;
	
	numeroEsPositivo <- Falso;
	Mientras NO numeroEsPositivo Hacer
		Escribir "Ingrese el n�mero de filas y columnas del cuadrado.";
		Leer numeroFilas;
		numeroEsPositivo <- validarNumeroSeaPositivo(numeroFilas);
		enviarMensajeError(numeroEsPositivo);
	FinMientras
	Para i<-1 Hasta numeroFilas Con Paso 1 Hacer
		asterisco <- "";
		Para j<-1 Hasta numeroFilas Con Paso 1 Hacer
			asterisco <- Concatenar(asterisco," +");
		FinPara
		Escribir asterisco;
	FinPara
FinFuncion

//Funci�n para enviar mensaje de error en funci�n de que el n�mero ingresado sea o no positivo
Funcion enviarMensajeError ( numeroEsPositivo )
	Definir mensaje Como Caracter;
	Si NO numeroEsPositivo Entonces
		Escribir "Error. Ingrese un valor positivo.";
	FinSi
FinFuncion

//Funci�n para validar que el n�mero ingresado sea o no positivo
Funcion numeroEsPositivo <- validarNumeroSeaPositivo ( numeroAValidar )
	Definir numeroEsPositivo Como Logico;
	Si numeroAValidar <= 0 Entonces
		numeroEsPositivo <- Falso;
	SiNo
		numeroEsPositivo <- Verdadero;
	FinSi
FinFuncion