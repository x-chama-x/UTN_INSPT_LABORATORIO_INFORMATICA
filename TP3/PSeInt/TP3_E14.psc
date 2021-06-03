Algoritmo TP3_E14
	Definir a Como Real
	Definir b Como Real
	Definir c Como Real
	Definir d Como Real
	Escribir "ingresar 3 valores "
	Leer a,b,c
	Escribir "valores ingresados"
	Escribir "a = ",a
	Escribir "b = ",b
	Escribir "c = ", c
	Si a<b Entonces
		d = b
		b = a
		a = d
	FinSi
	Si a<c Entonces
		d = c
		c = a
		a = d
	FinSi
	Si c>b Entonces
		d = b
		b = c
		c = d
	FinSi
	Escribir "valores a>b>c"
	Escribir "a = ",a
	Escribir "b = ",b
	Escribir "c = ", c
	Escribir a, " > ", b, " > ",c
FinAlgoritmo 



