Algoritmo TP5_E2_23
	Definir n,i,cont Como Entero
	Definir b Como Logico
	b <- Falso
	Repetir
		Escribir "ingrese un numero entero"
		Leer n
		Si n < 0 Entonces
			Escribir "valor ingresado no valido"
			b <- Verdadero
		SiNo
			b <- Falso
		FinSi
	Hasta Que b = Falso
		Para i<-1 Hasta n Con Paso 1 Hacer
			Si n%i = 0 Entonces
				cont <- cont + 1
			FinSi
		Fin Para
		Si cont = 2 Entonces
			Escribir n, " es un numero primo"
		SiNo
			Escribir n, " no es un numero primo"
		FinSi
FinAlgoritmo