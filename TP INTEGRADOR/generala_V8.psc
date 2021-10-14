Algoritmo GENERALA
	Definir eleccion,numBackup Como Entero
	Definir boolean Como Logico
	Definir dado,jugadoresBackup Como Caracter
	Dimension V_jugadores[3]
	Dimension num[3]
	boolean <- Falso
	//MATRIZ GRILLA PUNTAJE
	Definir i,j como Entero
	Definir M Como entero
	Dimension M[12,4];
	//JUEGO GENERALA <- DADOS
	Dimension VD[5]
	Definir cantDados Como Entero
	//Repetir
	// MENU PRINCIPAL
	Repetir 
		Escribir "Generala"
		Escribir "iniciar partida (ingresar 1)"
		Escribir "reglas del juego (ingresar 2)"
		Escribir "salir (ingresar 3)"
		Leer eleccion
		Si eleccion <= 0 | eleccion > 3 Entonces
			Borrar Pantalla
			Escribir "opcion no valida"
			Esperar 1 segundo
			Borrar Pantalla
			boolean <- Verdadero
		SiNo
			boolean <- Falso
		FinSi
	Hasta Que boolean = Falso
	Si eleccion <> 3 Entonces
		// NOMBRAR JUGADORES
		Para r<-1 Hasta 3 Con Paso 1 Hacer 
			Borrar Pantalla
			Escribir "Generala"
			Escribir "ingresar inicial del ",r,"° jugador (un digito)"
			Leer V_jugadores[r]
		Fin Para
		Borrar Pantalla
		// DETERMINAR EL ORDEN DEL JUEGO (QUIEN EMPIEZA<- JUGADOR 1,2,3 ETC)
		Para s<-1 Hasta 3 Con Paso 1 Hacer
			Escribir "Generala"
			Escribir "se determina el orden del juego"
			Escribir "jugador ",V_jugadores[s]
			Escribir "tire el dado (ingrese D)"
			Leer dado
			Si 'D' = dado Entonces
				num[s] <- Aleatorio(1,6)
				Borrar Pantalla
				Escribir "Generala"
				Escribir "dado = ",num[s]
				Esperar 1 segundo
				Borrar Pantalla
			SiNo
				Borrar Pantalla
				Escribir "Generala"
				Escribir "opcion no valida"
				Esperar 1 segundo
				Borrar Pantalla
				s <- s-1
			FinSi
			Si s <> 1 & (num[1] = num[2] | num[2] = num[3] | num[1]=num[3])  Entonces
				Escribir "Generala"
				Escribir "dado repetido"
				Escribir "vuelva a lanzar el dado"	
				s <- s-1
				Esperar 1 segundo
				Borrar Pantalla
			FinSi
		Fin Para
		Si num[2]>num[1] Entonces
			numBackup<-num[1]
			jugadoresBackup<-V_jugadores[1]
			num[1]<-num[2]
			V_jugadores[1]<-V_jugadores[2]
			num[2]<-numBackup
			V_jugadores[2]<-jugadoresBackup
			Si num[3]>num[2] Entonces
				numBackup<-num[2]
				jugadoresBackup<-V_jugadores[2]
				num[2]<-num[3]
				V_jugadores[2]<-V_jugadores[3]
				num[3]<-numBackup
				V_jugadores[3]<-jugadoresBackup
				Si num[2]>num[1] Entonces
					numBackup<-num[1]
					jugadoresBackup<-V_jugadores[1]
					num[1]<-num[2]
					V_jugadores[1]<-V_jugadores[2]
					num[2]<-numBackup
					V_jugadores[2]<-jugadoresBackup
				FinSi
			FinSi
		SiNo
			Si num[3]>num[2] Entonces
				numBackup<-num[2]
				jugadoresBackup<-V_jugadores[2]
				num[2]<-num[3]
				V_jugadores[2]<-V_jugadores[3]
				num[3]<-numBackup
				V_jugadores[3]<-jugadoresBackup
				Si num[2]>num[1] Entonces
					numBackup<-num[1]
					jugadoresBackup<-V_jugadores[1]
					num[1]<-num[2]
					V_jugadores[1]<-V_jugadores[2]
					num[2]<-numBackup
					V_jugadores[2]<-jugadoresBackup
				FinSi
			FinSi
		FinSi
		//ORDEN DEL JUEGO
		Escribir "Generala"
		Escribir "orden del juego"
		Para p<-1 Hasta 3 Con Paso 1 Hacer
			Escribir p,"° jugador: ",V_jugadores[p]
		Fin Para
		Esperar 1 segundo
		Borrar Pantalla
	FinSi
	Para i<-2 Hasta 12 Con Paso 1 Hacer
		Para j<-2 Hasta 4 Con Paso 1 Hacer
			M[i,j]<-0;
		Fin Para
	Fin Para
	//INICIO JUEGO, GRRILLA
	Escribir "Generala"
	Escribir "inicio del juego"
	Escribir ""
	Escribir "planilla de categorias"
	Para i<-1 Hasta 12 Con Paso 1 Hacer
		Para j<-1 Hasta 4 Con Paso 1 Hacer
			Si j = 1 & k <= 5 & i>1 Entonces
				k <- k+1
				Escribir Sin Saltar " ",k,"  "
			SiNo
				Si j = 1 & i>1  Entonces
					Segun i Hacer
						8:
							Escribir Sin Saltar "ESC "
						9:
							Escribir Sin Saltar "FULL"
						10:
							Escribir Sin Saltar "POK "
						11:
							Escribir Sin Saltar "GEN "
						12: 
							Escribir Sin Saltar "GEN2"
					Fin Segun
				SiNo
					Si j=1 & i = 1 Entonces
						Escribir Sin Saltar "     ",V_jugadores[1]
						Escribir Sin Saltar " ",V_jugadores[2]
						Escribir Sin Saltar " ",V_jugadores[3]
					FinSi
				FinSi
			FinSi
			Si j<>1 & i<>1 Entonces
				Escribir Sin Saltar " " M[i,j];
			FinSi
		Fin Para
		Escribir " "
	Fin Para
	//INICIO JUEGO,LANZAMIENTO
	
	Para t<-1 Hasta 3 Con Paso 1 Hacer //TURNOS 
		cantDados <- 5
		Para u<-1 Hasta 3 Con Paso 1 Hacer // LANZAMIENTOS
			Escribir ""
			Escribir u,"° lanzamiento del jugador ",V_jugadores[t]
			Escribir "lance los dados (ingrese D)"
			Leer dado
			Si dado = 'D' Entonces
				Para f<-1 Hasta cantDados Con Paso 1 Hacer
					VD[f]<-Aleatorio(1,6)
					Escribir "dado ",f,": ", VD[f]
				Fin Para
				//CATEGORIAS SERVIDAS
				// ESCALERA SERVIDA
				Si VD[1] = 1 & VD[2] = 2 & VD[3] = 3 & VD[4] = 3 & VD[4] = 5  Entonces
					Escribir "Escalera servida"
					Escribir "jugador ",V_jugadores[t]," recibió 25 puntos"
					u <- 3 //fin del turno
				SiNo
					// FULL SERVIDO 
					Si VD[1] = VD[2] & VD[2] = VD[3] & VD[4] = VD[5] & VD[4] <> VD[1] | VD[5] = VD[1] & VD[1] = VD[2] & VD[3] = VD[4] & VD[4] <> VD[1] | VD[4] = VD[5] & VD[5] = VD[1] & VD[2] = VD[3] & VD[2] <> VD[1] | VD[3] = VD[4] & VD[4] = VD[5] & VD[1] = VD[2] & VD[2] <> VD[3] | VD[2] = VD[3] & VD[3] = VD[4] & VD[5] = VD[1] & VD[1] <> VD[2] | VD[2] = VD[3] & VD[3] = VD[5] & VD[4] = VD[1] & VD[1] <> VD[2] | VD[1] = VD[3] & VD[3] = VD[5] & VD[2] = VD[4] & VD[2] <> VD[3]| VD[1] = VD[2] & VD[2] = VD[4] & VD[5] = VD[3] & VD[3] <> VD[2] | VD[1] = VD[3] & VD[3] = VD[4] & VD[2] = VD[5] & VD[3] <> VD[2] | VD[2] = VD[4] & VD[4] = VD[5] & VD[1] = VD[3] & VD[3] <> VD[2]	Entonces
						Escribir "Full servido"	
						Escribir "jugador ",V_jugadores[t]," recibió 35 puntos"
						u <- 3 //fin del turno
					FinSi
				FinSi
			FinSi
		Fin Para
	Fin Para
	
	
	
	
	//Hasta Que eleccion = 3
	
FinAlgoritmo