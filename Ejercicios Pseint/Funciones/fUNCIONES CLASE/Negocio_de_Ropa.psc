SubProceso facturaMayores <- calcularFacturaParaMayores ( total )
	facturaMayores = total * 1.1
Fin SubProceso

SubProceso facturaMenores <- calcularFacturaParaMenores( total )
	facturaMenores = total * 0.9
Fin SubProceso



Proceso Negocio_de_Ropa
	
	definir total Como Real
	Definir edad Como Entero
	Escribir "Ingrese la edad : "
	Leer edad
	Escribir "Ingrese el monto a pagar: "
	Leer total
	
	Si edad < 18 Entonces
		Escribir "El total a pagar tendra un descuento del 10% y sera : ", calcularFacturaParaMenores(total)
	SiNo
		Escribir "El total a pagar tendra un recargo del 10% y sera: ", calcularFacturaParaMayores(total)
	FinSi	
	
FinProceso
