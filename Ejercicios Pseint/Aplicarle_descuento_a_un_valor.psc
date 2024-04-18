Algoritmo Aplicarle_descuento_a_un_valor
	Definir precio_original,precio_final,porcentaje_descuento Como Real
	
	escribir("Ingrese el precio original del producto:")
	leer precio_original
	
	escribir("Ingrese el porcentaje de descuento a aplicar:")
	leer porcentaje_descuento
	
	monto_descuento = (precio_original * porcentaje_descuento) / 100
	precio_final = precio_original - monto_descuento
	
	escribir"El precio final con descuento es:", precio_final

FinAlgoritmo
