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
	
	//Repetir
		// MENU PRINCIPAL
		Repetir 
			Escribir "-------------GENERALA--------------"
			Escribir "        1 INICIAR PARTIDA"
			Escribir "        2 REGLAS DEL JUEGO"
			Escribir "        3 SALIR"
			Leer eleccion
			Si eleccion <= 0 | eleccion > 3 Entonces
				Borrar Pantalla
				Escribir ""
				Escribir ""
				Escribir "        OPCION NO VALIDA"
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
				Escribir "-------------GENERALA--------------"
				Escribir " INGRESAR INICIAL DEL ",r,"° JUGADOR"
				Escribir "            UN DIGITO               "
				Leer V_jugadores[r]
			Fin Para
			Borrar Pantalla
			// DETERMINAR EL ORDEN DEL JUEGO (QUIEN EMPIEZA<- JUGADOR 1,2,3 ETC)
			Para s<-1 Hasta 3 Con Paso 1 Hacer
				Escribir "-------------GENERALA--------------"
				Escribir "  SE DETERMINA EL ORDEN DEL JUEGO  "
				Escribir "   AL AZAR (SE SIMULA UN DADO)		"		
				Escribir "     JUGADOR    ",V_jugadores[s]
				Escribir "	  INGRESE LA LETRA D (DADO)     "
				Leer dado
				Si 'D' = dado Entonces
						num[s] <- Aleatorio(1,6)
					Borrar Pantalla
					Escribir "-------------GENERALA--------------"
					Escribir ""
					Escribir "        DADO = ",num[s]
					Esperar 1 segundo
					Borrar Pantalla
				SiNo
					Borrar Pantalla
					Escribir "-------------GENERALA--------------"
					Escribir ""
					Escribir "        OPCION NO VALIDA"
					Esperar 1 segundo
					Borrar Pantalla
					s <- s-1
				FinSi
				Si s <> 1 & (num[1] = num[2] | num[2] = num[3] | num[1]=num[3])  Entonces
					Escribir "-------------GENERALA--------------"
					Escribir "           DADO REPETIDO           "
					Escribir "      VUELVA A LANZAR EL DADO      "	
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
			FinSi
			//ORDEN DEL JUEGO
			Escribir "-------------GENERALA--------------"
			Escribir "         ORDEN DEL JUEGO           "
			Para p<-1 Hasta 3 Con Paso 1 Hacer
				Escribir p,"° JUGADOR: ",V_jugadores[p]
			Fin Para
			Esperar 3 segundo
			Borrar Pantalla
		FinSi
		Para i<-2 Hasta 12 Con Paso 1 Hacer
			Para j<-2 Hasta 4 Con Paso 1 Hacer
				M[i,j]<-0;
			Fin Para
		Fin Para
		//INICIO JUEGO, GRRILLA
		Escribir "-------------GENERALA--------------"
		Escribir "      PLANILLA DE CATEGORIAS       "
		Escribir ""
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
	//Hasta Que eleccion = 3
	
FinAlgoritmo