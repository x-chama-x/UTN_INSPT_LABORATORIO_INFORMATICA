Algoritmo TP4_E25
	Definir q,i Como Entero
	Definir num,acum,prom Como Real
	acum <- 0
	Escribir "ingresar cantidad de valores a ingresar"
	Leer q
	Para i<-1 Hasta q Con Paso 1 Hacer
		Escribir "ingresar un valor real o entero"
		Leer num
		acum <- acum + num
	Fin Para
	prom <- acum/q
	Escribir "promedio: ",prom 
FinAlgoritmo
