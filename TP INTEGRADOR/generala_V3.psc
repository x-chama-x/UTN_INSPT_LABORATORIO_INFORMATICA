Algoritmo GENERALA
	Definir eleccion,numBackup Como Entero
	Definir boolean Como Logico
	Definir dado,jugadoresBackup Como Caracter
	Dimension V_jugadores[3]
	Dimension num[3]
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
			// NOMBRAR JUGADORES
			Para i<-1 Hasta 3 Con Paso 1 Hacer 
				Borrar Pantalla
				Escribir "-------------GENERALA--------------"
				Escribir " INGRESAR NOMBRE DEL ",i,"° JUGADOR"
				Leer V_jugadores[i]
			Fin Para
			Borrar Pantalla
			// DETERMINAR EL ORDEN DEL JUEGO (QUIEN EMPIEZA<- JUGADOR 1,2,3 ETC)
			Para j<-1 Hasta 3 Con Paso 1 Hacer
				Escribir "-------------GENERALA--------------"
				Escribir "  SE DETERMINA EL ORDEN DEL JUEGO  "
				Escribir "   AL AZAR (SE SIMULA UN DADO)		"		
				Escribir "     JUGADOR    ",V_jugadores[j]
				Escribir "	  INGRESE LA LETRA D (DADO)     "
				Leer dado
				Si 'D' = dado Entonces
					Repetir
						num[j] <- azar(7);
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
		FinSi
	//Hasta Que eleccion = 3
	
FinAlgoritmo