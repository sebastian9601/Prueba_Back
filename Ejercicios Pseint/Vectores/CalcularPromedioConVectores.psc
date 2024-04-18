Algoritmo CalcularPromedioConVectores
    Dimension notas[9]
    Definir suma_notas, promedio Como Real;
    Definir estudiante, nota Como Entero;
	
    Para estudiante <- 0 Hasta 2 Con Paso 1 Hacer
        Escribir "Ingrese las notas del estudiante ", estudiante + 1;
		
		
		//este fragmento de código es una sección que se encarga de solicitar al usuario las notas de un estudiante específico y 
		//luego calcular la suma de esas notas.
        suma_notas <- 0;
		// inicializa la variable suma_notas a cero. Esta variable se utiliza para almacenar la suma acumulativa de las notas 
		//ingresadas por el usuario para un estudiante particular.
        Para nota <- 0 Hasta 2 Con Paso 1 Hacer
			// establece un bucle que se repetirá tres veces, desde 0 hasta 2, que corresponde a las tres notas que se deben
			//ingresar para cada estudiante.
            Escribir "Ingrese la nota ", nota + 1, " del estudiante ", estudiante + 1;
			//nota + 1 se utiliza para mostrar el número de la nota actual, incrementando en 1 para mejorar la presentación al usuario. 
			//estudiante + 1 también se incrementa en 1 para mostrar el número del estudiante actual.
            Leer notas[estudiante * 3 + nota];
            suma_notas <- suma_notas + notas[estudiante * 3 + nota];
			// aquí se lee la nota ingresada por el usuario y se almacena en el vector notas[] en la posición correspondiente. Se calcula la posición utilizando 
			//la fórmula estudiante * 3 + nota, donde estudiante * 3 determina la ubicación del estudiante en el vector y + nota selecciona la posición de la
			//nota específica del estudiante.
        FinPara
        
        promedio <- suma_notas / 3;
        Escribir "El promedio del estudiante ", estudiante + 1, " es: ", promedio;
    FinPara
FinAlgoritmo
// Cuando se usa la expresión estudiante * 3, se está multiplicando el número del estudiante por 3. Esto ayuda a determinar dónde comienza el bloque de las notas de un 
//estudiante en el vector. Por ejemplo:

//Si estudiante es 0 (primer estudiante), estudiante * 3 sería 0 * 3 = 0.
//	Si estudiante es 1 (segundo estudiante), estudiante * 3 sería 1 * 3 = 3.
//	Si estudiante es 2 (tercer estudiante), estudiante * 3 sería 2 * 3 = 6.

//De esta manera, utilizando estudiante * 3, se reservan segmentos consecutivos de tres posiciones en el vector para cada estudiante, de modo que 
//las tres notas de un estudiante específico se almacenan en posiciones contiguas dentro del vector. Esto simplifica el acceso y la gestión de las
//notas para cada estudiante en el programa
