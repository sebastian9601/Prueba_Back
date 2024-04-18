Algoritmo Ejercicio5
	//Definici�n de variables.
	Definir i, j, tempMasBajaSemana, tempMasAltaSemana, diaTempMasAltaSemana, diaTempMasBajaSemana Como Entero;
	Definir tempMasBajaMes, tempMasAltaMes, diaTempMasAltaMes, diaTempMasBajaMes, senamaTempMasBajaMes, senamaTempMasAltaMes Como Entero;
	Definir matrizLectura, sumaTempSemana Como Real;
	Definir tamanhoFilas, tamanhoColumnas Como Real;
	
	//Asignaci�n del n�mero de filas y columnas que tendr� la matriz.
	tamanhoFilas <- 5;
	tamanhoColumnas <- 7;
	
	//Definici�n de la dimensi�n de la matriz.
	Dimension matrizLectura[tamanhoFilas, tamanhoColumnas];
	
	//Generaci�n de los elementos de la matriz.de las temperaturas
	Para i<-0 Hasta tamanhoFilas - 1 Con Paso 1 Hacer
		//Este es el inicio de un bucle externo que recorre las filas de la matriz. tamanhoFilas es la variable 
		//que representa la cantidad de filas en la matriz.
	
		Para j<-0 Hasta tamanhoColumnas - 1 Con Paso 1 Hacer
			//Este es el inicio de un bucle interno que recorre las columnas de la matriz. tamanhoColumnas es la
			//variable que representa la cantidad de columnas en la matriz.
			Si ((i = 4 Y j = 3) O (i = 4 Y j = 4) O (i = 4 Y j = 5) O (i = 4 Y j = 6)) Entonces
				//se utiliza para evitar que se registren temperaturas en ciertas posiciones de la matriz que no corresponden al mes de mayo completo.
				//Si te fijas en el enunciado del problema, se menciona que el mes de mayo tiene 31 d�as y comienza en un lunes (d�a 1) y finaliza en un mi�rcoles (d�a 31). 
				//La matriz que se quiere crear tiene 5 filas, que representan las semanas del mes, y 7 columnas, que representan los d�as de la semana.
				//Dado que la matriz tiene 5 filas y mayo tiene 31 d�as, algunas posiciones en la �ltima semana de la matriz quedar�an vac�as, ya que no hay suficientes d�as para 
				//llenarla completamente. Espec�ficamente, las posiciones de la fila 4 (la �ltima semana) en las columnas 3, 4, 5 y 6 ser�an los d�as 29, 30 y 31, y el resto estar�a vac�o.
				//Por lo tanto, en esa l�nea de c�digo, se est� verificando si la posici�n actual (i, j) de la matriz corresponde a los d�as 29, 30 o 31 (�ltimos d�as del mes). Si es as�, 
				//entonces se asigna un valor de temperatura de 0 a esas celdas mediante la instrucci�n matrizLectura(i, j) <- 0;. Esto se hace para indicar que no se han registrado 
				//temperaturas para esos d�as, ya que el mes de mayo no llega a la semana 5 completa.
				//i = 4: Esto verifica si el valor de la variable i es igual a 4. La variable i representa el �ndice de la fila actual en el bucle externo
				//j = 3: Esto verifica si el valor de la variable j es igual a 3. La variable j representa el �ndice de la columna actual en el bucle interno
				//O: Es el operador l�gico "O" (OR en ingl�s), que se utiliza para combinar varias condiciones. Devuelve True si al menos una de las condiciones es verdadera.
				matrizLectura(i, j) <- 0;
				// Si la posici�n actual cumple con las condiciones del paso 3, entonces se asigna el valor 0 a la celda de la matriz en la posici�n (i, j)
			SiNo
				//Si la posici�n actual no cumple con las condiciones del paso 3, se ejecuta el siguiente bloque de c�digo.
				matrizLectura(i, j) <- Aleatorio(7, 38);
				//Aqu� se asigna un valor aleatorio entre 7 y 38 a la celda de la matriz en la posici�n (i, j). Aleatorio(7, 38)
			Fin Si
			
		Fin Para
	Fin Para
	
	//Visualizaci�n de los elementos de la matriz.
	Escribir "Matriz de temperaturas:";
	Para i<-0 Hasta tamanhoFilas - 1 Con Paso 1 Hacer
		Para j<-0 Hasta tamanhoColumnas - 1 Con Paso 1 Hacer
			Escribir Sin Saltar matrizLectura(i, j), " ";
		Fin Para
		Escribir "";
	Fin Para
	Escribir "";
	
	//C�lculo de informaci�n requerida.
	Para i<-0 Hasta tamanhoFilas - 1 Con Paso 1 Hacer
		//Este bucle "Para" se encarga de iterar a trav�s de las filas de la matriz. Comienza con i = 0
		//y continuar� hasta que i sea menor que tamanhoFilas (n�mero total de filas en la matriz) menos 1.
		//El "Con Paso 1" significa que el incremento en cada iteraci�n ser� de 1.
		sumaTempSemana <- 0;
		//Aqu� se inicializa una variable llamada "sumaTempSemana" con el valor de 0. Esta variable se 
		//utilizar� para almacenar la suma de las temperaturas de la semana actual.
		Para j<-0 Hasta tamanhoColumnas - 1 Con Paso 1 Hacer
			//Este bucle "Para" se encarga de iterar a trav�s de las columnas de la matriz. Comienza con j = 0 
			//y continuar� hasta que j sea menor que tamanhoColumnas (n�mero total de columnas en la matriz) menos 1.
			Si matrizLectura(i, j) <> 0 Entonces
				//Esta l�nea verifica si el valor de la matriz en la posici�n (i, j) no es igual a cero. Si el valor
				//es diferente de cero, significa que hay una temperatura v�lida en esa posici�n (no es un valor nulo).
				Si (j = 0 Y i = 0) Entonces
					//Aqu� se verifica si estamos en la primera fila (i = 0) y la primera columna (j = 0) de la matriz.
					//Esto significa que es el primer elemento de la matriz y se realiza una inicializaci�n especial 
					//para las variables que almacenar�n la temperatura m�s alta y m�s baja del mes.
					tempMasAltaMes <- matrizLectura(i, j);
					tempMasBajaMes <- matrizLectura(i, j);
					diaTempMasAltaMes <- j;
					diaTempMasBajaMes <- j;
					senamaTempMasBajaMes <- i;
					senamaTempMasAltaMes <- i;
					//Aqu� se establecen las variables relacionadas con la temperatura m�s alta y m�s baja del mes.
					//Se asigna el valor de la matriz en la posici�n (i, j) a las variables tempMasAltaMes y tempMasBajaMes.
					//Tambi�n se almacenan los �ndices (j para el d�a y i para la semana) correspondientes a estas temperaturas
					//m�ximas y m�nimas del mes.
					
				SiNo
					//Si no estamos en la primera fila y primera columna (es decir, no es el primer elemento de la matriz), 
				//entonces se ejecutan las siguientes l�neas:
					Si matrizLectura(i, j) > tempMasAltaMes Entonces
						//Se compara el valor de la matriz en la posici�n (i, j) con la variable tempMasAltaMes, que almacena la 
						//temperatura m�s alta del mes hasta ahora. Si el valor de la matriz es mayor, se actualizan las variables relacionadas con la temperatura m�s alta del mes.
						tempMasAltaMes <- matrizLectura(i, j);
						diaTempMasAltaMes <- j;
						senamaTempMasAltaMes <- i;
					FinSi
					//Se actualizan las variables tempMasAltaMes, diaTempMasAltaMes y senamaTempMasAltaMes con los nuevos valores si la temperatura en la posici�n (i, j)
					//es mayor que la temperatura m�xima actual del mes.
					
					Si matrizLectura(i, j) < tempMasBajaMes Entonces
						//Similar al caso anterior, esta l�nea compara el valor de la matriz en la posici�n (i, j) con la variable tempMasBajaMes, que almacena la temperatura m�s
						//baja del mes hasta ahora. Si el valor de la matriz es menor, se actualizan las variables relacionadas con la temperatura m�s baja del mes.
						tempMasBajaMes <- matrizLectura(i, j);
						diaTempMasBajaMes <- j;
						senamaTempMasBajaMes <- i;
						//Se actualizan las variables tempMasBajaMes, diaTempMasBajaMes y senamaTempMasBajaMes con los nuevos valores si la temperatura 
						//en la posici�n (i, j) es menor que la temperatura m�nima actual del mes.
					FinSi
				FinSi
				
				Si (j = 0) Entonces
					//Aqu� se verifica si estamos en la primera columna (j = 0) de la matriz. Esto significa que es el primer d�a de la semana actual y se 
					//realiza una inicializaci�n especial para las variables que almacenar�n la temperatura m�s alta y m�s baja de la semana.
					tempMasAltaSemana <- matrizLectura(i, j);
					tempMasBajaSemana <- matrizLectura(i, j);
					diaTempMasAltaSemana <- j;
					diaTempMasBajaSemana <- j;
					//Se asigna el valor de la matriz en la posici�n (i, j) a las variables tempMasAltaSemana y tempMasBajaSemana. Tambi�n se almacenan 
					//los �ndices (j para el d�a) correspondientes a estas temperaturas m�ximas y m�nimas de la semana.
				SiNo
					//Si no estamos en la primera columna (es decir, no es el primer d�a de la semana), entonces se ejecutan las siguientes l�neas:
					Si matrizLectura(i, j) > tempMasAltaSemana Entonces
						//Se compara el valor de la matriz en la posici�n (i, j) con la variable tempMasAltaSemana, que almacena la temperatura m�s 
						//alta de la semana hasta ahora. Si el valor de la matriz es mayor, se actualizan las variables relacionadas con la 
						//temperatura m�s alta de la semana.
						tempMasAltaSemana <- matrizLectura(i, j);
						diaTempMasAltaSemana <- j;
						//Se actualizan las variables tempMasAltaSemana y diaTempMasAltaSemana con los nuevos valores si la temperatura en la 
						//posici�n (i, j) es mayor que la temperatura m�xima actual de la semana.
					FinSi
					
					Si matrizLectura(i, j) < tempMasBajaSemana Entonces
						//Similar al caso anterior, esta l�nea compara el valor de la matriz en la posici�n (i, j) con la variable
						//tempMasBajaSemana, que almacena la temperatura m�s baja de la semana hasta ahora. Si el valor de la matriz es menor, 
						//se actualizan las variables relacionadas con la temperatura m�s baja de la semana.
						tempMasBajaSemana <- matrizLectura(i, j);
						diaTempMasBajaSemana <- j;
						//Se actualizan las variables tempMasBajaSemana y diaTempMasBajaSemana con los nuevos valores si la temperatura en 
						//la posici�n (i, j) es menor que la temperatura m�nima actual de la semana.
					FinSi
					//Fin del bloque de c�digo que se ejecuta si el valor de la matriz en la posici�n (i, j) no es igual a cero.
				FinSi
				sumaTempSemana <- sumaTempSemana + matrizLectura(i, j);
				//Se suma el valor de la matriz en la posici�n (i, j) a la variable sumaTempSemana. Esto se hace para obtener la suma t
				//otal de las temperaturas de la semana actual.
			FinSi
		Fin Para
		
		//Visualizaci�n informaci�n correspondiente a cada semana.
		Escribir "Para la semana ", i + 1, ":";
		Escribir "La temperatura mas baja fue: ", tempMasBajaSemana, "� y se present� en el d�a ", calcularDiaSemana(diaTempMasBajaSemana), ".";
		Escribir "La temperatura mas alta fue: ", tempMasAltaSemana, "� y se present� en el d�a ", calcularDiaSemana(diaTempMasAltaSemana), ".";
		Si i = 4 Entonces
			//Esta l�nea verifica si la semana actual es la �ltima semana del mes, asumiendo que hay 5 semanas en el mes (i = 4 representa la quinta semana,
			//ya que los �ndices comienzan en 0). Esto se hace para determinar si se utilizar� un divisor de 3 o 7 al calcular el promedio de temperatura.
			Escribir "El promedio de temperatura de la semana es: ", (sumaTempSemana) / 3, "�.";
			//Si estamos en la �ltima semana del mes (semana 5), se imprime el mensaje que muestra el promedio de temperatura de la semana actual. El promedio se calcula 
			//dividiendo "sumaTempSemana" entre 3, ya que asumimos que cada mes tiene 5 semanas, y la variable "sumaTempSemana" contiene la suma total de las temperaturas de la semana actual.	
		SiNo
			//Si no estamos en la �ltima semana del mes (semanas 1, 2, 3 o 4), entonces se ejecutan las siguientes l�neas:
			Escribir "El promedio de temperatura de la semana es: ", (sumaTempSemana) / 7, "�.";
			//En este caso, se imprime el mensaje que muestra el promedio de temperatura de la semana actual. El promedio se calcula dividiendo "sumaTempSemana" entre 7, ya que asumimos que cada 
			//mes tiene 4 semanas completas, y la variable "sumaTempSemana" contiene la suma total de las temperaturas de la semana actual.	
		Fin Si
		Escribir "";
		//Esta l�nea simplemente imprime una l�nea en blanco, dejando un espacio entre la informaci�n de una semana y la siguiente.
	Fin Para
	
	//Visualizaci�n informaci�n correspondiente al mes.
	Escribir "Informaci�n del mes:";
	Escribir "La temperatura mas baja fue: ", tempMasBajaMes, "� y se present� en el d�a ", calcularDiaSemana(diaTempMasBajaMes), " de la semana ",senamaTempMasBajaMes + 1, ".";
	// En esta l�nea, se imprime el mensaje que indica la temperatura m�s baja registrada durante el mes. La variable "tempMasBajaMes" contiene la temperatura m�s baja del mes. La funci�n 
	//"calcularDiaSemana" es llamada con el argumento "diaTempMasBajaMes", que es el d�a de la semana (0 para el primer d�a) en que se registr� la temperatura m�s baja.
	//La funci�n "calcularDiaSemana" se encarga de convertir este n�mero de d�a en el nombre del d�a correspondiente. Adem�s, se agrega 1 al valor de "senamaTempMasBajaMes" para 
	//mostrar el n�mero de semana real (ya que los �ndices en programaci�n usualmente comienzan desde 0).
	Escribir "La temperatura mas alta fue: ", tempMasAltaMes, "� y se present� en el d�a ", calcularDiaSemana(diaTempMasAltaMes), " de la semana ",senamaTempMasAltaMes + 1, ".";
	//Similar a la l�nea anterior, esta l�nea muestra el mensaje que indica la temperatura m�s alta registrada durante el mes. La variable "tempMasAltaMes" contiene la temperatura m�s
	//alta del mes. La funci�n "calcularDiaSemana" se llama nuevamente para mostrar el nombre del d�a en que se registr� la temperatura m�s alta. Tambi�n se agrega 1 al valor 
	//de "senamaTempMasAltaMes" para mostrar el n�mero de semana real (ya que los �ndices en programaci�n usualmente comienzan desde 0).	
	
FinAlgoritmo

//Funci�n que retorna el d�a de la semana correspondiente para un mes que inicia un lunes.
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

