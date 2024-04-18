Proceso Ejercicio6
	//Definición variables necesariasm para el desarrollo del ejercicio
	Definir eleccionEjercicio Como Real;
	Definir opcionValida Como Logico;
	
	//Validación de las opciones e invocación de las correspondientes funciones
	opcionValida <- Falso;
	Mientras NO opcionValida Hacer
		
		Escribir "Ingrese el número correspondiente al ejercicio que desea desarrollar.";
		Escribir "1. Convertir grados Celsius a Fahrenheit";
		Escribir "2. Convertir grados Fahrenheit a Celsius";
		Escribir "3. Calcular el área de un triángulo";
		Escribir "4. Calcular el área de un círculo";
		Escribir "5. Calcular el perímetro de un rectángulo";
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
				Escribir "Ingrese una opción válida.";
		FinSegun
	FinMientras
FinProceso

//Función para calcular la conversión de Celsius a Fahrenheit
Funcion convertirCelsiusAFahrenheit()
	Definir celsius, fahrenheit Como Real;
	
	Escribir "Ingrese la temperatura en grados Celsius a convertir.";
	Leer celsius;
	
	fahrenheit <- (1.8 * celsius) + 32;
	Escribir celsius, "°C equivalen a ", fahrenheit, "°F.";
FinFuncion

//Función para calcular la conversión de Fahrenheit a Celsius
Funcion convertirFahrenheitACelsius()
	Definir celsius, fahrenheit Como Real;
	
	Escribir "Ingrese la temperatura en grados fahrenheit a convertir.";
	Leer fahrenheit;
	
	celsius <- (fahrenheit - 32) * 5 / 9 ;
	Escribir fahrenheit, "°F equivalen a ", celsius, "°C.";
FinFuncion

//Función para calcular el área de un triángulo
Funcion calcularAreaTriangulo()
	Definir numeroEsPositivo Como Logico;
	Definir base, altura, area Como Real;
	
	numeroEsPositivo <- Falso;
	Mientras NO numeroEsPositivo Hacer
		Escribir "Ingrese el valor correspondiente a la base del triángulo.";
		Leer base;
		numeroEsPositivo <- validarNumeroSeaPositivo(base);
		enviarMensajeError(numeroEsPositivo);
	FinMientras
	
	numeroEsPositivo <- Falso;
	Mientras NO numeroEsPositivo Hacer
		Escribir "Ingrese el valor correspondiente a la altura del triángulo.";
		Leer altura;
		numeroEsPositivo <- validarNumeroSeaPositivo(altura);
		enviarMensajeError(numeroEsPositivo);
	FinMientras
	
	area <- base * altura / 2;
	Escribir "El área del triángulo con base ", base, " y altura ", altura, " es: ", area, " unidades de área.";
FinFuncion

//Función para calcular el perimetro de un rectángulo
Funcion calcularPerimetroRectangulo()
	Definir numeroEsPositivo Como Logico;
	Definir base, altura, perimetro Como Real;
	
	numeroEsPositivo <- Falso;
	Mientras NO numeroEsPositivo Hacer
		Escribir "Ingrese el valor correspondiente a la base del rectángulo.";
		Leer base;
		numeroEsPositivo <- validarNumeroSeaPositivo(base);
		enviarMensajeError(numeroEsPositivo);
	FinMientras
	
	numeroEsPositivo <- Falso;
	Mientras NO numeroEsPositivo Hacer
		Escribir "Ingrese el valor correspondiente a la altura del rectángulo.";
		Leer altura;
		numeroEsPositivo <- validarNumeroSeaPositivo(altura);
		enviarMensajeError(numeroEsPositivo);
	FinMientras
	
	perimetro <- 2 * (base + altura);
	Escribir "El perímetro del rectángulo con base ", base, " y altura ", altura, " es: ", perimetro, " unidades de longitud.";
FinFuncion

//Función para calcular el área de un círculo
Funcion calcularAreaCirculo()
	Definir numeroEsPositivo Como Logico;
	Definir radio, area Como Real;
	
	numeroEsPositivo <- Falso;
	Mientras NO numeroEsPositivo Hacer
		Escribir "Ingrese el valor correspondiente al radio del círculo.";
		Leer radio;
		numeroEsPositivo <- validarNumeroSeaPositivo(radio);
		enviarMensajeError(numeroEsPositivo);
	FinMientras
	
	area <- PI * radio ^ 2;
	Escribir "El área del círculo con radio ", radio, " es: ", area, " unidades de área.";
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