Algoritmo TP3_E15
	Definir a Como Real
	Definir b Como Real
	Definir c Como Real
	Definir res Como Real
	Escribir "ingresar 2 valores reales "
	Leer a,b
	Escribir "valores ingresados"
	Escribir "a = ",a
	Escribir "b = ",b
	Si a<b Entonces
		c = b
		b = a
		a = c
	FinSi
	res = a/b
	Escribir "resultado = a/b = ",res
	Escribir "siendo a = ",a " y b = ",b
FinAlgoritmo 


