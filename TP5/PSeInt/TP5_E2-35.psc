Algoritmo TP5_E2_35
	Definir legajo,numCifras,curso Como Entero
	Definir i,menorNota,legMenorNota,cont,ultLegajo Como Entero
	Definir cantAlumnProm,acumNotasAlumn,cursoUltAlumn Como Entero
	Definir promAlumnos Como Real
	Definir legajoCifras Como Real
	Definir b Como Logico
	curso <- 0
	legajo <- 0
	numCifras <- 0
	legajoCifras <- 0
	cont <- 0
	cantAlumnProm <- 0
	promAlumnos <- 0
	menorNota <- 0
	acumNotasAlumn <- 0
	ultLegajo <- 0
	cursoUltAlumn <- 0
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
				Escribir "ingresar curso del alumno (max 5 cursos)"
				Leer curso
				Si curso <= 0 | curso >=6 Entonces
					Escribir "curso no valido"
					b <- Verdadero
				SiNo
					b <- Falso
				FinSi
			Hasta Que b = Falso
			cont <- cont + 1
			Si cont = 1 Entonces
				ultLegajo <- legajo
				cursoUltAlumn <- curso
			SiNo
				Si curso > cursoUltAlumn Entonces
					ultLegajo <- legajo
					cursoUltAlumn <- curso
				SiNo
					Si curso = cursoUltAlumn & legajo>ultLegajo Entonces
						Escribir "entro"
						ultLegajo <- legajo
					FinSi
				FinSi
			FinSi
			Repetir
				Escribir "ingresar nota (1 al 10)"
				Leer nota
				Si nota <= 0 | nota > 10 Entonces
					Escribir "calificacion no valida"
					b <- Verdadero
				SiNo
					b <- Falso
				FinSi
			Hasta Que b = Falso
			i = i+1
			Si i = 1 Entonces
				menorNota = nota
				legMenorNota = legajo
			SiNo
				Si nota<menorNota Entonces
					menorNota = nota
					legMenorNota = legajo
				FinSi
			FinSi
			Si nota >= 4 & nota <= 7 Entonces
				cantAlumnProm <- cantAlumnProm + 1
				acumNotasAlumn <- acumNotasAlumn + nota
			FinSi
		FinSi
	Hasta Que legajo = -1
	promAlumnos <- acumNotasAlumn/cantAlumnProm
	Escribir "alumno con menor nota:",legMenorNota
	Escribir "promedio de los alumnos que obtuvieron notas entre 4 y 7: ",promAlumnos
	Escribir "ultimo alumno de la lista: ",ultLegajo
FinAlgoritmo
