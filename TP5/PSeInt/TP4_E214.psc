Algoritmo TP4_E214
	Definir n,c,cant0,cantPos,cantNeg Como Entero
	Definir r,promPos,promNeg,acumPos,acumNeg Como Real
	Definir b Como Logico
	b <- Falso
	cant0 <- 0
	acumPos <- 0
	promPos <- 0
	cantPos <- 0
	acumNeg <- 0
	promNeg <- 0
	cantNeg <- 0
	Repetir
		Escribir "ingrese un numero natural"
		Leer n
		Si n < 0 Entonces
			Escribir "valor no valido" 
			b <- Verdadero
		SiNo
			b <- Falso
		FinSi
	Hasta Que b = Falso
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
	
	Para i <- 1 Hasta c Con Paso 1 Hacer
				Escribir "ingrese un numero real"
				Leer r
				Si r=0 | n=0 Entonces
					Si i = 1 Entonces
						cant0 <- cant0 + 1
					SiNo
						cant0 <- cant0 + 1
					FinSi
				SiNo
					Si r<0 | n<0 Entonces
						cantNeg <- cantNeg + 1
						Si i = 1 Entonces
							acumNeg <- acumNeg + n
						SiNo
							acumNeg <- acumNeg + r
						FinSi
					FinSi
					Si r>0 | n>0 Entonces
						cantPos <- cantPos + 1
						Si i = 1 Entonces
							acumPos <- acumPos + n
						SiNo
							acumPos <- acumPos + r
						FinSi
					FinSi
				FinSi
			Fin Para
			Si cantNeg <> 0  Entonces
				promNeg <- acumNeg/cantNeg
			FinSi
			Si cantPos <> 0 Entonces
				promPos <- acumPos/cantPos
			FinSi
			Escribir "cant de 0: ",cant0
			Escribir "promedios num. neg:",promNeg
			Escribir "promedios num. pos:",promPos
FinAlgoritmo




