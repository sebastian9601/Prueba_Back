Proceso Ejercicio7
	Escribir "Creación de cuadrado de +.";
	//Invocación de la función que crea el cuadrado con signos +
	crearCuadrado();
FinProceso

//Función para crear el cuadrado con signos +
Funcion crearCuadrado ()
	Definir numeroFilas, i, j Como Entero;
	Definir asterisco Como Caracter;
	Definir numeroEsPositivo Como Logico;
	
	numeroEsPositivo <- Falso;
	Mientras NO numeroEsPositivo Hacer
		Escribir "Ingrese el número de filas y columnas del cuadrado.";
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

//Función para enviar mensaje de error en función de que el número ingresado sea o no positivo
Funcion enviarMensajeError ( numeroEsPositivo )
	Definir mensaje Como Caracter;
	Si NO numeroEsPositivo Entonces
		Escribir "Error. Ingrese un valor positivo.";
	FinSi
FinFuncion

//Función para validar que el número ingresado sea o no positivo
Funcion numeroEsPositivo <- validarNumeroSeaPositivo ( numeroAValidar )
	Definir numeroEsPositivo Como Logico;
	Si numeroAValidar <= 0 Entonces
		numeroEsPositivo <- Falso;
	SiNo
		numeroEsPositivo <- Verdadero;
	FinSi
FinFuncion