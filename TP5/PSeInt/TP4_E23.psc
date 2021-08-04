Algoritmo TP4_E23
	Definir num Como Entero
	Definir i Como Entero
	Definir acum,prom Como Real
	acum <- 0
	Para i<-20 Hasta 1 Con Paso -1 Hacer
		Escribir "ingrese un numero"
		Leer num
		acum <- acum + num
		prom <- acum/20
	Fin Para
	Escribir "promedio de numeros ingresados = ", prom
FinAlgoritmo

