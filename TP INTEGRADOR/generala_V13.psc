Algoritmo GENERALA
	Definir eleccion,numBackup Como Entero
	Definir boolean,boolean2 Como Logico
	Definir dado,jugadoresBackup Como Caracter
	Dimension V_jugadores[3]
	Dimension num[3]
	boolean <- Falso
	boolean2 <- Falso
	//MATRIZ GRILLA PUNTAJE
	Definir i,j como Entero
	Definir M Como entero
	Dimension M[12,4];
	//JUEGO GENERALA 
	// DADOS
	Dimension VD[5]
	Dimension VD_backup[5]
	Definir cantDados,numDado Como Entero 
	// Limitar escalera servida
	Definir limit Como Entero
	Repetir
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
		Segun eleccion Hacer
			1:
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
				
				Para i<-2 Hasta 12 Con Paso 1 Hacer
					Para j<-2 Hasta 4 Con Paso 1 Hacer
						M[i,j]<-0;
					Fin Para
				Fin Para
				//INICIO JUEGO,LANZAMIENTO
				Escribir "Generala"
				Escribir "inicio del juego"
				Repetir
					Para t<-1 Hasta 3 Con Paso 1 Hacer //TURNOS 
						cantDados <- 5
						Para u<-1 Hasta 3 Con Paso 1 Hacer // LANZAMIENTOS
							Escribir ""
							Escribir u,"° lanzamiento del jugador ",V_jugadores[t]
							Escribir "lance los dados (ingrese D)"
							Leer dado
							Si dado = 'D' Entonces
								Si boolean2 = Verdadero Entonces
									Escribir "dados lanzados:"
									Para f<-1 Hasta cantDados Con Paso 1 Hacer
										Si VD[f] <> VD_backup[f] Entonces
											VD[f]<-Aleatorio(1,6)
											Escribir "dado ",f,": ", VD[f]
										FinSi
									Fin Para
									Escribir "dados almacenados:"
									Para f<-1 Hasta cantDados Con Paso 1 Hacer
										Si VD[f] = VD_backup[f] Entonces
											Escribir "dado ",f,": ", VD[f]
										FinSi
									Fin Para
								SiNo
									Para f<-1 Hasta cantDados Con Paso 1 Hacer
										VD[f]<-Aleatorio(1,6)
										Si VD_backup[f] <> 0 Entonces
											VD[f] <- VD_backup[f]
										FinSi
										Escribir "dado ",f,": ", VD[f]
									Fin Para
								FinSi
								//CATEGORIAS SERVIDAS
								// ESCALERA SERVIDA
								Si VD[1] <> VD[2] & VD[1]<>VD[3] & VD[1] <> VD[4] & VD[1]<>VD[5] & VD[2]<>VD[3] & VD[2] <> VD[4] & VD[2]<>VD[5] & VD[3]<>VD[1] & VD[3] <> VD[4] & VD[3]<>VD[5] & VD[4]<>VD[1] & VD[4]<>VD[2] & VD[4] <> VD[5] & VD[5]<>VD[1] & VD[5]<>VD[2] & VD[5] <> VD[3]  Entonces
									Para p<-1 Hasta cantDados Con Paso 1 Hacer
										Si VD[p] = 1 Entonces
											limit <- limit + 1
										SiNo
											Si VD[p] = 6 Entonces
												limit <- limit + 1
											FinSi
										FinSi
									Fin Para
									Si limit <> 2 Entonces
										Si boolean2 = Falso Entonces
											Escribir "Escalera servida"
											Escribir "jugador ",V_jugadores[t]," recibió 25 puntos"
											u <- 3 //fin del turno
										SiNo
											Si boolean2 = Falso Entonces
												Escribir "Escalera"
												Escribir "jugador ",V_jugadores[t]," recibió 20 puntos"
												u <- 3 //fin del turno
											FinSi
										FinSi
									FinSi
									limit <- 0
									Para z<-1 Hasta 5 Con Paso 1 Hacer
										VD_backup[z]<-0
									Fin Para
									cantDados <- 5
									boolean2 <- Falso
								SiNo
									// FULL 
									Si VD[1] = VD[2] & VD[2] = VD[3] & VD[4] = VD[5] & VD[4] <> VD[1] | VD[5] = VD[1] & VD[1] = VD[2] & VD[3] = VD[4] & VD[4] <> VD[1] | VD[4] = VD[5] & VD[5] = VD[1] & VD[2] = VD[3] & VD[2] <> VD[1] | VD[3] = VD[4] & VD[4] = VD[5] & VD[1] = VD[2] & VD[2] <> VD[3] | VD[2] = VD[3] & VD[3] = VD[4] & VD[5] = VD[1] & VD[1] <> VD[2] | VD[2] = VD[3] & VD[3] = VD[5] & VD[4] = VD[1] & VD[1] <> VD[2] | VD[1] = VD[3] & VD[3] = VD[5] & VD[2] = VD[4] & VD[2] <> VD[3]| VD[1] = VD[2] & VD[2] = VD[4] & VD[5] = VD[3] & VD[3] <> VD[2] | VD[1] = VD[3] & VD[3] = VD[4] & VD[2] = VD[5] & VD[3] <> VD[2] | VD[2] = VD[4] & VD[4] = VD[5] & VD[1] = VD[3] & VD[3] <> VD[2]	Entonces
										Si boolean2 = Falso Entonces
											Escribir "Full servido"	
											Escribir "jugador ",V_jugadores[t]," recibió 35 puntos"
											u <- 3 //fin del turno
										SiNo
											Si boolean2 = Verdadero Entonces
												Escribir "Full"	
												Escribir "jugador ",V_jugadores[t]," recibió 30 puntos"
												u <- 3 //fin del turno
											FinSi
										FinSi
										Para z<-1 Hasta 5 Con Paso 1 Hacer
											VD_backup[z]<-0
										Fin Para
										cantDados <- 5
										boolean2 <- Falso
									SiNo
										// POKER 
										Si VD[1] = VD[2] & VD[2] = VD[3] & VD[3] = VD[4] & VD[3] <> VD[5] | VD[5] = VD[1] & VD[1] = VD[2] & VD[2] = VD[3] & VD[3] <> VD[4] | VD[4] = VD[5] & VD[5] = VD[1] & VD[1] = VD[2] & VD[2] <> VD[3] | VD[3] = VD[4] & VD[4] = VD[5] & VD[5] = VD[1] & VD[1] <> VD[2] | VD[2] = VD[3] & VD[3] = VD[4] & VD[4] = VD[5] & VD[5] <> VD[1] Entonces
											Si boolean2 = Falso Entonces
												Escribir "Poker servido"	
												Escribir "jugador ",V_jugadores[t]," recibió 45 puntos"
												u <- 3 //fin del turno
											SiNo
												Si boolean2 = Verdadero Entonces
													Escribir "Poker"	
													Escribir "jugador ",V_jugadores[t]," recibió 40 puntos"
													u <- 3 //fin del turno
												FinSi
											FinSi
											Para z<-1 Hasta 5 Con Paso 1 Hacer
												VD_backup[z]<-0
											Fin Para
											cantDados <- 5
											boolean2 <- Falso
										SiNo
											// GENERALA 
											Si VD[1] = VD[2] & VD[2]=VD[3] & VD[3]=VD[4] & VD[4]=VD[5] & VD[5]=VD[1] Entonces
												Si boolean2 = Falso Entonces
													Escribir "Generala servida"	
													Escribir "jugador ",V_jugadores[t]," recibió 60 puntos"
													u <- 3 //fin del turno
												SiNo
													Si boolean2 = Verdadero Entonces
														Escribir "Generala"	
														Escribir "jugador ",V_jugadores[t]," recibió 50 puntos"
														u <- 3 //fin del turno
													FinSi
												FinSi
												Para z<-1 Hasta 5 Con Paso 1 Hacer
													VD_backup[z]<-0
												Fin Para
												cantDados <- 5
												boolean2 <- Falso
											SiNo
												//ALMACENAR DADOS
												Si u <> 3 Entonces
													Escribir ""
													Escribir "ingrese la cantidad de dados que desea almacenar"
													Escribir "antes de su proximo lanzamiento"
													Escribir "ingresar -1 para seguir teniendo los mismos dados almacenados"
													Escribir "max (0,1,2,3,4)"
													Leer cantDados
													Si cantDados <> 0 Entonces
														boolean2 <- Verdadero
														Para i<-1 Hasta cantDados Con Paso 1 Hacer
															Escribir "ingrese el numero del ",i,"° dado que desea almacenar"
															Escribir "(1,2,3,4,5)"
															Leer numDado
															VD_backup[numDado]<-VD[numDado]
														Fin Para
														cantDados <- 5
													SiNo
														Si cantDados = 0 Entonces
															Para z<-1 Hasta 5 Con Paso 1 Hacer
																VD_backup[z]<-0
															Fin Para
															cantDados <- 5
															boolean2 <- Falso
														FinSi
													FinSi
												SiNo
													Para z<-1 Hasta 5 Con Paso 1 Hacer
														VD_backup[z]<-0
													Fin Para
													cantDados <- 5
													boolean2 <- Falso
												FinSi
											FinSi
										FinSi
									FinSi
								FinSi
							FinSi
						Fin Para
					Fin Para
				Hasta Que boolean = Verdadero
			2:
				
			3:
				
		Fin Segun
	Hasta Que eleccion = 3
FinAlgoritmo