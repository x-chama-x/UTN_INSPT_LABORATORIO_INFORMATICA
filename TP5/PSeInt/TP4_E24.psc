Algoritmo TP4_E24
	Definir c,i Como Entero
	Definir b Como Logico
	Definir r,r1 Como Real
	b <- Falso
	Repetir
		Escribir "ingrese la cantidad de numeros reales a ingresar"
		Leer c
		Si c <= 0 Entonces
			Escribir "valor no valido" 
			b <- Verdadero
		SiNo
			b <- Falso
		FinSi
	Hasta Que b = Falso
	Para i<-1 Hasta c Con Paso 1 Hacer
		Escribir "ingrese un numero real"
		Leer r
		Si i = 1 Entonces
			r1<-r
		SiNo
			Si r<r1 Entonces
				r1<-r
			FinSi
		FinSi
	Fin Para
	Escribir "el num. menor será: ",r1
FinAlgoritmo



