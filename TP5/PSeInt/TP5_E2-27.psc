Algoritmo TP5_E2_27
	Definir cant,i,j,k,pos Como Entero
	Definir b Como Logico
	Definir max Como Real
	Dimension num[30]
	Dimension pos[30]
	b <- Falso
	Repetir
		Escribir "ingrese la cantidad de valores que se van a ingresar (max 30)"
		Leer cant
		Si cant < 0 | cant>30 Entonces
			Escribir "valor no valido" 
			b <- Verdadero
		SiNo
			b <- Falso
		FinSi
	Hasta Que b = Falso
	Para i<-1 Hasta cant Con Paso 1 Hacer
		Escribir "ingrese cualquier valor"
		Leer num[i]
		Si i = 1 Entonces
			max <- num[i]
			pos[i]<-i
		SiNo
			Si num[i]>max Entonces
				max <- num[i]
				Para j<-1 Hasta cant Con Paso 1 Hacer
					pos[j]<-0
				Fin Para
				pos[i]<-i
			SiNo
				Si num[i] = max Entonces
					pos[i]<-i
				FinSi
			FinSi
		FinSi
	Fin Para
	Escribir "el num mayor es: ",max
	Para k<-1 Hasta cant Con Paso 1 Hacer
		Si pos[k] <> 0 Entonces
			Escribir " en la posicion: ",pos[k]
		FinSi
	Fin Para
FinAlgoritmo
