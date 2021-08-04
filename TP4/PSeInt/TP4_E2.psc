Algoritmo TP4_E2
	Definir tipo Como Caracter
	Definir dest Como Caracter
	Definir basico Como Entero
	Definir rec Como Entero
	Definir total Como Entero
	Definir a Como Logico
	a = Falso
	basico <- 300
	Escribir "ingrese el tipo de encomienda:"
	Escribir "S = Simple; X = Expreso; E = Especial"
	Leer tipo
	Segun tipo Hacer
		'S':
			rec <- (basico*0)/100
			total <- basico + rec
		'X':
			rec <- (basico*20)/100
			total <- basico + rec
		'E':
			rec <- (basico*40)/100
			total <- basico + rec
		De Otro Modo:
			Escribir "encomienda incorrecta"
			a <- Verdadero
	Fin Segun
	si a == falso Entonces	
			Escribir "ingrese el destino:"
			Escribir "L = Local; N = Exterior"
			Leer dest
			Segun dest Hacer
				'L':
					rec <- (basico*5)/100
					total <- basico + rec
				'N':
					rec <- (basico*20)/100
					total <- basico + rec
				De Otro Modo:
					Escribir "Destino incorrecto"
			Fin Segun
		Escribir "costo del servicio: $",total
	FinSi
FinAlgoritmo
