Algoritmo TP4_E220
	Definir cant Como Entero
	Dimension V1[30]
	Dimension V2[30]
	Escribir "ingresar la cantidad de valores que tendrá el vector 1"
	Escribir "ingrese un valor entero entre 1 y 30"
	Leer cant
	Para i<-1 Hasta cant Con Paso 1 Hacer
		Escribir "ingrese un valor entero"
		Leer V1[i]
	Fin Para
	Para q<-1 Hasta cant Con Paso 1 Hacer
		Si V1[q] = V1[1] Entonces
			V2[q] <- V1[cant]
		SiNo
			Si V1[q] = V1[cant] Entonces
				V2[q] <- V1[1]
			SiNo
				V2[q] <- V1[q]
			FinSi
		FinSi
	Fin Para
	Para j<-1 Hasta cant Con Paso 1 Hacer
		Escribir " ", V2[j]
	Fin Para
FinAlgoritmo
