Algoritmo TP5_E2_36
	Definir legajo,numCifras,edad,cont90 Como Entero
	Definir contfJoven,legFJoven,edadFJoven Como Entero
	Definir edadMcont,edadMAcum Como Entero
	Definir legajoCifras,edadMProm Como Real
	Definir sexo Como Caracter
	Definir b Como Logico
	edadMAcum <- 0
	edadMcont <- 0
	edadMProm <- 0
	edadFJoven <- 0
	contfJoven <- 0
	cont90 <- 0
	sexo <- 'f'
	legajo <- 0
	numCifras <- 0
	legajoCifras <- 0
	legFJoven <- 0
	b <- Falso
	Repetir
		Repetir
			Escribir "ingrese el legajo (4 digitos) (-1 --> fin de datos)"
			Leer legajo
			legajoCifras<-legajo
			numCifras <- 1
			Mientras legajoCifras >= 10 Hacer
				legajoCifras<-legajoCifras/10
				numCifras <- numCifras + 1
			Fin Mientras
			Si (numCifras<4 | numCifras>4) & legajo <> -1 Entonces
				Escribir "valor ingresado no valido"
				b <- Verdadero
				numCifras <- 0
			SiNo
				b <- Falso
			FinSi
		Hasta Que b = Falso
		Si legajo <> -1 Entonces
			Repetir
				Escribir "ingresar edad"
				Leer edad
				Si edad <= 0 Entonces
					Escribir "edad ingresada no valida"
					b <- Verdadero
				SiNo
					b <- Falso
				FinSi
				Si edad > 90 Entonces
					cont90 <- cont90 + 1
				FinSi
			Hasta Que b = Falso
			Repetir
				Escribir "ingresar sexo"
				Leer sexo
				Segun sexo Hacer
					'm':
						edadMAcum <- edad + edadMAcum
						edadMcont <- edadMcont + 1
						b <- Falso
					'f':
						contfJoven <- contfJoven + 1
						Si contfJoven = 1 Entonces
							edadFJoven <- edad
							legFJoven <- legajo
						SiNo
							Si edad < edadFJoven Entonces
								legFJoven <- legajo
								edadFJoven <- edad
							FinSi
						FinSi
						b <- Falso
					De Otro Modo:
						Escribir "sexo ingresado no valido"
						b <- Verdadero
				Fin Segun
			Hasta Que b = Falso
		FinSi
	Hasta Que legajo = -1
	edadMProm <- edadMAcum/edadMcont
	Si cant90 > 0 Entonces
		Escribir "hay hombres mayores a 90 años"
		Escribir "cantidad: ",cant90
	FinSi
	Escribir "mujer más joven: ",legFJoven
	Escribir "edad promedio de los hombres: ",edadMProm
FinAlgoritmo
