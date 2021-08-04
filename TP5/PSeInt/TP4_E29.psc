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
		importe <- importe - 100 * cant
		acum <- acum + 100 * cant
		Escribir cant," billete/s de 100 pesos"
	FinSi
	cant <- trunc (importe/50)
	Si cant <> 0 & acum <> impBkp Entonces
		importe <- importe - 50 * cant
		acum <- acum + 50 * cant
		Escribir cant," billete/s de 50 pesos"
	FinSi
	cant <- trunc (importe/20)
	Si cant <> 0 & acum <> impBkp Entonces
		importe <- importe - 20 * cant
		acum <- acum + 20 * cant
		Escribir cant," billete/s de 20 pesos"
	FinSi
	cant <- trunc (importe/10)
	Si cant <> 0 & acum <> impBkp Entonces
		importe <- importe - 10 * cant
		acum <- acum + 10 * cant
		Escribir cant," billete/s de 10 pesos"
	FinSi
	cant <- trunc (importe/5)
	Si cant <> 0 & acum <> impBkp Entonces
		importe <- importe - 5 * cant
		acum <- acum + 5 * cant
		Escribir cant," billete/s de 5 pesos"
	FinSi
	cant <- trunc (importe/2)
	Si cant <> 0 & acum <> impBkp Entonces
		importe <- importe - 2 * cant
		acum <- acum + 2 * cant
		Escribir cant," billete/s de 2 pesos"
	FinSi
	cant <- trunc (importe/1)
	Si cant <> 0 & acum <> impBkp Entonces
		importe <- importe - 1 * cant
		acum <- acum + 1 * cant
		Escribir cant," moneda/s de 1 pesos"
	FinSi
	cant <- trunc(importe/0.5)
	Si cant <> 0 & acum <> impBkp Entonces
		importe <- importe - 0.5 * cant
		acum <- acum + 0.5 * cant
		Escribir cant," moneda/s de 0.5 pesos"
	FinSi
	cant <- trunc (importe/0.25)
	Si cant <> 0 & acum <> impBkp Entonces
		importe <- importe - 0.25 * cant
		acum <- acum + 0.25 * cant
		Escribir cant," moneda/s de 0.25 pesos"
	FinSi
	cant <- trunc (importe/0.10)
	Si cant <> 0 & acum <> impBkp Entonces
		importe <- importe - 0.10 * cant
		acum <- acum + 0.10 * cant
		Escribir cant," moneda/s de 0.10 pesos"
	FinSi
	cant <- trunc (importe/0.05)
	Si cant <> 0 & acum <> impBkp Entonces
		importe <- importe - 0.05 * cant
		acum <- acum + 0.05 * cant
		Escribir cant," moneda/s de 0.05 pesos"
	FinSi
FinAlgoritmo