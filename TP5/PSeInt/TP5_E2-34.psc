Algoritmo TP5_E2_34
	Definir codSocio,socioMax,socioMin Como Entero
	Definir socioCifras Como Real
	Definir edad,cont18a65,contEdad,edadMin,edadMax Como Entero
	Definir b Como Logico
	b <- falso
	socioMax<-0
	socioMin<-0
	contEdad <- 0
	edadMin <- 0
	edadMax <- 0
	codSocio<-1
	numSocio<-0
	socioCifras<-0
	cont18a65 <- 0
	
	Repetir
		Repetir
			Escribir "ingresar edad"
			Escribir "ingresar 0 para finalizar operacion"
			Leer edad
			Si edad < 0 Entonces
				Escribir "edad ingresada no valida"
				b <- Verdadero
			SiNo
				b <- Falso
			FinSi
		Hasta Que b = Falso
		Si edad > 18 & edad < 65 Entonces
			cont18a65 <- cont18a65 + 1
		FinSi
		Si codSocio * edad <> 0 Entonces
			Repetir
				Escribir "ingrese el numero de socio (4 digitos)"
				Leer codSocio
				socioCifras<- codSocio
				numSocio<-1
				Mientras socioCifras >= 10 
					socioCifras <- socioCifras/10
					numSocio <- numSocio + 1
				FinMientras
				Si numSocio > 4 | numSocio < 4  Entonces
					Escribir "valor ingresado no valido"
					b <- Verdadero
					numSocio <- 0
				SiNo
					b <- Falso
				FinSi
			Hasta Que b = Falso
		FinSi
		contEdad <- contEdad + 1
		Si contEdad = 1 & edad <> 0 Entonces
			edadMin <- edad
			edadMax <- edad
			socioMin <- codSocio
			socioMax <- codSocio
		SiNo
			Si edad < edadMin & edad <> 0 Entonces
				edadMin <- edad
				socioMin <- codSocio
			SiNo
				Si edad > edadMax & edad <> 0 Entonces
					edadMax <- edad
					socioMax <- codSocio
				FinSi
			FinSi
		FinSi
	Hasta Que edad = 0
	Escribir "cantidad de personas mayores de 18 y menores a 65: ",cont18a65
	Escribir "num socio del mayor: ",socioMax
	Escribir "num socio del menor: ",socioMin
FinAlgoritmo
