Algoritmo TP5_E2_18
	Definir cant,num,cent,unid,cont,porc Como Entero
	Definir b Como Logico
	b <- Falso
	cont <- 0
	Repetir
		Escribir "ingrese la cantidad de valores enteros que se van a ingresar"
		Leer cant
		Si cant <= 0 Entonces
			Escribir "valor no valido" 
			b <- Verdadero
		SiNo
			b <- Falso
		FinSi
	Hasta Que b = Falso
	Para i<-1 Hasta cant Con Paso 1 Hacer
		Repetir
			Escribir "ingrese un numero entero de 3 cifras mayor a 99"
			Leer num
			Si num <= 99 Entonces
				Escribir "valor no valido" 
				b <- Verdadero
			SiNo
				b <- Falso
			FinSi
		Hasta Que b = Falso
		cent<-trunc (num/100)
		unid<-num mod 10
		Si cent=unid Entonces
			cont <- cont + 1
		FinSi
	Fin Para
	porc <- (cont*100)/cant
	Escribir "porcentaje de num. capicuas: ",porc,"%"
FinAlgoritmo




