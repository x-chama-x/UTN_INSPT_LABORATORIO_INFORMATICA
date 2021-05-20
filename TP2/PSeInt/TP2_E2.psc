Algoritmo TP2_E2
	Definir num Como Entero
	Definir num_central Como Entero
	Escribir "ingresar un valor de 3 cifras" 
	leer num
	num_central = num mod 100
	num_central = trunc(num_central/10)
	Escribir "Valor: ",num
	Escribir "La cifra central es: ",num_central
FinAlgoritmo
