Algoritmo TP4_E230
	Definir legajo,edad,edadMin Como Entero
	Definir numCifras,LegJoven,ultLegajo,contSueldo Como Entero
	Definir legajoCifras,sueldo,sueldoTotal,sueldoProm Como Real
	Definir b Como Logico
	b <- Falso
	contSueldo <- 0
	sueldoTotal <- 0
	sueldoProm <- 0
	legajo <- 0
	LegJoven <- 0
	edadMin <- 0
	i <- 0
	LegJoven <- 0
	Repetir
		Repetir
			Escribir "ingrese el legajo (4 digitos)"
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
				Si legajo <> -1 Entonces
					ultLegajo <- legajo
				FinSi
			FinSi
		Hasta Que b = Falso
		
		Si legajo <> -1 Entonces
			Repetir
				Escribir "ingresar sueldo:"
				Leer sueldo
				Si sueldo <= 0 Entonces
					Escribir "valor ingresado no valido"
					b <- Verdadero
				SiNo
					b <- Falso
				FinSi
			Hasta Que b = Falso
			Repetir
				Escribir "ingrese la edad"
				Leer edad
				Si edad <= 0 Entonces
					Escribir "edad ingresada no valida"
					b <- Verdadero
				SiNo
					b <- Falso
				FinSi
				Si edad >= 20 & edad <= 30 Entonces
					contSueldo <- contSueldo + 1
					sueldoTotal <- sueldo + sueldoTotal
				FinSi
			Hasta Que b = Falso
			Si edadMin = 0 Entonces
				edadMin <- edad
				LegJoven<-legajo
			SiNo
				Si edad < edadMin Entonces
					edadMin <- edad
					LegJoven<-legajo
				FinSi
			FinSi
		FinSi
	Hasta Que legajo = -1
	Si ultLegajo <> 0 Entonces
		Escribir "legajo del ultimo de la lista: ",ultLegajo
		Escribir "legajo del más joven: ",LegJoven
		Si contSueldo <> 0 Entonces
			sueldoProm <- sueldoTotal/contSueldo
			Escribir "sueldo promedio de quienes tengan entre 20 y 30 años: ",sueldoProm
		FinSi
	SiNo
		Escribir "no se han ingresado datos"
	FinSi
FinAlgoritmo
