Algoritmo TP4_E225
	Definir cant,i,j,k Como Entero
	Definir b Como Logico
	Definir num,max Como Real
	Dimension pos[2000]
	b <- Falso
	Repetir
		Escribir "ingrese la cantidad de valores que se van a ingresar"
		Leer cant
		Si cant < 0 Entonces
			Escribir "valor no valido" 
			b <- Verdadero
		SiNo
			b <- Falso
		FinSi
	Hasta Que b = Falso
	Para i<-1 Hasta cant Con Paso 1 Hacer
		Escribir "ingrese cualquier valor"
		Leer num
		Si i = 1 Entonces
			max <- num
			pos[i]<-i
		SiNo
			Si num>max Entonces
				max <- num
				Para j<-1 Hasta cant Con Paso 1 Hacer
					pos[j]<-0
				Fin Para
				pos[i]<-i
			SiNo 
				Si num = max Entonces
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
