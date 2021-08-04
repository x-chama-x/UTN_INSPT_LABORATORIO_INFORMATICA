Algoritmo TP4_E1
	Definir codigo Como Caracter
	Escribir "ingrese el codigo de la categoria (I;C;J;A):"
	Leer codigo
	Segun codigo Hacer
		'I':
			Escribir "categoria: Infantiles"
			Escribir "cuota: $800"
		'C':
			Escribir "categoria: Cadetes"
			Escribir "cuota: $1000"
		'J':
			Escribir "categoria: Juvenil"
			Escribir "cuota: $1200"
		'A':	
			Escribir "categoria: Adulto"
			Escribir "cuota: $900"
		De Otro Modo:
			Escribir "categoria incorrecta"
	Fin Segun
FinAlgoritmo
