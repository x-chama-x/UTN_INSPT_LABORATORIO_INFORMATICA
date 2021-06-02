Algoritmo TP3_E6
	Definir num_1 Como Real
	Definir num_2 Como Real
	Definir var Como Real
	Escribir "ingresar 2 numeros reales"
	Leer num_1,num_2
	Si num_1>num_2 Entonces
		var = num_1
		num_1 = num_2
		num_2 = var
	FinSi
	Escribir "valores ordenados de menor a mayor"
	Escribir num_1,"....",num_2
FinAlgoritmo
