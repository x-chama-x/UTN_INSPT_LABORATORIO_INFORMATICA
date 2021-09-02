Algoritmo TP5_E2_28
	Dimension V[30]
	Dimension VP[30]
	Dimension VI[30]
	Definir cantV,i,j,k Como Entero
	Definir contVP,contVI Como Entero
	Definir b Como Logico
	b <- Falso
	contVP <- 0
	contVI <- 0
	Repetir
		Escribir "ingresar la cantidad de posiciones que tendrá el vector V"
		Escribir "tiene que ser mayor o igual a 1 y menor o igual a 30"
		Leer cantV
		Si cantV<=0 | cantV> 30 Entonces
			Escribir "valor ingresado no valido"
			b <- Verdadero
		SiNo
			b <- Falso
		FinSi
	Hasta Que b = Falso
	
	Para i<-1 Hasta cantV Con Paso 1 Hacer
		Escribir "ingresar el componente ",i," del vector V"
		Leer V[i]
		Si i mod 2 = 0 Entonces
			contVP <- contVP + 1
			VP[contVP]<-V[i]
		SiNo
			contVI <- contVI + 1
			VI[contVI]<-V[i]
		FinSi
	Fin Para
	
	Escribir "componentes del vector VP:"
	Para j<-1 Hasta contVP Con Paso 1 Hacer
		Escribir VP[j]
	FinPara
	Escribir "componentes del vector VI:"
	Para k<-1 Hasta contVI Con Paso 1 Hacer
		Escribir VI[k]
	FinPara
FinAlgoritmo
