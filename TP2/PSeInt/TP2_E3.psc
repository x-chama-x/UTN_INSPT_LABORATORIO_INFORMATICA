Algoritmo TP2_E3
	Definir num Como Real
	Definir num_descuento Como Real
	Definir precio_final Como Real
	Escribir "Indicar precio de lista" 
	Leer num
	num_descuento = (num*18)/100
	precio_final = num - num_descuento
	Escribir "Precio de lista: $",num
	Escribir "18% sobre el precio de lista"
	Escribir  "descuento: $",num_descuento
	Escribir  "precio final: $",precio_final
FinAlgoritmo
