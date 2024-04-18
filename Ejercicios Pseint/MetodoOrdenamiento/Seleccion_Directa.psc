Proceso Seleccion_Directa
    Escribir "Dame el número de datos a ordenar"
    Leer cantidad_datos
    dimension datos(cantidad_datos)
    
    Para i=1 Hasta cantidad_datos
        Escribir sin saltar "Dame el dato ", i, " "
        Leer datos(i)
    FinPara
    
    Para i=1 Hasta cantidad_datos-1
        indice_minimo=i
        Para j=i+1 Hasta cantidad_datos
            si datos(j)<datos(indice_minimo)
                indice_minimo=j
            FinSi
        FinPara
        Si i<>indice_minimo
            temporal=datos(i)
            datos(i)=datos(indice_minimo)
            datos(indice_minimo)=temporal
        FinSi
    FinPara
    
    Para i=1 hasta cantidad_datos
        Escribir sin saltar datos(i), " "
    FinPara
FinProceso
