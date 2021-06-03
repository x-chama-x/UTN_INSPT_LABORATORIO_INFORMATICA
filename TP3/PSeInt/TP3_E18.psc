Algoritmo TP3_E18
	Definir importe Como Real
	Definir cant_pagar Como Real
	Escribir "ingresar importe"
	Leer importe
	Si importe > 10000 Entonces
		Escribir "importe superior a $10000"
		Escribir "descuento 20%"
		cant_pagar = (importe*20)/100
		Escribir "total a pagar: $",cant_pagar
	SiNo
		Escribir "total a pagar: $",importe
	FinSi
FinAlgoritmo 


