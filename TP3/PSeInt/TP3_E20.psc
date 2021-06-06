Algoritmo TP3_E20
	Definir nombre Como Caracter
	Definir clave Como Entero
	Definir precio_original Como Real
	Definir precio_descuento Como Real
	Escribir "ingrese nombre del articulo:"
	Leer nombre
	Escribir "ingrese su clave:"
	Escribir "01 o 02"
	Leer clave
	Escribir "ingrese su precio:"
	Leer precio_original
	Si clave = 01 Entonces
		Escribir "Descuento del 10%"
		precio_descuento = (precio_original*10)/100
	SiNo
		Escribir "Descuento del 20%"
		precio_descuento = (precio_original*20)/100
	FinSi
	Escribir "nombre del articulo:",nombre
	Escribir "precio original: $",precio_original
	Escribir "precio con descuento: $",precio_descuento
FinAlgoritmo 


