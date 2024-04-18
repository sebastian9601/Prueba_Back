Algoritmo GestionInventarios
	
	Dimension inventario[2,4] //para almacenar los detalles de los productos
	Dimension productoBuscado[4]  // para almacenar detalles de producto buscado
	Dimension productosSimilares[5] // almacenar los resultados de la busqueda
	
	//Ingreso de los detalles de cada producto
	Escribir "Ingrese detalles de los productos en el inventario (5 productos- Marca, Modelo,Precio,Disponibilidad)"
	Para i = 0 Hasta 1 Con Paso 1 Hacer
		Escribir "Producto", i + 1 , ":" //mostrar n umero de producto actual
		Para j = 0 Hasta 3 Con Paso 1 Hacer
			Segun j Hacer
				Caso 0:
					Escribir "Ingrese la marca : "
				Caso 1:
					Escribir "Ingrese el modelo : "
				Caso 2:
					Escribir "Ingrese el precio : "
				Caso 3:
					Escribir "Ingrese la disponibilidad"
			FinSegun
			Leer inventario[i,j] //LEe y almacena los detalles del producto en la matriz "inventario"
		Fin Para
	Fin Para
	
	Escribir "Ingrese los detalles del producto que esta buscando: "
	Para c =0 Hasta 3 Con Paso 1 Hacer
		Segun c Hacer
			Caso 0:
				Escribir "Ingrese la marca : "
			Caso 1:
				Escribir "Ingrese el modelo : "
			Caso 2:
				Escribir "Ingrese el precio : "
			Caso 3:
				Escribir "Ingrese la disponibilidad"
		FinSegun
		Leer productoBuscado[c]
	Fin Para
	
	//BUSCAR PRUDoCTOS SIMILARES EN EL inventario
	Para i= 0 Hasta 1 Con Paso 1 Hacer
		Si inventario[i,0] = productoBuscado[0] Y inventario[i,1] = productoBuscado[1] Y inventario[i,2] = productoBuscado[2] Y inventario[i,3] = productoBuscado[3] Entonces
		    productosSimilares[i]="Producto similar encontrado: "+inventario[i,0]+ " "+ inventario[i,1]+inventario[i,2]+inventario[i,3]
		FinSi
	Fin Para
	
	//mostrar los resultados de la busqueda
	Escribir "Resultados de la busqueda de los productos similares: "
	
	Para i=0 Hasta 4 Con Paso 1 Hacer
		Escribir productosSimilares[i]
	Fin Para
	
FinAlgoritmo
	