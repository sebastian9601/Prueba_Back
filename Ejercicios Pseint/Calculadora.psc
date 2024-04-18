Algoritmo Calculadora
    Definir num1, num2 , opcion , resultado como Real
	
	// Pedimos al usuario que ingrese dos números
    Escribir "Ingrese el primer número: "
    Leer num1
    Escribir "Ingrese el segundo número: "
    Leer num2
    
    // Mostramos las opciones de operaciones y leemos la elección del usuario
    Escribir "Elija una operación: ";
    Escribir "1. Suma";
    Escribir "2. Resta";
    Escribir "3. Multiplicación";
    Escribir "4. División";
    Leer opcion
    
    // Realizamos la operación correspondiente según la elección del usuario
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

