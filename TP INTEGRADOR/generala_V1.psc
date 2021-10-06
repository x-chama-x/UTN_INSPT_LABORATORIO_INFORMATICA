Algoritmo GENERALA
	Definir eleccion,cantJug,backup Como Entero
	Definir boolean Como Logico
	Definir elecJug,dado Como Caracter
	Dimension V_jugadores[5]
	Dimension V_backup[1]
	Dimension num[5]
	boolean <- Falso
	
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
			//  MENU --> CANTIDAD DE JUGADORES
			Repetir 
				Borrar Pantalla
				Escribir "-------------GENERALA--------------"
				Escribir "  ELIJA LA CANTIDAD DE JUGADORES:"
				Escribir "        A- 3 JUGADORES"
				Escribir "        B- 4 JUGADORES"
				Escribir "        C- 5 JUGADORES"
				Leer elecJug
				Segun elecJug Hacer
					'A':
						boolean <- Falso
						cantJug <- 3
					'B':
						boolean <- Falso
						cantJug <- 4
					'C':
						boolean <- Falso
						cantJug <- 5
					De Otro Modo:
						Borrar Pantalla
						Escribir "-------------GENERALA--------------"
						Escribir ""
						Escribir "        OPCION NO VALIDA"
						Esperar 1 segundo
						Borrar Pantalla
						boolean <- Verdadero
				Fin Segun
			Hasta Que boolean = Falso
			// NOMBRAR JUGADORES
			Para i<-1 Hasta cantJug Con Paso 1 Hacer 
				Borrar Pantalla
				Escribir "-------------GENERALA--------------"
				Escribir " INGRESAR NOMBRE DEL ",i,"° JUGADOR"
				Leer V_jugadores[i]
			Fin Para
			Borrar Pantalla
			// DETERMINAR EL ORDEN DEL JUEGO (QUIEN EMPIEZA<- JUGADOR 1,2,3 ETC)
			Para j<-1 Hasta cantJug Con Paso 1 Hacer
				Escribir "-------------GENERALA--------------"
				Escribir "  SE DETERMINA EL ORDEN DEL JUEGO  "
				Escribir "   AL AZAR (SE SIMULA UN DADO)		"		
				Escribir "     JUGADOR    ",V_jugadores[j]
				Escribir "	  INGRESE LA LETRA D (DADO)     "
				Leer dado
				Si 'D' = dado Entonces
					Repetir
						num[j] <- azar(6);
					Hasta Que num[j] <> 0 
					Borrar Pantalla
					Escribir "-------------GENERALA--------------"
					Escribir ""
					Escribir "        DADO = ",num[j]
					Esperar 1 segundo
					Borrar Pantalla
				SiNo
					Borrar Pantalla
					Escribir "-------------GENERALA--------------"
					Escribir ""
					Escribir "        OPCION NO VALIDA"
					Esperar 1 segundo
					Borrar Pantalla
					j <- j-1
				FinSi
			Fin Para
			Para k<-1 Hasta cantJug Con Paso 1 Hacer
				Para l<-2 Hasta cantJug Con Paso 1 Hacer
					Si num[l]>num[k] Entonces
						backup<-num[k]
						V_backup[1]<-V_jugadores[k]
						num[k]<-num[l]
						V_jugadores[k]<-V_jugadores[l]
						V_jugadores[l]<-V_backup[1]
						num[l]<-backup
						Para m<-3 Hasta cantJug Con Paso 1 Hacer
							Si num[m]>num[l] Entonces
								backup<-num[l]
								V_backup[1]<-V_jugadores[l]
								num[l]<-num[m]
								V_jugadores[l]<-V_jugadores[m]
								V_jugadores[m]<-V_backup[1]
								num[m]<-backup
							FinSi
						Fin Para
					FinSi
				Fin Para
			Fin Para
			
			Para p<-1 Hasta cantJug Con Paso 1 Hacer
				Escribir V_jugadores[p]
			Fin Para
		FinSi
	//Hasta Que eleccion = 3
	
	
	
	
	
	
	
	
FinAlgoritmo