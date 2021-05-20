Algoritmo TP2_E4
	Definir num Como Entero
	Definir decena Como Entero
	Definir unidad Como Entero
	Definir num_invertido Como Entero
	Escribir "Indicar un número de dos cifras" 
	Leer num
	decena = trunc(num/10)
	unidad = num mod 10
	num_invertido = unidad*10 + decena
	Escribir "Valor: ",num
	Escribir "Valor permutado: ",num_invertido
FinAlgoritmo
