Algoritmo TP4_E215
	Definir c,pos,prim,ult Como Entero
	Definir b Como Logico
	b <- Falso
	
	Repetir
		Escribir "ingrese la cantidad de valores enteros que se van a ingresar"
		Leer c
		Si c < 0 Entonces
			Escribir "valor no valido" 
			b <- Verdadero
		SiNo
			b <- Falso
		FinSi
	Hasta Que b = Falso
	Para i<-1 Hasta c Con Paso 1 Hacer
		Escribir "ingrese un valor entero"
		Leer n
		Si i = 1 Entonces
			a <- n
			pos <- i
			prim <- n
		SiNo
			Si n>a Entonces
				a<-n
				pos <- i
			FinSi
			Si i = c Entonces
				ult <- n
			FinSi
		FinSi
	Fin Para
	Escribir "num mayor: ",a, ", pos: ",pos
	Escribir "primer num: ",prim
	Escribir "ultimo num: ",ult
FinAlgoritmo




