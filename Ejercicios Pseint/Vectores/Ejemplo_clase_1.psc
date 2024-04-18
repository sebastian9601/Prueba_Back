Algoritmo Ejemplo_clase_1
	//ingresar n números, almacenarlos en un arreglo y mostrar el numero o elemento mayor, así como el segundo mayor.
	
	
	Dimension datos[10]; // Declara un arreglo llamado "datos" de tamaño 10
	
	Escribir "Ingrese la cantidad de elementos:"; // Muestra en pantalla el mensaje "Ingrese la cantidad de elementos:"
	Leer n; // Lee la cantidad de elementos ingresada por el usuario y la guarda en la variable "n"
	
	Para i<-1 Hasta n Hacer // Inicia un ciclo "Para" desde i = 1 hasta i = n
		Escribir "Ingrese el " i " elemento"; // Muestra en pantalla el mensaje "Ingrese el i elemento"
		Leer datos[i]; // Lee el elemento ingresado por el usuario y lo guarda en la posición i del arreglo "datos"
	FinPara // Finaliza el ciclo "Para"
	
	Si datos[1]>datos[2] Entonces // Si el primer elemento es mayor que el segundo, entonces
		numero1<-datos[1]; // La variable "numero1" toma el valor de datos[1]
		numero2<-datos[2]; // La variable "numero2" toma el valor de datos[2]
	Sino // De lo contrario
		numero1<-datos[2]; // La variable "numero1" toma el valor de datos[2]
		numero2<-datos[1]; // La variable "numero2" toma el valor de datos[1]
	FinSi // Finaliza la estructura "Si"
	
	Para i<-3 Hasta n Hacer // Inicia un ciclo "Para" desde i = 3 hasta i = n
		Si datos[i]>numero1 Entonces // Si el elemento en la posición i es mayor que "numero1", entonces
			numero2<-numero1; // "numero2" toma el valor de "numero1"
			numero1<-datos[i]; // "numero1" toma el valor del elemento en la posición i
		Sino // De lo contrario
			Si datos[i]>numero2 Entonces // Si el elemento en la posición i es mayor que "numero2", entonces
				numero2<-datos[i]; // "numero2" toma el valor del elemento en la posición i
			FinSi // Finaliza la estructura "Si"
		FinSi // Finaliza la estructura "Si"
	FinPara // Finaliza el ciclo "Para"
	
	Escribir "El mayor elemento es: ",numero1; // Muestra en pantalla el mensaje "El mayor elemento es:" seguido del valor de "numero1"
	Escribir "El segundo mayor elemento es: ",numero2; // Muestra en pantalla el mensaje "El segundo mayor elemento es:" seguido del valor de "numero2"
FinAlgoritmo


