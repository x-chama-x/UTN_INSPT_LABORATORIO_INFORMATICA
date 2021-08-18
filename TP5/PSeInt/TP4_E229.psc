Algoritmo TP4_E229
	Dimension V[30]
	Dimension VP[30]
	Dimension VI[30]
	Definir b Como Logico
	Definir i,j,k,l,m Como Entero
	Definir cantV Como Entero
	j<-0
	l<-1
	b <- Falso
	cont <- 0
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
		j <- j+2
		Si j>cantV Entonces
			i <- cantV
		SiNo
			Escribir "ingresar el componente ",i," del vector VP"
			Leer VP[i]
			V[j] <- VP[i]
		FinSi
	Fin Para
	
	Para k<-1 Hasta cantV Con Paso 1 Hacer
		Si l>cantV Entonces
			k <- cantV
		SiNo
			Escribir "ingresar el componente ",k," del vector VI"
			Leer VI[k]
			V[l] <- VI[k]
		FinSi
		l <- l+2
	Fin Para
	Escribir "componentes del vector V: "
	Para m<-1 Hasta cantV Con Paso 1 Hacer
		Escribir V[m]
	Fin Para
FinAlgoritmo
