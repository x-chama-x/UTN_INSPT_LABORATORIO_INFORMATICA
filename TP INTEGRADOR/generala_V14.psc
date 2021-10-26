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
				Borrar Pantalla
				Escribir "La generala es un juego de dados. Se juega con cinco dados y un cubilete;"
				Escribir"el número de jugadores es ilimitado, pero lo ideal es de 3 a 5."
				Escribir"El objetivo del juego es lograr la mayor puntuación, de acuerdo" 
				Escribir"a la valoración establecida para cada jugada posible en el juego, "
				Escribir"llamada categoría."
				Escribir ""
				Escribir "pulse cualquier tecla para continuar leyendo"
				Esperar Tecla
				Borrar Pantalla
				Escribir "Inicio del juego <-----------"
				Escribir "Cada jugador tira un dado,"
				Escribir "y el que obtenga el número más alto será el que comience."
				
				Escribir "Lanzamientos <-----------"
				Escribir "Existen 10 posibles categorías,"
				Escribir "por lo que cada jugador tendrá 11 tiros posibles en el juego."
				Escribir "Cada tirada consiste en el lanzamiento de los cinco dados."
				
				
				
				Escribir "Primera tirada: dependiendo de los números que salgan, "
				Escribir "se podrá optar a una categoría; si no se logra alcanzar"
				Escribir "una categoría satisfactoria en el primer lanzamiento "
				Escribir "se pueden apartar los dados útiles y tomar los demás y tirarlos de nuevo. "
				Escribir "Si en un solo tiro se logró una categoría, a esto se lo llama «tiro servido» "
				Escribir "(sólo se aplicará para los juegos mayores; ver más adelante)."
				Escribir "Segunda tirada: en esta segunda tirada se pueden apartar otra vez los más convenientes"
				Escribir " y juntarlos con los que ya tenía apartados, y luego se tirará el resto por tercera "
				Escribir "y última vez, con lo que termina la tirada. "
				Escribir "Tercera tirada: La última que puede hacer el jugador y "
				Escribir "con la que definirá la categoría a completar."
				Escribir ""
				Escribir "pulse cualquier tecla para continuar leyendo"
				Esperar Tecla
				Borrar Pantalla
				
				Escribir "Categorías <----------- "
				Escribir "Para calcular el puntaje correspondiente a una categoría de números del 1 al 6, "
				Escribir "se deben sumar los números iguales. Por ejemplo, si un jugador, "
				Escribir "tirara tres dados con el número 6, se sumará, 6+6+6=18, este resultado se anotará "
				Escribir "en la casilla correspondiente al número 6. Si son tres 1 se debe anotar 3 al 1, "
				Escribir "si hay dos 6 se debe anotar 12 al 6."
				Escribir " 1: se coloca el número que dé la suma de 1 obtenidos. "
				Escribir " 2: se coloca el número que dé la suma de 2 obtenidos. "
				Escribir " 3: se coloca el número que dé la suma de 3 obtenidos. "
				Escribir " 4: se coloca el número que dé la suma de 4 obtenidos. "
				Escribir " 5: se coloca el número que dé la suma de 5 obtenidos. "
				Escribir " 6: se coloca el número que dé la suma de 6 obtenidos. "
				Escribir " Escalera: 25 puntos si es servida, 20 si fue armada. "
				Escribir " Se forma con una progresión de números. Hay tres posibilidades: 1-2-3-4-5 "
				Escribir " (escalera menor), 2-3-4-5-6 (escalera mayor) o 3-4-5-6-1 "
				Escribir "	Full: 35 puntos si es servido o 30 puntos si es armado. Se forma con dos grupos de dados iguales, "
				Escribir " uno de tres y otro de dos dados. "
				Escribir "	Póker: 45 puntos si es servido o 40 puntos si es armado. Se forma con cuatro dados iguales. "
				Escribir "	Generala: 50 puntos si se logra formar cinco números iguales en dos o tres tiros. "
				Escribir "	Generala Doble: 100 puntos si se logra formar una generala en el primer tiro "
				Escribir "	Generala Servida: Vale 60 puntos. Cuando se logra la Generala de un solo tiro, "
				Escribir  " se llama generala servida y en cualquier tiro podrán decir 1 o 2 o 3 o 4 o 5 de abajo y a lo "
				Escribir " último alguien tiene que sumar los puntos de cada jugador y el que tenga más puntos gana. " 
				Escribir ""
				Escribir "presione cualquier tecla para volver al menu principal"
				Esperar Tecla
				Borrar Pantalla
			3:
				Escribir "finalizando programa..."
		Fin Segun
	Hasta Que eleccion = 3
FinAlgoritmo