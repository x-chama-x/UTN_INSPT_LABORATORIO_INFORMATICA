Algoritmo TP5_E2_16
	Definir c,n,i Como Entero
	Definir b Como Logico
	Definir r,max1,max2,bkp Como Real
	b <- Falso
	Repetir
		Escribir "ingrese la cantidad de valores enteros que se van a ingresar"
		Leer c
		Si c < 0 Entonces
			Escribir "valor no valido" 
			b <- Verdadero
		SiNo
			b <- Falso
		FinSi
	Hasta Que b = Falso
	Para i<-1 Hasta c Con Paso 1 Hacer
		Escribir "ingresar un valor numerico"
		Leer r
		Si i = 1 Entonces
			max1 <- r
		SiNo
			Si i = 2 Entonces
				max2 <- r
				Si max2 > max1 Entonces
					bkp <- max1
					max1 <- max2
					max2 <- bkp
				FinSi
			FinSi
		FinSi
		Si r>max1 Entonces
			max2 <- max1
			max1<-r
		SiNo
			Si r>max2 Entonces
				max2 <- r
			FinSi
		FinSi
	Fin Para
	Si max1 = max2 Entonces
		Escribir "todos los numeros son iguales"
		Escribir "num:",max1
	SiNo
		Escribir max1," ",max2
	FinSi
FinAlgoritmo




