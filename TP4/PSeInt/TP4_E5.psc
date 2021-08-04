Algoritmo TP4_E5
	Definir opcion Como Entero
	Definir a,b,c,d,e Como Real
	Escribir "-------------------------------------------------------"
	Escribir "calculadora de perimetro y area de figuras geometricas "
	Escribir "-------------------------------------------------------"
	Escribir "ingrese 1 --> cuadrado"
	Escribir "ingrese 2 --> rectangulo"
	Escribir "ingrese 3 --> triangulo"
	Escribir "ingrese 4 --> paralelogramo"
	Escribir "ingrese 5 --> circulo"
	Escribir "-------------------------------------------------------"
	Leer opcion
	Segun opcion Hacer
		1:
			Escribir "ingresar lado"
			Leer lado
			Escribir "perimetro:",4*a
			Escribir "area:",a*a
		2:
			Escribir "ingresar lado 1"
			Leer a
			Escribir "ingresar lado 2"
			Leer b
			Escribir "perimetro:",2*(b+a)
			Escribir "area:",a*b
		3:
			Escribir "ingresar lado 1"
			Leer a
			Escribir "ingresar lado 2"
			Leer b
			Escribir "ingresar lado 3"
			Leer c
			Escribir  "ingresar altura"
			Leer d
			Escribir  "ingresar base"
			Leer e
			Escribir "perimetro:",a+b+c
			Escribir "area:",(e*d)/2
		4:
			Escribir "ingresar lado 1"
			Leer a
			Escribir "ingresar lado 2"
			Leer b
			Escribir  "ingresar altura"
			Leer d
			Escribir  "ingresar base"
			Leer e
			Escribir "perimetro:",2*(a+b)
			Escribir "area:",e*d
		5:
			Escribir "ingresar radio"
			Leer a
			Escribir "perimetro:",2*3.1416*a
			Escribir "area:",3.1416 * a * a
		De Otro Modo:
			Escribir "opcion no valida"
	Fin Segun
FinAlgoritmo
