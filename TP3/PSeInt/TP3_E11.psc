Algoritmo TP3_E10
	Definir num Como Entero
	Definir unidad Como Entero
	Definir decena Como Entero
	Definir centena Como Entero
	Escribir "ingresar un valor entero de 3 cifras"
	Leer num
	centena = trunc (num/100)
	decena = trunc (num/10)
	decena = decena mod 10
	unidad = num mod 10
	Si (unidad < decena) & (unidad < centena) & (decena < centena) Entonces
		Escribir unidad,"...",decena,"...",centena
	FinSi
	Si (unidad < decena) & (unidad < centena) & (centena < decena) Entonces
		Escribir unidad,"...",centena,"...",decena
	FinSi
	Si (decena < unidad) & (decena < centena) & (unidad < centena) Entonces
		Escribir decena,"...",unidad,"...",centena
	FinSi
	Si (decena < unidad) & (decena < centena) & (centena < unidad) Entonces
		Escribir decena,"...",centena,"...",unidad
	FinSi
	Si (centena < unidad) & (centena < decena) & (unidad < decena) Entonces
		Escribir centena,"...",unidad,"...",decena
	FinSi
	Si (centena < unidad) & (centena < decena) & (decena < unidad) Entonces
		Escribir centena,"...",decena,"...",unidad
	FinSi
FinAlgoritmo
