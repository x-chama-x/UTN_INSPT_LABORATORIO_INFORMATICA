Algoritmo TP5_E2_2
	Definir num Como Entero
	Definir i Como Entero
	Definir cont Como Entero
	cont <- 0
	Para i<-20 Hasta 1 Con Paso -1 Hacer
		Escribir "ingrese un numero"
		Leer num
		Si num<0 Entonces
			cont <- cont + 1
		FinSi
	Fin Para
	Escribir "se ingresaron ",cont, " numeros negativos"
FinAlgoritmo

