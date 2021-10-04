Algoritmo TP5_E2_33
	Definir num,cont,numMax,contMax Como Entero
	num <- 0
	cont <- 0
	numMax <- 0
	contMax <- 1
	Repetir
		Escribir "ingrese un valor distinto de 0"
		Escribir "ingrese 0 para finalizar"
		Leer num
		Si num <> 0 Entonces
			cont <- cont + 1
			Si cont = 1 Entonces
				numMax<-num
			SiNo
				Si num>numMax Entonces
					numMax<-num
				SiNo
					Si num = numMax Entonces
						contMax <- contMax + 1
					FinSi
				FinSi
			FinSi
		FinSi
	Hasta Que num = 0
	Si cont = 0 Entonces
		Escribir "no se han ingresado valores"
	SiNo
		Escribir "el valor del mayor numero ingresado es: ",numMax
		Escribir "se ingreso ",contMax, " vez/veces en la lista"
	FinSi
FinAlgoritmo
