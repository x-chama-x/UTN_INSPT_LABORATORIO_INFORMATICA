Algoritmo TP3_E1
	Definir num_1 Como Real
	Definir num_2 Como Real
	Escribir "ingresar 2 numeros reales distintos de 0"
	Leer num_1,num_2
	Si (num_1<0&num_2>0)|(num_1>0&num_2<0) Entonces
		Escribir "no tienen el mismo signo"
	SiNo
		Escribir "tienen el mismo signo"
	FinSi
FinAlgoritmo
