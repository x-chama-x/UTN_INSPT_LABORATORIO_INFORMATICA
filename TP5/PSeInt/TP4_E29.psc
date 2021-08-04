Algoritmo TP4_E29
	Definir importe,impBkp,acum,cant Como Real
	Definir a Como Logico
	a <- Falso
	acum <- 0
	Repetir
		Escribir "ingresar importe"
		Leer importe
		Si importe <= 0 | importe > 200 Entonces
			Escribir "importe no valido"
			a <- Verdadero
		SiNo
			a <- Falso
		FinSi
	Hasta Que a = Falso
	impBkp <- importe
	cant <- trunc (importe/100)
	Si cant <> 0 & acum <> impBkp Entonces
		Escribir cant," billete/s de 100 pesos"
		importe <- importe - 100
		acum <- acum + 100 * cant
	FinSi
	cant <- trunc (importe/50)
	Si cant <> 0 & acum <> impBkp Entonces
		Escribir cant," billete/s de 50 pesos"
		importe <- importe - 50
		acum <- acum + 50 * cant
	FinSi
	cant <- trunc (importe/20)
	Si cant <> 0 & acum <> impBkp Entonces
		Escribir cant," billete/s de 20 pesos"
		importe <- importe - 20
		acum <- acum + 20 * cant
	FinSi
	cant <- trunc (importe/10)
	Si cant <> 0 & acum <> impBkp Entonces
		Escribir cant," billete/s de 10 pesos"
		importe <- importe - 10
		acum <- acum + 10 * cant
	FinSi
	cant <- trunc (importe/5)
	Si cant <> 0 & acum <> impBkp Entonces
		Escribir cant," billete/s de 5 pesos"
		importe <- importe - 5
		acum <- acum + 5 * cant
	FinSi
	cant <- trunc (importe/2)
	Si cant <> 0 & acum <> impBkp Entonces
		Escribir cant," billete/s de 2 pesos"
		importe <- importe - 2
		acum <- acum + 2 * cant
	FinSi
	cant <- trunc (importe/1)
	Si cant <> 0 & acum <> impBkp Entonces
		Escribir cant," moneda/s de 1 pesos"
		importe <- importe - 1
		acum <- acum + 1 * cant
	FinSi
	cant <- trunc(importe/0.5)
	Si cant <> 0 & acum <> impBkp Entonces
		Escribir cant," moneda/s de 0.5 pesos"
		importe <- importe - 0.5
		acum <- acum + 0.5 * cant
	FinSi
	cant <- trunc (importe/0.25)
	Si cant <> 0 & acum <> impBkp Entonces
		Escribir cant," moneda/s de 0.25 pesos"
		importe <- importe - 0.25
		acum <- acum + 0.25 * cant
	FinSi
	cant <- trunc (importe/0.10)
	Si cant <> 0 & acum <> impBkp Entonces
		Escribir cant," moneda/s de 0.10 pesos"
		importe <- importe - 0.10
		acum <- acum + 0.10 * cant
	FinSi
FinAlgoritmo
