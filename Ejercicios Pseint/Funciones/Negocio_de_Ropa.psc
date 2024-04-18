

Funcion facturaMayores <- calcularFacturaParaMayores ( total )
	facturaMayores = total * 1.1
Fin Funcion


Funcion facturaMenores <- calcularFacturaParaMenores(total)
		facturaMenores = total * 0.9
Fin Funcion




Algoritmo Negocio_de_Ropa
	
	definir total Como Real
	definir edad Como Entero
	
	Escribir "Ingrese la edad"
	Leer edad
	
	Escribir "Ingrese el monto a pagar"
	Leer total
	
	
	si edad <= 18 Entonces
		Escribir "El total a pagar tendra un descuento del 10% y sera: ", calcularFacturaParaMenores(total)
	SiNo
		Escribir "El totala pagar tendra un recargo del 10% y sera: ", calcularFacturaParaMayores(total)
	FinSi
	
	
	
FinAlgoritmo
