Algoritmo TP5_E2_40
	Definir N,i,j,num Como Entero
	Definir suma,sumaMax,posSumaMax Como Entero
	Definir boolean Como Logico
	num<-0
	suma <- 0
	sumaMax <- 0
	posSumaMax <- 0
	boolean <- Falso
	
	Repetir
		Escribir "ingrese la cantidad de grupos a analizar "
		Leer N
		Si N < 1 Entonces
			Escribir "cantidad no valida"
			b <- Verdadero
		SiNo
			b <- Falso
			Para i<-1 Hasta N Con Paso 1 Hacer
				Para j<-1 Hasta 5 Con Paso 1 Hacer
					Escribir "ingresar el ",j,"° valor del grupo ",i
					Leer num
					suma <- suma + num
				Fin Para
				contSuma <- contSuma + 1
				Si i = 1 Entonces
					posSumaMax <- i
					sumaMax <- suma
				SiNo
					Si suma>sumaMax Entonces
						posSumaMax <- i
						sumaMax <- suma
					FinSi
				FinSi
				suma <- 0
			Fin Para
		FinSi
	Hasta Que boolean = Falso
	Escribir "la mayor suma fue: ",sumaMax
	Escribir "en la posicion: ",posSumaMax
FinAlgoritmo
