Algoritmo TP5_E2_31
	Definir legajo,numCifras,edad,acumEdad Como Entero
	Definir contEdadF,contEdadM,femJoven,mascViejo Como Entero
	Definir promEdad Como Real
	Definir legJoven,legViejo,cont Como Entero
	Definir legajoCifras Como Real
	Definir sexo,nombre Como Caracter
	Definir b,bucle Como Logico
	contEdadF <- 0
	contEdadM <- 0
	legajoCifras <- 0
	edad <- 0
	femJoven <- 0
	mascViejo <- 0
	legajo <- 0
	numCifras <- 0
	legJoven <- 0
	legViejo <- 0
	promEdad <- 0
	acumEdad <- 0
	cont <- 0
	b <- Falso
	bucle <- Verdadero
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
			Si (numCifras<4 | numCifras>4) Entonces
				Escribir "valor ingresado no valido"
				b <- Verdadero
				numCifras <- 0
			SiNo
				b <- Falso
			FinSi
		Hasta Que b = Falso
		Repetir
			Escribir "ingresar edad"
			Leer edad
			contEdadF <- contEdadF + 1
			contEdadM <- contEdadM + 1
			Si edad <= 0 Entonces
				Escribir "dato ingresado no valido"
				b <- Verdadero
			SiNo
				b <- Falso
			FinSi
		Hasta Que b = Falso
		Escribir "ingresar primera inicial del nombre"
		Leer nombre
		Si nombre = 'j' Entonces
			acumEdad <- acumEdad + edad
			cont <- cont + 1
		FinSi
		Si nombre = 'J' Entonces
			acumEdad <- acumEdad + edad
			cont <- cont + 1
		FinSi
		Repetir
			Escribir "ingresar sexo f (fem) m (masc)"
			leer sexo
			Si sexo <> 'f' Entonces
				Si sexo <> 'm' Entonces
					Escribir "dato ingresado no valido"
					b <- Verdadero
				FinSi
			SiNo
				b <- Falso
			FinSi
		Hasta Que b = Falso
		Si sexo = 'f' Entonces
			Si contEdadF = 1 Entonces
				femJoven <- edad
				legJoven <- legajo
				contEdadM <- contEdadM - 1
			SiNo
				Si edad<femJoven Entonces
					femJoven <- edad
					legJoven <- legajo
				FinSi
			FinSi
		SiNo
			Si sexo = 'm' Entonces
				Si contEdadM = 1 Entonces
					mascViejo <- edad
					legViejo <- legajo
					contEdadF <- contEdadF - 1
				SiNo
					Si edad>mascViejo Entonces
						mascViejo <- edad
						legViejo <- legajo
					FinSi
				FinSi
			FinSi
		FinSi
		Si cont <> 0 Entonces
			promEdad <- acumEdad/cont
			Escribir "promedio de edades de quienes tengan nombre con inicial j o J:",promEdad
		SiNo
			Escribir "no se ingresaron nombres con inicial j o J"
		FinSi
		Escribir "legajo de la mujer mas joven:",legJoven
		Escribir "legajo del hombre mas viejo:",legViejo
	Mientras Que bucle = Verdadero
FinAlgoritmo
