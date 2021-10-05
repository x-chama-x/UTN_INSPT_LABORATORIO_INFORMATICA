Algoritmo TP5_E2_38
	Definir legajo,numCifras,edad Como Entero
	Definir i,contEdad20,legMayor Como Entero
	Definir legajoCifras,sueldoAcum,sueldoProm Como Real
	Definir maySueldoProm Como Real
	Definir b Como Logico
	Dimension sueldo[4]
	b <- Falso
	legMayor<-0
	contEdad20<-0
	legajo<- 0
	numCifras <- 0
	legajoCifras <- 0
	sueldoProm<- 0
	sueldoAcum<- 0
	maySueldoProm <- 0
	edad <- 0
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
			Para i<-1 Hasta 4 Con Paso 1 Hacer
				Escribir "ingresar ",i,"° sueldo (num real)"
				Leer sueldo[i]
				Si sueldo[i] <= 0 Entonces
					Escribir "sueldo ingresado no valido"
					i <- i-1
				SiNo
					sueldoAcum <- sueldoAcum + sueldo[i]
				FinSi
			Fin Para
			sueldoProm <- sueldoAcum/4
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
			Si edad >= 20 & edad <= 30 Entonces
				contEdad20<-contEdad20+1
				Si contEdad20=1 Entonces
					maySueldoProm <- sueldoProm
					legMayor <- legajo
				SiNo
					Si sueldoProm>maySueldoProm | sueldoProm = maySueldoProm Entonces
						maySueldoProm <- sueldoProm
						legMayor <- legajo
					
					FinSi
				Fin Si
			FinSi
		FinSi
	sueldoAcum<-0
	Hasta Que legajo = -1
	Escribir "mayor sueldo promedio cobrado por personas de entre 20 y 30: ",sueldoProm
	Escribir "legajo de la persona que lo cobro: ",legMayor
FinAlgoritmo
