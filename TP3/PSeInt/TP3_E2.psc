Algoritmo TP3_E2
	Definir num_1 Como Real
	Definir num_2 Como Real
	Definir resultado Como Real
	Escribir "ingresar 2 numeros reales"
	Leer num_1,num_2
	Resultado = num_1*num_2
	Si resultado = 0 Entonces
		Escribir "producto nulo"
	FinSi
	Si resultado>0 Entonces
		Escribir "producto positivo"
	SiNo
		Si resultado < 0  Entonces
		Escribir "producto negativo"
		FinSi
	FinSi
FinAlgoritmo
