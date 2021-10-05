Algoritmo TP5_E2_37
	Definir importe,montoTotal,contDesc Como Entero
	Definir contVentas,porcentDesc Como Entero
	Definir tipo Como Caracter
	Definir boolean Como Logico
	importe<-0
	montoTotal<-0
	contDesc<-0
	porcentDesc<-0
	contVentas<-0
	boolean<-Falso
	Repetir
		Repetir
			Escribir "ingrese el importe (ingrese valor negativo para finalizar la carga) "
			Leer importe
			Si importe = 0 Entonces
				Escribir "importe ingresado no valido"
				boolean<-Verdadero
			SiNo
				boolean <- Falso
			FinSi
		Hasta Que boolean = Falso
		
		Si importe > 0 Entonces
			contVentas<-contVentas + 1
			montoTotal <- montoTotal + importe
			Repetir
				Escribir "Ingrese C (con descuento) o S (sin descuento) "
				Leer tipo
				Segun tipo Hacer
					'C':
						boolean <- Falso
						contDesc <- contDesc + 1
					'S':
						boolean <- Falso
					De Otro Modo:
						Escribir "dato ingresado no valido"
						boolean <- Verdadero
				Fin Segun
			Hasta Que boolean = Falso
		FinSi
	Hasta Que importe<0
	Si contVentas > 0 Entonces
		porcentDesc<-(contDesc*100)/contVentas
	FinSi
	Escribir "El monto total de ventas del dia es $", montoTotal
	Escribir "El porcentaje de ventas con descuento es ", porcentDesc, "%"
FinAlgoritmo
