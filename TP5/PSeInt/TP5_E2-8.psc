Algoritmo TP5_E2_8
	Definir num,max,i Como Entero
	num <- 0
	max <- 0
	i <- 0
	Repetir
		i = i + 1
		Escribir "ingresar un valor distinto de -1"
		Leer num
		Si num>max Entonces
			max <- num
		SiNo 
			Si num<max & i = 1 Entonces
				max <- num
			FinSi
		FinSi
	Hasta Que num = -1
	Escribir  "el num. max es: ",max
FinAlgoritmo
