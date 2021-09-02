Algoritmo TP5_E2_19
	Definir duracion,importe,importeTot Como Real
	Definir tipoLlamada,tipoTurno,paisDest Como Entero
	Definir varbool,var2Bool,var3Bool Como Logico
	Definir turno,tarifa Como Caracter
	varBool <- Falso
	var2Bool <- Falso
	var3Bool <- Falso
	importeTot <- 0
	Repetir
		Repetir
			Escribir "ingrese el tipo de llamada"
			Escribir "1-local"
			Escribir "2-urbana"
			Escribir "3-interurbana"
			Leer tipoLlamada
			Si tipoLlamada <> 1 & tipoLlamada <> 2 & tipoLlamada <> 3  Entonces
				varBool <- Verdadero
				Borrar Pantalla
				Escribir "tipo de llamada no valido"
				Escribir ""
			SiNo
				varBool <- Falso
			FinSi
		Hasta Que varBool = Falso
		
		Segun tipoLlamada Hacer
			1:
				Repetir
					Escribir "llamada local"
					Escribir "se abona $0.50 por minuto"
					Escribir "ingresar duracion de la llamada en minutos"
					Leer duracion
					Si duracion <= 0 Entonces
						Borrar Pantalla
						Escribir "duracion no valida"
						var3Bool <- Verdadero
						Escribir ""
					SiNo
						var3Bool <- Falso
						importe <- duracion * 0.50
						importeTot <- importeTot + importe 
						Escribir "la duracion elegida es de: ",duracion," min"
						Escribir "importe a abonar: $",importe
					FinSi
				Hasta Que var3Bool = Falso
			2:
				Repetir
					Escribir "llamada urbana"
					Escribir "se abona $4 los primeros 3 minutos"
					Escribir "$2 pesos cada minuto adicional"
					Escribir "ingresar duracion de la llamada en minutos"
					Leer duracion
					Si duracion <= 0 Entonces
						Borrar Pantalla
						Escribir "duracion no valida"
						Escribir ""
						var3Bool <- Verdadero
					SiNo
						var3Bool <- Falso
						importe <- (duracion - 3) * 2 + 4
						Escribir "importe a abonar: $",importe
						importeTot <- importeTot + importe 
					FinSi
				Hasta Que var3Bool = Falso
			3:
				Repetir
					Escribir "llamada interurbana"
					Escribir "ingresar pais destino"
					Escribir "1-España"
					Escribir "2-Italia"
					Leer paisDest
					Segun paisDest Hacer
						1:
							Repetir
								varBool = Falso
								Escribir "pais destino: España"
								Escribir "T1: $11"
								Escribir "T2: $6"
								Escribir "se abona una tarifa T1 los primeros 3 minutos"
								Escribir "se abona una tarifa T2 para cada minuto adicional"
								Escribir "ingresar duracion de la llamada en minutos"
								Leer duracion
								Si duracion <= 0 Entonces
									Borrar Pantalla
									Escribir "duracion no valida"
									Escribir ""
									var3Bool <- Verdadero
								SiNo
									var3Bool <- Falso
									importe <- (duracion - 3) * 6 + 11
									Escribir "importe a abonar: $",importe
									importeTot <- importeTot + importe
								FinSi
							Hasta Que var3Bool = Falso
						2:
							Repetir
								varBool = Falso
								Escribir "pais destino: Italia"
								Escribir "T1: $20"
								Escribir "T2: $17"
								Escribir "se abona una tarifa T1 los primeros 3 minutos"
								Escribir "se abona una tarifa T2 para cada minuto adicional"
								Escribir "ingresar duracion de la llamada en minutos"
								Leer duracion
								Si duracion <= 0 Entonces
									Borrar Pantalla
									Escribir "duracion no valida"
									Escribir ""
									var3Bool <- Verdadero
								SiNo
									var3Bool <- Falso
									importe <- (duracion - 3) * 17 + 20
									Escribir "importe a abonar: $",importe
									importeTot <- importeTot + importe
								FinSi
							Hasta Que var3Bool = Falso
						De Otro Modo:
							varBool <- Verdadero
							Borrar Pantalla
							Escribir "pais destino no valido"
							Escribir ""
					Fin Segun
				Hasta Que varBool = Falso
		Fin Segun
		Escribir "Desea cambiar el turno?"
		Escribir "F-cambiar turno"
		Escribir "cualquier otra tecla-volver al menu"
		Leer turno
		Si turno = 'F' Entonces
			Borrar Pantalla
			Escribir "total de lo recaudado: $",importeTot
			Escribir " "
		SiNo
			Borrar Pantalla
		FinSi
	Hasta Que var3Bool = Verdadero
FinAlgoritmo




