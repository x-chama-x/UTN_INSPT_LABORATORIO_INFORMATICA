Algoritmo TP4_E221
	Definir cant,i,j,k,l Como Entero
	Dimension V1[30]
	Dimension V2[30]
	k <- 1
	Escribir "ingresar la cantidad de valores que tendrá el vector 1"
	Escribir "ingrese un valor entero entre 1 y 30"
	Leer cant
	Para i<-1 Hasta cant Con Paso 1 Hacer
		Escribir "ingrese un valor entero"
		Leer V1[i]
	Fin Para
	Para j<-cant Hasta 1 Con Paso -1 Hacer
		V2[k]<-V1[j]
		k <- k + 1
	Fin Para
	Para l<-1 Hasta cant Con Paso 1 Hacer
		Escribir " ", V2[l]
	Fin Para
FinAlgoritmo
