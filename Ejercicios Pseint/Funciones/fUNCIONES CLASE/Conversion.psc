SubProceso dolares <- convertir ( pesos )
	Definir dolares Como Real
	dolares = pesos/4000
Fin SubProceso

Proceso Conversion
	Definir pesos Como Entero
	Escribir "Pesos a Dolares"
	Escribir " "
	Escribir "Ingrese Pesos"
	Leer pesos
	Escribir "Pesos a Dolares: ", convertir(pesos),"USD"
FinProceso
