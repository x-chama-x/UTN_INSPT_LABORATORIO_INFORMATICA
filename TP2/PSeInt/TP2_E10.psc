Algoritmo TP2_E10
	Definir num Como Entero
	Definir unidad Como Entero
	Definir decena Como Entero
	Definir centena Como Entero
	Escribir "ingrese un valor de 3 digitos"
	Leer num
	unidad = num mod 10
	decena = trunc(num/10)
	decena = decena mod 10
	centena = num mod 100
	centena = trunc(num/100)
	Escribir "valor ingresado: ",num
	Escribir  "unidades:  ",unidad
	Escribir  "decenas:  ",decena
	Escribir  "centenas:",centena
FinAlgoritmo
