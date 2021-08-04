Algoritmo TP4_E24
	Definir n,q Como Entero
	Definir r Como Real
	Definir m Como Real
	Escribir "ingrese un valor entero"
	Leer n
	Escribir "ingrese la cantidad de numeros reales a ingresar"
	Leer q
	Para i<-1 Hasta q Con Paso 1 Hacer
		Escribir "ingrese un valor real"
		Leer r
		Si r>n & i = 1 Entonces
			m <- n
		SiNo
			Si r<n & i = 1 Entonces
				m <- r
			FinSi
		FinSi
		Si r<m Entonces
			m <- r
		FinSi
	Fin Para
	Escribir "el menor valor ingresado es: ",m
FinAlgoritmo



