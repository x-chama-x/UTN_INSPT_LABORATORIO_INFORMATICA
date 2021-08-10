Algoritmo TP4_E211
	Definir cant,n,i,b,orden Como Entero
	Definir a Como Logico
	a <- Falso
	orden <- 0
	Repetir
		Escribir "ingrese la cantidad de valores que se van a ingresar "
		Leer cant
		Si cant <= 0 Entonces
			a <- Verdadero
			Escribir "valor ingresado no valido"
		SiNo
			a <- Falso
		FinSi
	Hasta Que a = Falso
	Para i <- 0 Hasta cant - 1 Con Paso 1 Hacer
		Escribir "Ingresar un valor entero"
		Leer n
		Si i = 0 Entonces
			b <- n
		SiNo
			Si b - n > 0 & i <> 0 Entonces
				Si orden = 2 Entonces
					orden <- 3 // desordenado
				SiNo
					Si orden <> 3 Entonces
						orden <- 1 // orden decreciente
						b <- n
					FinSi
				FinSi
			FinSi
			Si b - n < 0 & i <> 0 Entonces
				Si orden = 1 Entonces
					orden <- 3 // desordenado
				SiNo
					Si orden <> 3 Entonces
						orden <- 2 // orden creciente
						b <- n
					FinSi
				FinSi
			FinSi
		FinSi
	Fin Para
	Segun orden Hacer
		1:
			Escribir "orden decreciente"
		2:
			Escribir "orden creciente"
		3:
			Escribir "desordenado"
	Fin Segun
FinAlgoritmo
