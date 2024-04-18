SubProceso ordenarBurbuja (arreglo,t, tipo)
	Definir i,j,aux como entero;// variable auxiliar para intercambiar los valores
	
	Para j <-t-1 Hasta 1 Con Paso -1 Hacer // bucle externo con j tamaño del arreglo menos 1 hasta donde 
		// hasta 1 y va de hasta -1 va disminuyendo
		Para i<-0 Hasta j-1 Con Paso 1 Hacer// para ir comparando desde 5 hacia atras
			Si tipo=1 Entonces
				Si arreglo[i]<arreglo[i+1] Entonces // si arreglo actual es mayor a arreglo posterior
					aux<-arreglo[i]; // intercambios necesarios para eso la aux
					arreglo[i]<-arreglo[i+1];//dentro del arreglo a i le asigno el valor del que esta adelante
					arreglo[i+1] <- aux;// y al valor que estaba adelante le voy a dar loq ue esta en aux
				Fin Si
			SiNo
				Si arreglo[i]>arreglo[i+1] Entonces // si arreglo actual es mayor a arreglo posterior
					aux<-arreglo[i]; // intercambios necesarios para eso la aux
					arreglo[i]<-arreglo[i+1];//dentro del arreglo a i le asigno el valor del que esta adelante
					arreglo[i+1] <- aux;// y al valor que estaba adelante le voy a dar loq ue esta en aux
				Fin Si
			Fin Si
		Fin Para
	Fin Para
	
Fin SubProceso
// 0 para ascendente y 1 para descendente

Proceso MetodosOrdenamiento
	definir arreglo,t,min, max como entero;
	Escribir sin saltar "Ingrese el tamaño del arreglo";
	Leer t;
	dimension arreglo[t];
	
	leerArreglo(arreglo,t);
	mostrarArreglo(arreglo,t );
	
	ordenarBurbuja(arreglo,t,1);
	
	Escribir " ";
	
	Escribir "Luego de Ordenar";
	
	mostrarArreglo(arreglo,t );
FinProceso

SubProceso leerArreglo ( arreglo,t)
	definir i como entero;
	
	Para i<-0 Hasta t-1 Con Paso 1 Hacer
		Escribir sin saltar "Elemento arreglo[",i,"]=";
		Leer arreglo[i];
	FinPara
FinSubProceso

SubProceso mostrarArreglo ( arreglo,t )
	definir i como entero;
	Escribir " ";
	Escribir "Los datos del arreglo son:";
	Para i<-0 Hasta t-1 Con Paso 1 Hacer
		Escribir sin saltar arreglo[i]," ";
	FinPara
	Escribir "";
FinSubProceso


