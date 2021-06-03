Algoritmo TP3_E12
	Definir num,num_nuevo Como Entero
	Definir unidad Como Entero
	Definir decena Como Entero
	Definir centena Como Entero
	Escribir "ingresar un valor entero de 3 cifras"
	Leer num
	centena = trunc (num/100)
	decena = trunc (num/10)
	decena = decena mod 10
	unidad = num mod 10
	Si (unidad = decena) & (decena = centena) 
		Escribir "valor ingresado: ",num
		num_nuevo = num
		Escribir "nuevo valor: ",num_nuevo
	FinSi
	Si (unidad = 0)&(decena=0)&(centena=0) Entonces
		Escribir "Error, valores no permitidos"
	FinSi
	Si (unidad < decena) & (unidad < centena) & (decena < centena) & (unidad <> 0) & (decena <> 0) & (centena != 0) Entonces
		unidad = unidad * 100
		decena = decena * 10
		num_nuevo = unidad + decena + centena
		Escribir "valor ingresado: ",num
		Escribir "nuevo valor: ",num_nuevo
		unidad = unidad / 100
		decena = decena / 10
	FinSi
	Si (unidad < decena) & (unidad < centena) & (centena < decena) & (unidad <> 0) & (decena <> 0) & (centena != 0)  Entonces
		unidad = unidad * 100
		centena = centena * 10
		num_nuevo = unidad + decena + centena
		Escribir "valor ingresado: ",num
		Escribir "nuevo valor: ",num_nuevo
		unidad = unidad / 100
		centena = centena / 10
	FinSi
	Si (decena < unidad) & (decena < centena) & (unidad < centena) & (unidad <> 0) & (decena <> 0) & (centena != 0) Entonces 
		decena = decena * 100
		unidad = unidad * 10
		num_nuevo = unidad + decena + centena
		Escribir "valor ingresado: ",num
		Escribir "nuevo valor: ",num_nuevo
		decena = decena / 100
		unidad = unidad / 10
	FinSi
	Si (decena < unidad) & (decena < centena) & (centena < unidad) & (unidad <> 0) & (decena <> 0) & (centena != 0) Entonces
		decena = decena * 100
		centena = centena * 10
		num_nuevo = unidad + decena + centena
		Escribir "valor ingresado: ",num
		Escribir "nuevo valor: ",num_nuevo
		decena = decena / 100
		centena = centena / 10
	FinSi
	Si (centena < unidad) & (centena < decena) & (unidad < decena) & (unidad <> 0) & (decena <> 0) & (centena != 0) Entonces 
		centena = centena * 100
		unidad = unidad * 10
		num_nuevo = unidad + decena + centena
		Escribir "valor ingresado: ",num
		Escribir "nuevo valor: ",num_nuevo
		centena = centena / 100
		unidad = unidad / 10
	FinSi
	Si (centena < unidad) & (centena < decena) & (decena < unidad) & (unidad <> 0) & (decena <> 0) & (centena != 0) Entonces
		centena = centena * 100
		decena = decena * 10
		num_nuevo = unidad + decena + centena
		Escribir "valor ingresado: ",num
		Escribir "nuevo valor: ",num_nuevo
		centena = centena / 100
		decena = decena / 10
	FinSi
FinAlgoritmo
