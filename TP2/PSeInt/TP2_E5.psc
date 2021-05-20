Algoritmo TP2_E5
	Definir fecha Como Entero
	Definir mes Como Entero
	Escribir "Indicar una fecha como un entero de 6 dígitos"
	Leer fecha
	mes = fecha mod 10000
	mes = trunc(mes/100)
	Escribir "Fecha: (DDMMAA) ",fecha
	Escribir "Mes: (MM) ",mes
FinAlgoritmo
