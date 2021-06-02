Algoritmo TP3_E12
	Definir num,num_nuevo Como Entero
	Definir unidad Como Entero
	Definir decena Como Entero
	Definir centena Como Entero
	Escribir "ingresar un valor entero de 3 cifras"
	Leer num
	Escribir "valor ingresado: ",num
	centena = trunc (num/100)
	decena = trunc (num/10)
	decena = decena mod 10
	unidad = num mod 10
	Si (unidad < decena) & (unidad < centena) & (decena < centena) Entonces
		unidad = unidad * 100
		decena = decena * 10
		num_nuevo = unidad + decena + centena
		Escribir "nuevo valor: ",num_nuevo
		unidad = unidad / 100
		decena = decena / 10
	FinSi
	Si (unidad < decena) & (unidad < centena) & (centena < decena) Entonces
		unidad = unidad * 100
		centena = centena * 10
		num_nuevo = unidad + decena + centena
		Escribir "nuevo valor: ",num_nuevo
		unidad = unidad / 100
		centena = centena / 10
	FinSi
	Si (decena < unidad) & (decena < centena) & (unidad < centena) Entonces //entra
		decena = decena * 100
		unidad = unidad * 10
		num_nuevo = unidad + decena + centena
		Escribir "nuevo valor: ",num_nuevo
		decena = decena / 100
		unidad = unidad / 10
	FinSi
	Si (decena < unidad) & (decena < centena) & (centena < unidad) Entonces
		decena = decena * 100
		centena = centena * 10
		num_nuevo = unidad + decena + centena
		Escribir "nuevo valor: ",num_nuevo
		decena = decena / 100
		centena = centena / 10
	FinSi
	Si (centena < unidad) & (centena < decena) & (unidad < decena) Entonces //entra
		centena = centena * 100
		unidad = unidad * 10
		num_nuevo = unidad + decena + centena
		Escribir "nuevo valor: ",num_nuevo
		centena = centena / 100
		unidad = unidad / 10
	FinSi
	Si (centena < unidad) & (centena < decena) & (decena < unidad) Entonces
		centena = centena * 100
		decena = decena * 10
		num_nuevo = unidad + decena + centena
		Escribir "nuevo valor: ",num_nuevo
		centena = centena / 100
		decena = decena / 10
	FinSi
FinAlgoritmo
