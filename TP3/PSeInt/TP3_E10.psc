Algoritmo TP3_E10
	Definir num Como Entero
	Definir unidad Como Entero
	Definir centena Como Entero
	Escribir "ingresar un valor entero de 2 cifras"
	Leer num
	centena = trunc (num/10)
	unidad = num mod 10
	Si centena>unidad Entonces
		Escribir centena,"....",unidad
	SiNo
		Escribir unidad,"....",centena
	FinSi
FinAlgoritmo
