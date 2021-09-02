Algoritmo TP5_E2_32
	Definir legajo,numCifras,i,j,nota Como Entero
	Definir acumNotas,contProm Como Entero
	Definir promNotas,promNotasbkp Como Real
	Definir b Como Logico
	Dimension MEJPROM[4]
	Dimension MEJLEG[4]
	contProm <- 0
	legajo <- 0
	numCifras <- 0
	nota <- 0
	promNotas <- 0
	acumNotas <- 0
	b <- Falsos
	Repetir
		Repetir
			Escribir "ingrese el legajo (4 digitos)"
			Escribir "ingrese 0 para finalizar el programa"
			Leer legajo
			legajoCifras<-legajo
			numCifras <- 1
			Mientras legajoCifras >= 10 Hacer
				legajoCifras<-legajoCifras/10
				numCifras <- numCifras + 1
			Fin Mientras
			Si (numCifras<4 | numCifras>4) & legajo <> 0 Entonces
				Escribir "legajo ingresado no valido"
				b <- Verdadero
				numCifras <- 0
			SiNo
				b <- Falso
			FinSi
		Hasta Que b = Falso
		Si legajo <> 0 Entonces
			Escribir "ingrese las 6 notas de las materias rendidas este año"
			Escribir "calificacion del 1 al 10"
			Escribir ""
			Para i<-1 Hasta 6 Con Paso 1 Hacer
				Escribir "ingrese calificacion:"
				Leer nota
				Si nota <= 0 | nota > 10 Entonces
					Escribir "valor ingresado fuera del rango de calificaciones"
					i <- i - 1
				SiNo
					acumNotas <- acumNotas + nota
				FinSi
			Fin Para
			contProm <- contProm + 1
			promNotas <- acumNotas / 6
			Segun contProm Hacer
				1:
					MEJPROM[contProm]<-promNotas
					MEJLEG[contProm]<-legajo
				2:
					MEJPROM[contProm]<-promNotas
					MEJLEG[contProm]<-legajo
					Si MEJPROM[contProm]>MEJPROM[contProm-1] Entonces
						MEJPROM[4]<-MEJPROM[contProm-1]
						MEJPROM[contProm-1]<-MEJPROM[contProm]
						MEJPROM[contProm]<-MEJPROM[4]
						MEJLEG[4]<-MEJLEG[contProm-1]
						MEJLEG[contProm-1]<-MEJLEG[contProm]
						MEJLEG[contProm]<-MEJLEG[4]
					FinSi
				3:
					MEJPROM[contProm]<-promNotas
					MEJLEG[contProm]<-legajo
					Si MEJPROM[contProm]>MEJPROM[contProm-2] Entonces
						MEJPROM[4]<-MEJPROM[contProm-2]
						MEJPROM[contProm-2]<-MEJPROM[contProm]
						MEJPROM[contProm]<-MEJPROM[4]
						MEJLEG[4]<-MEJLEG[contProm-2]
						MEJLEG[contProm-2]<-MEJLEG[contProm]
						MEJLEG[contProm]<-MEJLEG[4]
						Si MEJPROM[contProm]>MEJPROM[contProm-1] Entonces
							MEJPROM[4]<-MEJPROM[contProm-1]
							MEJPROM[contProm-1]<-MEJPROM[contProm]
							MEJPROM[contProm]<-MEJPROM[4]
							MEJLEG[4]<-MEJLEG[contProm-1]
							MEJLEG[contProm-1]<-MEJLEG[contProm]
							MEJLEG[contProm]<-MEJLEG[4]
						FinSi
					SiNo
						Si MEJPROM[contProm]>MEJPROM[contProm-1] Entonces
							MEJPROM[4]<-MEJPROM[contProm-1]
							MEJPROM[contProm-1]<-MEJPROM[contProm]
							MEJPROM[contProm]<-MEJPROM[4]
							MEJLEG[4]<-MEJLEG[contProm-1]
							MEJLEG[contProm-1]<-MEJLEG[contProm]
							MEJLEG[contProm]<-MEJLEG[4]
						FinSi
					FinSi
				De Otro Modo:
					Si promNotas>MEJPROM[3] Entonces
						MEJPROM[4]<-MEJPROM[3]
						MEJPROM[3]<-promNotas
						promNotas<-MEJPROM[4]
						MEJLEG[4]<-MEJLEG[3]
						MEJLEG[3]<-legajo
						legajo<-MEJLEG[4]
						Si MEJPROM[3]>MEJPROM[2] Entonces
							MEJPROM[4]<-MEJPROM[2]
							MEJPROM[2]<-MEJPROM[3]
							MEJPROM[3]<-MEJPROM[4]
							MEJLEG[4]<-MEJLEG[2]
							MEJLEG[2]<-MEJLEG[3]
							MEJLEG[3]<-MEJLEG[4]
							Si MEJPROM[2]>MEJPROM[1] Entonces
								MEJPROM[4]<-MEJPROM[1]
								MEJPROM[1]<-MEJPROM[2]
								MEJPROM[2]<-MEJPROM[4]
								MEJLEG[4]<-MEJLEG[1]
								MEJLEG[1]<-MEJLEG[2]
								MEJLEG[2]<-MEJLEG[4]
							FinSi
						FinSi
					FinSi
			Fin Segun
		FinSi
		acumNotas <- 0
	Hasta Que legajo = 0
	Escribir "Los 3 alumnos con mejor promedio:"
	Para i<-1 Hasta 3 Con Paso 1 Hacer
		Escribir "legajo: ",MEJLEG[i]
		Escribir "con promedio: ",MEJPROM[i]
	Fin Para
FinAlgoritmo
