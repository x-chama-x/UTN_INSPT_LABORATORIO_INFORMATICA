Algoritmo TP5_E2_17
	Definir numOrig,num Como Entero
	Definir b Como Logico
	b <- Falso
	Repetir
		Escribir "ingrese un valor natural"
		Leer num
		Si num<0 Entonces
			Escribir "valor no valido"
			b <- Verdadero
		SiNo
			b <- Falso
		FinSi
	Hasta Que b = Falso 
	numOrig<-num
	Para i <- num-1 Hasta 1 Con Paso -1 Hacer
		num <- num*i 
	Fin Para
	Escribir numOrig,"!= ",num
FinAlgoritmo




