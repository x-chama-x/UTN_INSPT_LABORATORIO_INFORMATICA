Algoritmo TP4_E213
	Definir l1,l2,l3,per Como Real
	Escribir "lados de un triangulo"
	Escribir "ingrese lado 1"
	Leer l1
	Escribir "ingrese lado 1"
	Leer l2
	Escribir "ingrese lado 1"
	Leer l3
	Si l1 = l2 & l2 = l3 Entonces
		Escribir "Triangulo Equilatero"
		per = l1*3
		Escribir "perimetro: ",per,"cm"
	SiNo
		Si l1 = l2 & l2 <> l3 & l1 <> l3 | l1 <> l2 & l2 = l3 & l1 <> l3 | l1 = l3 & l2 <> l3 & l2 <> l1 Entonces
			Escribir "Triangulo Isosceles"
			per = l1+l2+l3
			Escribir "perimetro: ",per,"cm"
		FinSi
		
		Si l1 <> l2 & l2 <> l3 & l1 <> l3 Entonces
			Escribir "Triangulo Escaleno"
			per = l1+l2+l3
			Escribir "perimetro: ",per,"cm"
		FinSi
	FinSi
FinAlgoritmo
