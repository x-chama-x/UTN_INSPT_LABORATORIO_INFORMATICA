Algoritmo TP4_E3
	Definir varBool Como Caracter
	Definir codigoAnt Como Entero
	Definir sueldoB,present,antig Como Real
	Definir rem,jub,Obra Como Real
	Definir desc,sueldN Como Real
	varBool = 'F'
	Escribir "ingrese el sueldo basico"
	Leer sueldoB
	Escribir "ingrese presentismo (V o F)"
	Leer varBool
	Si varBool = 'V' Entonces
		present <- (sueldoB*10)/100
	SiNo
		present <- 0
	FinSi
	Escribir "ingrese el codigo de antiguedad"
	Escribir "1: Menos de 1 año"
	Escribir "2: Desde 1 a 3 años"
	Escribir "3: Desde 3 a 5 años"
	Escribir "4: 5 años o mas"
	Leer codigoAnt
	Segun codigoAnt Hacer
		1:
			antig <- (sueldoB*0)/100
		2:
			antig <- (sueldoB*10)/100
		3:
			antig <- (sueldoB*15)/100
		4:
			antig <- (sueldoB*20)/100
		De Otro Modo:
			Escribir "codigo de antiguedad no valido"
	Fin Segun
	rem <- sueldoB + antig + present
	jub <- (rem*13)/100
	obra <- (rem*3)/100
	desc <- jub + obra
	sueldN <- rem - desc
	Escribir "total de remuneraciones: $",rem
	Escribir  "total de descuentos: $",desc
	Escribir "sueldo neto del empleado: $",sueldN
FinAlgoritmo
