Algoritmo Ejercicio5
	//Definición de variables.
	Definir i, j, tempMasBajaSemana, tempMasAltaSemana, diaTempMasAltaSemana, diaTempMasBajaSemana Como Entero;
	Definir tempMasBajaMes, tempMasAltaMes, diaTempMasAltaMes, diaTempMasBajaMes, senamaTempMasBajaMes, senamaTempMasAltaMes Como Entero;
	Definir matrizLectura, sumaTempSemana Como Real;
	Definir tamanhoFilas, tamanhoColumnas Como Real;
	
	//Asignación del número de filas y columnas que tendrá la matriz.
	tamanhoFilas <- 5;
	tamanhoColumnas <- 7;
	
	//Definición de la dimensión de la matriz.
	Dimension matrizLectura[tamanhoFilas, tamanhoColumnas];
	
	//Generación de los elementos de la matriz.de las temperaturas
	Para i<-0 Hasta tamanhoFilas - 1 Con Paso 1 Hacer
		//Este es el inicio de un bucle externo que recorre las filas de la matriz. tamanhoFilas es la variable 
		//que representa la cantidad de filas en la matriz.
	
		Para j<-0 Hasta tamanhoColumnas - 1 Con Paso 1 Hacer
			//Este es el inicio de un bucle interno que recorre las columnas de la matriz. tamanhoColumnas es la
			//variable que representa la cantidad de columnas en la matriz.
			Si ((i = 4 Y j = 3) O (i = 4 Y j = 4) O (i = 4 Y j = 5) O (i = 4 Y j = 6)) Entonces
				//se utiliza para evitar que se registren temperaturas en ciertas posiciones de la matriz que no corresponden al mes de mayo completo.
				//Si te fijas en el enunciado del problema, se menciona que el mes de mayo tiene 31 días y comienza en un lunes (día 1) y finaliza en un miércoles (día 31). 
				//La matriz que se quiere crear tiene 5 filas, que representan las semanas del mes, y 7 columnas, que representan los días de la semana.
				//Dado que la matriz tiene 5 filas y mayo tiene 31 días, algunas posiciones en la última semana de la matriz quedarían vacías, ya que no hay suficientes días para 
				//llenarla completamente. Específicamente, las posiciones de la fila 4 (la última semana) en las columnas 3, 4, 5 y 6 serían los días 29, 30 y 31, y el resto estaría vacío.
				//Por lo tanto, en esa línea de código, se está verificando si la posición actual (i, j) de la matriz corresponde a los días 29, 30 o 31 (últimos días del mes). Si es así, 
				//entonces se asigna un valor de temperatura de 0 a esas celdas mediante la instrucción matrizLectura(i, j) <- 0;. Esto se hace para indicar que no se han registrado 
				//temperaturas para esos días, ya que el mes de mayo no llega a la semana 5 completa.
				//i = 4: Esto verifica si el valor de la variable i es igual a 4. La variable i representa el índice de la fila actual en el bucle externo
				//j = 3: Esto verifica si el valor de la variable j es igual a 3. La variable j representa el índice de la columna actual en el bucle interno
				//O: Es el operador lógico "O" (OR en inglés), que se utiliza para combinar varias condiciones. Devuelve True si al menos una de las condiciones es verdadera.
				matrizLectura(i, j) <- 0;
				// Si la posición actual cumple con las condiciones del paso 3, entonces se asigna el valor 0 a la celda de la matriz en la posición (i, j)
			SiNo
				//Si la posición actual no cumple con las condiciones del paso 3, se ejecuta el siguiente bloque de código.
				matrizLectura(i, j) <- Aleatorio(7, 38);
				//Aquí se asigna un valor aleatorio entre 7 y 38 a la celda de la matriz en la posición (i, j). Aleatorio(7, 38)
			Fin Si
			
		Fin Para
	Fin Para
	
	//Visualización de los elementos de la matriz.
	Escribir "Matriz de temperaturas:";
	Para i<-0 Hasta tamanhoFilas - 1 Con Paso 1 Hacer
		Para j<-0 Hasta tamanhoColumnas - 1 Con Paso 1 Hacer
			Escribir Sin Saltar matrizLectura(i, j), " ";
		Fin Para
		Escribir "";
	Fin Para
	Escribir "";
	
	//Cálculo de información requerida.
	Para i<-0 Hasta tamanhoFilas - 1 Con Paso 1 Hacer
		//Este bucle "Para" se encarga de iterar a través de las filas de la matriz. Comienza con i = 0
		//y continuará hasta que i sea menor que tamanhoFilas (número total de filas en la matriz) menos 1.
		//El "Con Paso 1" significa que el incremento en cada iteración será de 1.
		sumaTempSemana <- 0;
		//Aquí se inicializa una variable llamada "sumaTempSemana" con el valor de 0. Esta variable se 
		//utilizará para almacenar la suma de las temperaturas de la semana actual.
		Para j<-0 Hasta tamanhoColumnas - 1 Con Paso 1 Hacer
			//Este bucle "Para" se encarga de iterar a través de las columnas de la matriz. Comienza con j = 0 
			//y continuará hasta que j sea menor que tamanhoColumnas (número total de columnas en la matriz) menos 1.
			Si matrizLectura(i, j) <> 0 Entonces
				//Esta línea verifica si el valor de la matriz en la posición (i, j) no es igual a cero. Si el valor
				//es diferente de cero, significa que hay una temperatura válida en esa posición (no es un valor nulo).
				Si (j = 0 Y i = 0) Entonces
					//Aquí se verifica si estamos en la primera fila (i = 0) y la primera columna (j = 0) de la matriz.
					//Esto significa que es el primer elemento de la matriz y se realiza una inicialización especial 
					//para las variables que almacenarán la temperatura más alta y más baja del mes.
					tempMasAltaMes <- matrizLectura(i, j);
					tempMasBajaMes <- matrizLectura(i, j);
					diaTempMasAltaMes <- j;
					diaTempMasBajaMes <- j;
					senamaTempMasBajaMes <- i;
					senamaTempMasAltaMes <- i;
					//Aquí se establecen las variables relacionadas con la temperatura más alta y más baja del mes.
					//Se asigna el valor de la matriz en la posición (i, j) a las variables tempMasAltaMes y tempMasBajaMes.
					//También se almacenan los índices (j para el día y i para la semana) correspondientes a estas temperaturas
					//máximas y mínimas del mes.
					
				SiNo
					//Si no estamos en la primera fila y primera columna (es decir, no es el primer elemento de la matriz), 
				//entonces se ejecutan las siguientes líneas:
					Si matrizLectura(i, j) > tempMasAltaMes Entonces
						//Se compara el valor de la matriz en la posición (i, j) con la variable tempMasAltaMes, que almacena la 
						//temperatura más alta del mes hasta ahora. Si el valor de la matriz es mayor, se actualizan las variables relacionadas con la temperatura más alta del mes.
						tempMasAltaMes <- matrizLectura(i, j);
						diaTempMasAltaMes <- j;
						senamaTempMasAltaMes <- i;
					FinSi
					//Se actualizan las variables tempMasAltaMes, diaTempMasAltaMes y senamaTempMasAltaMes con los nuevos valores si la temperatura en la posición (i, j)
					//es mayor que la temperatura máxima actual del mes.
					
					Si matrizLectura(i, j) < tempMasBajaMes Entonces
						//Similar al caso anterior, esta línea compara el valor de la matriz en la posición (i, j) con la variable tempMasBajaMes, que almacena la temperatura más
						//baja del mes hasta ahora. Si el valor de la matriz es menor, se actualizan las variables relacionadas con la temperatura más baja del mes.
						tempMasBajaMes <- matrizLectura(i, j);
						diaTempMasBajaMes <- j;
						senamaTempMasBajaMes <- i;
						//Se actualizan las variables tempMasBajaMes, diaTempMasBajaMes y senamaTempMasBajaMes con los nuevos valores si la temperatura 
						//en la posición (i, j) es menor que la temperatura mínima actual del mes.
					FinSi
				FinSi
				
				Si (j = 0) Entonces
					//Aquí se verifica si estamos en la primera columna (j = 0) de la matriz. Esto significa que es el primer día de la semana actual y se 
					//realiza una inicialización especial para las variables que almacenarán la temperatura más alta y más baja de la semana.
					tempMasAltaSemana <- matrizLectura(i, j);
					tempMasBajaSemana <- matrizLectura(i, j);
					diaTempMasAltaSemana <- j;
					diaTempMasBajaSemana <- j;
					//Se asigna el valor de la matriz en la posición (i, j) a las variables tempMasAltaSemana y tempMasBajaSemana. También se almacenan 
					//los índices (j para el día) correspondientes a estas temperaturas máximas y mínimas de la semana.
				SiNo
					//Si no estamos en la primera columna (es decir, no es el primer día de la semana), entonces se ejecutan las siguientes líneas:
					Si matrizLectura(i, j) > tempMasAltaSemana Entonces
						//Se compara el valor de la matriz en la posición (i, j) con la variable tempMasAltaSemana, que almacena la temperatura más 
						//alta de la semana hasta ahora. Si el valor de la matriz es mayor, se actualizan las variables relacionadas con la 
						//temperatura más alta de la semana.
						tempMasAltaSemana <- matrizLectura(i, j);
						diaTempMasAltaSemana <- j;
						//Se actualizan las variables tempMasAltaSemana y diaTempMasAltaSemana con los nuevos valores si la temperatura en la 
						//posición (i, j) es mayor que la temperatura máxima actual de la semana.
					FinSi
					
					Si matrizLectura(i, j) < tempMasBajaSemana Entonces
						//Similar al caso anterior, esta línea compara el valor de la matriz en la posición (i, j) con la variable
						//tempMasBajaSemana, que almacena la temperatura más baja de la semana hasta ahora. Si el valor de la matriz es menor, 
						//se actualizan las variables relacionadas con la temperatura más baja de la semana.
						tempMasBajaSemana <- matrizLectura(i, j);
						diaTempMasBajaSemana <- j;
						//Se actualizan las variables tempMasBajaSemana y diaTempMasBajaSemana con los nuevos valores si la temperatura en 
						//la posición (i, j) es menor que la temperatura mínima actual de la semana.
					FinSi
					//Fin del bloque de código que se ejecuta si el valor de la matriz en la posición (i, j) no es igual a cero.
				FinSi
				sumaTempSemana <- sumaTempSemana + matrizLectura(i, j);
				//Se suma el valor de la matriz en la posición (i, j) a la variable sumaTempSemana. Esto se hace para obtener la suma t
				//otal de las temperaturas de la semana actual.
			FinSi
		Fin Para
		
		//Visualización información correspondiente a cada semana.
		Escribir "Para la semana ", i + 1, ":";
		Escribir "La temperatura mas baja fue: ", tempMasBajaSemana, "° y se presentó en el día ", calcularDiaSemana(diaTempMasBajaSemana), ".";
		Escribir "La temperatura mas alta fue: ", tempMasAltaSemana, "° y se presentó en el día ", calcularDiaSemana(diaTempMasAltaSemana), ".";
		Si i = 4 Entonces
			//Esta línea verifica si la semana actual es la última semana del mes, asumiendo que hay 5 semanas en el mes (i = 4 representa la quinta semana,
			//ya que los índices comienzan en 0). Esto se hace para determinar si se utilizará un divisor de 3 o 7 al calcular el promedio de temperatura.
			Escribir "El promedio de temperatura de la semana es: ", (sumaTempSemana) / 3, "°.";
			//Si estamos en la última semana del mes (semana 5), se imprime el mensaje que muestra el promedio de temperatura de la semana actual. El promedio se calcula 
			//dividiendo "sumaTempSemana" entre 3, ya que asumimos que cada mes tiene 5 semanas, y la variable "sumaTempSemana" contiene la suma total de las temperaturas de la semana actual.	
		SiNo
			//Si no estamos en la última semana del mes (semanas 1, 2, 3 o 4), entonces se ejecutan las siguientes líneas:
			Escribir "El promedio de temperatura de la semana es: ", (sumaTempSemana) / 7, "°.";
			//En este caso, se imprime el mensaje que muestra el promedio de temperatura de la semana actual. El promedio se calcula dividiendo "sumaTempSemana" entre 7, ya que asumimos que cada 
			//mes tiene 4 semanas completas, y la variable "sumaTempSemana" contiene la suma total de las temperaturas de la semana actual.	
		Fin Si
		Escribir "";
		//Esta línea simplemente imprime una línea en blanco, dejando un espacio entre la información de una semana y la siguiente.
	Fin Para
	
	//Visualización información correspondiente al mes.
	Escribir "Información del mes:";
	Escribir "La temperatura mas baja fue: ", tempMasBajaMes, "° y se presentó en el día ", calcularDiaSemana(diaTempMasBajaMes), " de la semana ",senamaTempMasBajaMes + 1, ".";
	// En esta línea, se imprime el mensaje que indica la temperatura más baja registrada durante el mes. La variable "tempMasBajaMes" contiene la temperatura más baja del mes. La función 
	//"calcularDiaSemana" es llamada con el argumento "diaTempMasBajaMes", que es el día de la semana (0 para el primer día) en que se registró la temperatura más baja.
	//La función "calcularDiaSemana" se encarga de convertir este número de día en el nombre del día correspondiente. Además, se agrega 1 al valor de "senamaTempMasBajaMes" para 
	//mostrar el número de semana real (ya que los índices en programación usualmente comienzan desde 0).
	Escribir "La temperatura mas alta fue: ", tempMasAltaMes, "° y se presentó en el día ", calcularDiaSemana(diaTempMasAltaMes), " de la semana ",senamaTempMasAltaMes + 1, ".";
	//Similar a la línea anterior, esta línea muestra el mensaje que indica la temperatura más alta registrada durante el mes. La variable "tempMasAltaMes" contiene la temperatura más
	//alta del mes. La función "calcularDiaSemana" se llama nuevamente para mostrar el nombre del día en que se registró la temperatura más alta. También se agrega 1 al valor 
	//de "senamaTempMasAltaMes" para mostrar el número de semana real (ya que los índices en programación usualmente comienzan desde 0).	
	
FinAlgoritmo

//Función que retorna el día de la semana correspondiente para un mes que inicia un lunes.
Funcion diaSemana <- calcularDiaSemana(dia)
	Definir diaSemana Como Caracter;

	Segun dia Hacer
		0:
			diaSemana <- "lunes";
		1:
			diaSemana <- "martes";
		2:
			diaSemana <- "miercoles";
		3:
			diaSemana <- "jueves";
		4:
			diaSemana <- "viernes";
		5:
			diaSemana <- "sabado";
		6:
			diaSemana <- "domingo";
	Fin Segun
FinFuncion

