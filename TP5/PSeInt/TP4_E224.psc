Algoritmo TP4_E224
	Definir cant,num,cont,i Como Entero
	Definir b Como Logico
	num <- 1
	b <- Falso
	Repetir
		Escribir "ingresar los N primeros numeros primos a emitir"
		Leer cant
		Si cant <= 0 Entonces
			Escribir "cantidad ingresada no valida"
			b <- Verdadero
		SiNo
			b <- Falso
		FinSi
	Hasta Que b = Falso
	Repetir
		num <- num + 1
		Para i<-1 Hasta num Con Paso 1 Hacer
			Si num%i = 0 Entonces
				cont <- cont + 1
			FinSi
		Fin Para
		Si cont = 2 Entonces
			Escribir num
			cant <- cant - 1
			cont <- 0
		SiNo
			cont <- 0
		FinSi
	Hasta Que cant = 0
FinAlgoritmo