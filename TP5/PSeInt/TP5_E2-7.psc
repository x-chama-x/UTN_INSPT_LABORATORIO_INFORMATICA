Algoritmo TP5_E2_7
	Definir num,cont Como Entero
	Definir prom Como Real
	num <- 1
	prom <- 0
	cont <- 0
	Repetir
		Escribir "ingresar un valor distinto de 0"
		Leer num
		Si num>0 Entonces
			cont <- cont + 1
			prom = (num + prom)/cont
		FinSi
	Hasta Que num = 0
	Escribir "promedio de los num. positivos = ",prom
FinAlgoritmo
