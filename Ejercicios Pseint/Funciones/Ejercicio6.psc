Proceso Ejercicio6
	//Definici�n variables necesariasm para el desarrollo del ejercicio
	Definir eleccionEjercicio Como Real;
	Definir opcionValida Como Logico;
	
	//Validaci�n de las opciones e invocaci�n de las correspondientes funciones
	opcionValida <- Falso;
	Mientras NO opcionValida Hacer
		
		Escribir "Ingrese el n�mero correspondiente al ejercicio que desea desarrollar.";
		Escribir "1. Convertir grados Celsius a Fahrenheit";
		Escribir "2. Convertir grados Fahrenheit a Celsius";
		Escribir "3. Calcular el �rea de un tri�ngulo";
		Escribir "4. Calcular el �rea de un c�rculo";
		Escribir "5. Calcular el per�metro de un rect�ngulo";
		Leer eleccionEjercicio;
		
		Segun eleccionEjercicio Hacer
			1:
				convertirCelsiusAFahrenheit();
				opcionValida <- Verdadero;
			2:
				convertirFahrenheitACelsius();
				opcionValida <- Verdadero;
			3:
				calcularAreaTriangulo();
				opcionValida <- Verdadero;
			4:
				calcularAreaCirculo();
				opcionValida <- Verdadero;
			5:
				calcularPerimetroRectangulo();
				opcionValida <- Verdadero;
			De Otro Modo:
				Escribir "";
				Escribir "Ingrese una opci�n v�lida.";
		FinSegun
	FinMientras
FinProceso

//Funci�n para calcular la conversi�n de Celsius a Fahrenheit
Funcion convertirCelsiusAFahrenheit()
	Definir celsius, fahrenheit Como Real;
	
	Escribir "Ingrese la temperatura en grados Celsius a convertir.";
	Leer celsius;
	
	fahrenheit <- (1.8 * celsius) + 32;
	Escribir celsius, "�C equivalen a ", fahrenheit, "�F.";
FinFuncion

//Funci�n para calcular la conversi�n de Fahrenheit a Celsius
Funcion convertirFahrenheitACelsius()
	Definir celsius, fahrenheit Como Real;
	
	Escribir "Ingrese la temperatura en grados fahrenheit a convertir.";
	Leer fahrenheit;
	
	celsius <- (fahrenheit - 32) * 5 / 9 ;
	Escribir fahrenheit, "�F equivalen a ", celsius, "�C.";
FinFuncion

//Funci�n para calcular el �rea de un tri�ngulo
Funcion calcularAreaTriangulo()
	Definir numeroEsPositivo Como Logico;
	Definir base, altura, area Como Real;
	
	numeroEsPositivo <- Falso;
	Mientras NO numeroEsPositivo Hacer
		Escribir "Ingrese el valor correspondiente a la base del tri�ngulo.";
		Leer base;
		numeroEsPositivo <- validarNumeroSeaPositivo(base);
		enviarMensajeError(numeroEsPositivo);
	FinMientras
	
	numeroEsPositivo <- Falso;
	Mientras NO numeroEsPositivo Hacer
		Escribir "Ingrese el valor correspondiente a la altura del tri�ngulo.";
		Leer altura;
		numeroEsPositivo <- validarNumeroSeaPositivo(altura);
		enviarMensajeError(numeroEsPositivo);
	FinMientras
	
	area <- base * altura / 2;
	Escribir "El �rea del tri�ngulo con base ", base, " y altura ", altura, " es: ", area, " unidades de �rea.";
FinFuncion

//Funci�n para calcular el perimetro de un rect�ngulo
Funcion calcularPerimetroRectangulo()
	Definir numeroEsPositivo Como Logico;
	Definir base, altura, perimetro Como Real;
	
	numeroEsPositivo <- Falso;
	Mientras NO numeroEsPositivo Hacer
		Escribir "Ingrese el valor correspondiente a la base del rect�ngulo.";
		Leer base;
		numeroEsPositivo <- validarNumeroSeaPositivo(base);
		enviarMensajeError(numeroEsPositivo);
	FinMientras
	
	numeroEsPositivo <- Falso;
	Mientras NO numeroEsPositivo Hacer
		Escribir "Ingrese el valor correspondiente a la altura del rect�ngulo.";
		Leer altura;
		numeroEsPositivo <- validarNumeroSeaPositivo(altura);
		enviarMensajeError(numeroEsPositivo);
	FinMientras
	
	perimetro <- 2 * (base + altura);
	Escribir "El per�metro del rect�ngulo con base ", base, " y altura ", altura, " es: ", perimetro, " unidades de longitud.";
FinFuncion

//Funci�n para calcular el �rea de un c�rculo
Funcion calcularAreaCirculo()
	Definir numeroEsPositivo Como Logico;
	Definir radio, area Como Real;
	
	numeroEsPositivo <- Falso;
	Mientras NO numeroEsPositivo Hacer
		Escribir "Ingrese el valor correspondiente al radio del c�rculo.";
		Leer radio;
		numeroEsPositivo <- validarNumeroSeaPositivo(radio);
		enviarMensajeError(numeroEsPositivo);
	FinMientras
	
	area <- PI * radio ^ 2;
	Escribir "El �rea del c�rculo con radio ", radio, " es: ", area, " unidades de �rea.";
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