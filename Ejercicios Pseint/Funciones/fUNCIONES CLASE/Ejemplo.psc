SubProceso suma <- sumaTres ( n1,n2,n3 )
	Definir suma Como Entero
	suma = n1+n2+n3
Fin SubProceso

Algoritmo Ejemplo
	Definir a,b,c como Entero
	Escribir "Funcion que suma 3 numeros"
	Escribir " "
	Escribir "numero 1: "
	Leer a
	Escribir "numero 2:"
	Leer b
    Escribir "numero 3:" 	
	Leer c
	Escribir "La suma de los 3 numeros es : ", sumaTres(a,b,c)
	
FinAlgoritmo
	