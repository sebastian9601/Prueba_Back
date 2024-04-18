Algoritmo Ejercicio6
	//Definici�n de variables.
	Definir matrizLectura Como Real;
	Definir tamanhoFilas, tamanhoColumnas, seleccion, depto Como Real;
	Definir montoVentasValido, seleccionValida, deptoValido Como Logico;
	
	//Asignaci�n del n�mero de filas y columnas que tendr� la matriz.
	tamanhoFilas <- 5;
	tamanhoColumnas <- 12;
	
	//Definici�n de la dimensi�n de la matriz.
	Dimension matrizLectura[tamanhoFilas, tamanhoColumnas];
	
	//Generaci�n de los elementos de la matriz.
	Para i<-0 Hasta tamanhoFilas - 1 Con Paso 1 Hacer
		Para j<-0 Hasta tamanhoColumnas - 1 Con Paso 1 Hacer
			//matrizLectura(i, j) <- Aleatorio(1, 10);
			montoVentasValido <- Falso;
			//con el valor "Falso". Esta variable se utilizar� m�s adelante para controlar si el valor ingresado por el usuario es v�lido.
			Mientras NO montoVentasValido Hacer
				//"Mientras". El bucle se ejecutar� mientras montoVentasValido sea "Falso", lo que significa que seguir� pidiendo al usuario
				//que ingrese un valor v�lido hasta que se cumpla la condici�n requerida.
				Escribir "Ingrese el valor correspondiente al monto de ventas del departamento ", i + 1, " en el mes ", j + 1, ":";
				// Esta l�nea muestra un mensaje en pantalla pidiendo al usuario que ingrese el valor correspondiente al monto de ventas para un 
				//departamento espec�fico en un mes determinado. i + 1 y j + 1 se utilizan para mostrar el n�mero de departamento y el n�mero de mes 
				//con un formato m�s amigable para el usuario, ya que los �ndices suelen empezar en 0 en la mayor�a de lenguajes de programaci�n.
				Leer valorElem;
				Si (valorElem > 0) Entonces
					matrizLectura(i, j) <- valorElem;
					// Si la condici�n anterior es verdadera, se asigna el valor ingresado por el usuario a la posici�n correspondiente en la matriz 
					//matrizLectura, que est� ubicada en la fila i y columna j.
					montoVentasValido <- Verdadero;
					//Luego de asignar el valor correctamente, se establece la variable montoVentasValido en "Verdadero", indicando que el valor ingresado es 
					//v�lido y podemos salir del bucle "Mientras".
				SiNo
					Escribir "Ingrese un monto de ventas v�lido. Mayor que cero.";
				//esta l�nea, se le pide al usuario que ingrese un valor v�lido (mayor que cero) ya que el valor ingresado anteriormente no cumple con los requisitos.	
				FinSi
			FinMientras
		Fin Para
	Fin Para
	
	//Visualizaci�n de los elementos de la matriz.
	Escribir "La matriz que representa las ventas mensuales por departamento es:";
	mostrarMatriz(matrizLectura, tamanhoFilas, tamanhoColumnas);
	Escribir "";
	
	//Validaci�n y ejecuci�n de c�lculos en funci�n de la selecci�n realizada.
	seleccionValida <- Falso;
	Mientras NO seleccionValida Hacer
		Escribir "�Qu� informaci�n desea visualizar? Ingrese el n�mero correspondiente:";
		Escribir "1. Ventas mensuales de la f�brica.";
		Escribir "2. Monto anual de las ventas de la f�brica.";
		Escribir "3. Monto del departamento que tuvo la mayor venta en el mes de julio.";
		Escribir "4. Mayor venta de un departamento espec�fico.";
		Leer seleccion;
		
		Segun seleccion Hacer
			1:
				calcularVentasMensualesFabrica(matrizLectura, tamanhoFilas, tamanhoColumnas);
				seleccionValida <- Verdadero;
				//seleccionValida con el valor "Falso". Esta variable se utilizar� para controlar si la opci�n seleccionada por el usuario es v�lida.
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
						Escribir "Ingrese un n�mero de departamento v�lido. Un n�mero entero y entre 1 y 12.";
					FinSi
				FinMientras
			De Otro Modo:
				Escribir "Ingrese una opci�n v�lida. Un n�mero entero y entre 1 y 4.";
		Fin Segun
	Fin Mientras
FinAlgoritmo

//Funci�n que visualiza la matriz generada.
Funcion mostrarMatriz(matriz, tamanhoFilas, tamanhoColumnas)
	Para i<-0 Hasta tamanhoFilas - 1 Con Paso 1 Hacer
		Para j<-0 Hasta tamanhoColumnas - 1 Con Paso 1 Hacer
			Escribir Sin Saltar matriz(i, j), " ";
		Fin Para
		Escribir "";
	Fin Para
FinFuncion

//Funci�n que calcula y muestra las ventas mensuales de la fabrica a partir de la matriz generada.
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

//Funci�n que calcula y muestra las ventas anuales de la fabrica a partir de la matriz generada.
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

//Funci�n que calcula y muestra la venta mayor de la fabrica por departamento en el mes de julio a partir de la matriz generada.
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

//Funci�n que calcula y muestra la mayor venta de un departamento de la fabrica a partir de la matriz generada.
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