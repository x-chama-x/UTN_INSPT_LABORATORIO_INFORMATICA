Algoritmo TP5_E2_10
	Definir n,pares Como Entero
	Definir a Como Logico
	a <- Falso
	Repetir
		Escribir "ingrese un numero natural"
		Leer n
		Si n<=0 Entonces
			a <- Verdadero
			Escribir "valor incorrecto"
		SiNo
			a <- Falso
		FinSi
	Hasta Que a = Falso
	pares <- n
	Para i<-0 Hasta n Con Paso 1 Hacer
		Si n mod 2 = 0 Entonces
			pares = pares - 2
			Si pares > 0 Entonces
				Escribir pares
			FinSi
		SiNo
			pares = pares - 1
			n <- pares
			Escribir pares
		FinSi
	Fin Para
FinAlgoritmo
