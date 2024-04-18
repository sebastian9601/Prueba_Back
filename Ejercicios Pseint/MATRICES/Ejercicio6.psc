Algoritmo Ejercicio6
	//Definición de variables.
	Definir matrizLectura Como Real;
	Definir tamanhoFilas, tamanhoColumnas, seleccion, depto Como Real;
	Definir montoVentasValido, seleccionValida, deptoValido Como Logico;
	
	//Asignación del número de filas y columnas que tendrá la matriz.
	tamanhoFilas <- 5;
	tamanhoColumnas <- 12;
	
	//Definición de la dimensión de la matriz.
	Dimension matrizLectura[tamanhoFilas, tamanhoColumnas];
	
	//Generación de los elementos de la matriz.
	Para i<-0 Hasta tamanhoFilas - 1 Con Paso 1 Hacer
		Para j<-0 Hasta tamanhoColumnas - 1 Con Paso 1 Hacer
			//matrizLectura(i, j) <- Aleatorio(1, 10);
			montoVentasValido <- Falso;
			//con el valor "Falso". Esta variable se utilizará más adelante para controlar si el valor ingresado por el usuario es válido.
			Mientras NO montoVentasValido Hacer
				//"Mientras". El bucle se ejecutará mientras montoVentasValido sea "Falso", lo que significa que seguirá pidiendo al usuario
				//que ingrese un valor válido hasta que se cumpla la condición requerida.
				Escribir "Ingrese el valor correspondiente al monto de ventas del departamento ", i + 1, " en el mes ", j + 1, ":";
				// Esta línea muestra un mensaje en pantalla pidiendo al usuario que ingrese el valor correspondiente al monto de ventas para un 
				//departamento específico en un mes determinado. i + 1 y j + 1 se utilizan para mostrar el número de departamento y el número de mes 
				//con un formato más amigable para el usuario, ya que los índices suelen empezar en 0 en la mayoría de lenguajes de programación.
				Leer valorElem;
				Si (valorElem > 0) Entonces
					matrizLectura(i, j) <- valorElem;
					// Si la condición anterior es verdadera, se asigna el valor ingresado por el usuario a la posición correspondiente en la matriz 
					//matrizLectura, que está ubicada en la fila i y columna j.
					montoVentasValido <- Verdadero;
					//Luego de asignar el valor correctamente, se establece la variable montoVentasValido en "Verdadero", indicando que el valor ingresado es 
					//válido y podemos salir del bucle "Mientras".
				SiNo
					Escribir "Ingrese un monto de ventas válido. Mayor que cero.";
				//esta línea, se le pide al usuario que ingrese un valor válido (mayor que cero) ya que el valor ingresado anteriormente no cumple con los requisitos.	
				FinSi
			FinMientras
		Fin Para
	Fin Para
	
	//Visualización de los elementos de la matriz.
	Escribir "La matriz que representa las ventas mensuales por departamento es:";
	mostrarMatriz(matrizLectura, tamanhoFilas, tamanhoColumnas);
	Escribir "";
	
	//Validación y ejecución de cálculos en función de la selección realizada.
	seleccionValida <- Falso;
	Mientras NO seleccionValida Hacer
		Escribir "¿Qué información desea visualizar? Ingrese el número correspondiente:";
		Escribir "1. Ventas mensuales de la fábrica.";
		Escribir "2. Monto anual de las ventas de la fábrica.";
		Escribir "3. Monto del departamento que tuvo la mayor venta en el mes de julio.";
		Escribir "4. Mayor venta de un departamento específico.";
		Leer seleccion;
		
		Segun seleccion Hacer
			1:
				calcularVentasMensualesFabrica(matrizLectura, tamanhoFilas, tamanhoColumnas);
				seleccionValida <- Verdadero;
				//seleccionValida con el valor "Falso". Esta variable se utilizará para controlar si la opción seleccionada por el usuario es válida.
			2:
				calcularVentasAnualesFabrica(matrizLectura, tamanhoFilas, tamanhoColumnas);
				seleccionValida <- Verdadero;
			3:
				calcularMayorVentaJulio(matrizLectura, tamanhoFilas, tamanhoColumnas);
				seleccionValida <- Verdadero;
			4:
				deptoValido <- Falso;
				Mientras NO deptoValido Hacer
					Escribir "Ingrese el valor correspondiente al departamento del que se quiere conocer la venta mayor.";
					Leer depto;
					Si (depto - trunc(depto) = 0) Y (depto > 0) Y (depto < 13) Entonces
						calcularMayorVentaPorDepartamento(matrizLectura, tamanhoFilas, tamanhoColumnas, depto);
						deptoValido <- Verdadero;
						seleccionValida <- Verdadero;
					SiNo
						Escribir "Ingrese un número de departamento válido. Un número entero y entre 1 y 12.";
					FinSi
				FinMientras
			De Otro Modo:
				Escribir "Ingrese una opción válida. Un número entero y entre 1 y 4.";
		Fin Segun
	Fin Mientras
FinAlgoritmo

//Función que visualiza la matriz generada.
Funcion mostrarMatriz(matriz, tamanhoFilas, tamanhoColumnas)
	Para i<-0 Hasta tamanhoFilas - 1 Con Paso 1 Hacer
		Para j<-0 Hasta tamanhoColumnas - 1 Con Paso 1 Hacer
			Escribir Sin Saltar matriz(i, j), " ";
		Fin Para
		Escribir "";
	Fin Para
FinFuncion

//Función que calcula y muestra las ventas mensuales de la fabrica a partir de la matriz generada.
Funcion calcularVentasMensualesFabrica(matriz, tamanhoFilas, tamanhoColumnas)
	Definir ventasMensualesFabrica Como Real;
	Definir i, j Como Entero;
	
	Para j<-0 Hasta tamanhoColumnas - 1 Con Paso 1 Hacer
		//Inicia un bucle "Para" que recorre cada columna (j) de la matriz de ventas.
		ventasMensualesFabrica <- 0;
		Para i<-0 Hasta tamanhoFilas - 1 Con Paso 1 Hacer
			ventasMensualesFabrica <- ventasMensualesFabrica + matriz(i, j);
		Fin Para
		Escribir "El monto de ventas de la fabrica correspondiente al mes ", j + 1, " es: $", ventasMensualesFabrica, ".";
	Fin Para
FinFuncion

//Función que calcula y muestra las ventas anuales de la fabrica a partir de la matriz generada.
Funcion calcularVentasAnualesFabrica(matriz, tamanhoFilas, tamanhoColumnas)
	Definir ventasAnualesFabrica Como Real;
	Definir i, j Como Entero;
	
	ventasAnualesFabrica <- 0;
	Para j<-0 Hasta tamanhoColumnas - 1 Con Paso 1 Hacer
		Para i<-0 Hasta tamanhoFilas - 1 Con Paso 1 Hacer
			ventasAnualesFabrica <- ventasAnualesFabrica + matriz(i, j);
		Fin Para
	Fin Para
	Escribir "El monto de ventas anual de la fabrica es: $", ventasAnualesFabrica, ".";
FinFuncion

//Función que calcula y muestra la venta mayor de la fabrica por departamento en el mes de julio a partir de la matriz generada.
Funcion calcularMayorVentaJulio(matriz, tamanhoFilas, tamanhoColumnas)
	Definir mayorVentaJulio Como Real;
	Definir i, j, deptoMayorVentaJulio Como Entero;
	
	Para i<-0 Hasta tamanhoFilas - 1 Con Paso 1 Hacer
		Si i = 0 Entonces
			mayorVentaJulio <- matriz(i, 6);
			deptoMayorVentaJulio <- i;
		SiNo
			Si matriz(i, 6) > mayorVentaJulio Entonces
				mayorVentaJulio <- matriz(i, 6);
				deptoMayorVentaJulio <- i;
			Fin Si
		Fin Si
	Fin Para
	Escribir "El mayor monto de ventas de la fabrica en el mes de julio es $", mayorVentaJulio, " y corresponde al departamento ", deptoMayorVentaJulio + 1, ".";
FinFuncion

//Función que calcula y muestra la mayor venta de un departamento de la fabrica a partir de la matriz generada.
Funcion calcularMayorVentaPorDepartamento(matriz, tamanhoFilas, tamanhoColumnas, departamento)
	Definir mayorVentaPorDepartamento Como Real;
	Definir i, j, mesMayorVenta Como Entero;
	
	Para i<-0 Hasta tamanhoColumnas - 1 Con Paso 1 Hacer
		Si i = 0 Entonces
			mayorVentaPorDepartamento <- matriz(departamento - 1, i);
			mesMayorVenta <- i;
		SiNo
			Si matriz(departamento - 1, i) > mayorVentaPorDepartamento Entonces
				mayorVentaPorDepartamento <- matriz(departamento - 1, i);
				mesMayorVenta <- i;
			Fin Si
		Fin Si
	Fin Para
	Escribir "El mayor monto de ventas del departamento ", departamento, " corresponde a $", mayorVentaPorDepartamento, " y se presenta en el mes ", mesMayorVenta + 1, ".";
FinFuncion