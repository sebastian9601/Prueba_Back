Algoritmo Calculadora
    Definir num1, num2 , opcion , resultado como Real
	
	// Pedimos al usuario que ingrese dos n�meros
    Escribir "Ingrese el primer n�mero: "
    Leer num1
    Escribir "Ingrese el segundo n�mero: "
    Leer num2
    
    // Mostramos las opciones de operaciones y leemos la elecci�n del usuario
    Escribir "Elija una operaci�n: ";
    Escribir "1. Suma";
    Escribir "2. Resta";
    Escribir "3. Multiplicaci�n";
    Escribir "4. Divisi�n";
    Leer opcion
    
    // Realizamos la operaci�n correspondiente seg�n la elecci�n del usuario
	Segun opcion Hacer 
		1:
			resultado = num1 + num2;
			Escribir "La suma es ", resultado;
		2:
			resultado = num1 - num2;
			Escribir "La resta es ", resultado;
        3: 
			resultado = num1 * num2;
			Escribir "La multiplicacion es ", resultado;
		4:
			resultado = num1 / num2;
			Escribir  "La division es ", resultado;
		De Otro Modo:
			Escribir "Opcion incorrecta"
			
			
	FinSegun
  
FinAlgoritmo

