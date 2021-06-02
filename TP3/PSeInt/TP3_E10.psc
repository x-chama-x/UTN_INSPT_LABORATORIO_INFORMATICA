Algoritmo TP3_E10
	Definir num Como Entero
	Definir unidad Como Entero
	Definir decena Como Entero
	Escribir "ingresar un valor entero de 2 cifras"
	Leer num
	decena = trunc (num/10)
	unidad = num mod 10
	Si decena>unidad Entonces
		Escribir decena,"....",unidad
	SiNo
		Escribir unidad,"....",decena
	FinSi
FinAlgoritmo
