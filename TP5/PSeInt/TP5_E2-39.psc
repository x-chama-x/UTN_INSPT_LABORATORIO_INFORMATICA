Algoritmo TP5_E2_39
	Definir legajo,numCifras,edad Como Entero
	Definir acumEdadM,contM,mayorSueldoF Como Entero
	Definir contF,legajoMayorF Como Entero
	Definir legajoCifras,sueldo Como Real
	Definir PromEdadM Como Real
	Definir sexo Como Caracter
	Definir b Como Logico
	legajo<- 0
	numCifras <- 0
	legajoCifras <- 0
	sueldo <- 0
	edad <- 0
	contM <- 0
	PromEdadM <- 0
	acumEdadM <- 0
	mayorSueldoF <- 0
	contF <- 0
	legajoMayorF <- 0
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
			Hasta Que b = Falso
			Repetir
				Escribir "ingresar sueldo"
				Leer sueldo
				Si sueldo <= 0 Entonces
					Escribir "sueldo ingresado no valido"
					b <- Verdadero
				SiNo
					b <- Falso
				FinSi
			Hasta Que b = Falso
			Repetir
				Escribir "ingresar sexo"
				Leer sexo
				Segun sexo Hacer
					'M':
						b <- Falso
						contM <- contM + 1
						acumEdadM <- edad + acumEdadM
					'F':
						contF <- contF + 1
						Si contF = 1 Entonces
							mayorSueldoF <- sueldo
							legajoMayorF <- legajo
						SiNo
							Si sueldo>mayorSueldoF Entonces
								mayorSueldoF <- sueldo
								legajoMayorF <- legajo
							FinSi
						FinSi
						b <- Falso
						
					De Otro Modo:
						Escribir "Sexo ingresado no valido"
						b <- Verdadero
				Fin Segun
			Hasta Que b = Falso
		FinSi
	Hasta Que legajo = -1
	Si contM > 0 Entonces
		PromEdadM <- acumEdadM/contM
		Escribir "promedio de edad de los hombres: ",PromEdadM," años"
	SiNo
		Escribir "no se ingresaron usuarios de genero masculino"
	FinSi
	Escribir "mayor sueldo femenino: $",mayorSueldoF
	Escribir "legajo de la persona que lo cobra: ",legajoMayorF
FinAlgoritmo
