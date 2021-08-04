Algoritmo TP4_E26
	Definir q,i Como Entero
	Definir pos,prim,ult,sum,prod Como Real
	acum <- 0
	pos <- 0
	sum <- 0
	prod <- 1
	Escribir "ingresar cantidad de valores a ingresar"
	Leer q
	Para i<-1 Hasta q Con Paso 1 Hacer
		Escribir "ingresar un valor real o entero"
		Leer num
		sum <- sum + num
		prod <- prod * num
		Si i = 1 Entonces
			prim <- num
		SiNo 
			Si i = q Entonces
				ult <- num
			FinSi
		FinSi
		Si num>0 Entonces
			pos <- pos + 1
		FinSi
	Fin Para
	Escribir "positivos: ",pos
	Escribir "sumatoria: ",sum
	Escribir "primero: ",prim
	Escribir  "ultimo: ",ult
FinAlgoritmo
