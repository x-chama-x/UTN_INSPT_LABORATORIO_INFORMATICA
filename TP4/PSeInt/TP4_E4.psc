Algoritmo TP4_E4
	Definir dia,mes,a�o Como Entero
	Definir caractMes Como Caracter
	Escribir "ingresar dia"
	Leer dia
	Escribir "ingresar mes"
	Leer mes
	Escribir "ingresar a�o"
	Leer a�o
	Segun mes Hacer
		1:
			caractMes <- 'enero'
		2:
			caractMes <- 'febrero'
		3:
			caractMes <- 'marzo'
		4:
			caractMes <- 'abril'
		5:
			caractMes <- 'mayo'
		6:	
			caractMes <- 'junio'
		7:
			caractMes <- 'julio'
		8:
			caractMes <- 'agosto'
		9:
			caractMes <- 'septiembre'
		10:
			caractMes <- 'octubre'
		11:
			caractMes <- 'diciembre'
			
		De Otro Modo:
			Escribir "no se ha realizado la operacion"
			Escribir  "mes no existente"
	Fin Segun
	a�o <- a�o + 2000
	Escribir "fecha:",dia," de ",caractMes," de ",a�o
FinAlgoritmo
