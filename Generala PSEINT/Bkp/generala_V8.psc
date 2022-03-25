Funcion puntaje_max <- valores_dados ( d1,d2,d3,d4,d5 ) // determina el puntaje maximo sin hacer ninguna categoria
	Dimension d[5] //vector dados
	Dimension cont[6] //vector contador
	puntaje_max <- 0
	d[1]<-d1
	d[2]<-d2
	d[3]<-d3
	d[4]<-d4
	d[5]<-d5
	Para i<-1 Hasta 5 Con Paso 1 Hacer
		Segun d[i] Hacer
			1:
				cont[1] <- cont[1]+1
			2:
				cont[2] <- cont[2]+2
			3:
				cont[3] <- cont[3]+3
			4:
				cont[4] <- cont[4]+4
			5:
				cont[5] <- cont[5]+5
			6:
				cont[6] <- cont[6]+6
		Fin Segun
	Fin Para
	Escribir "todo al 1:",cont[1]
	Escribir "todo al 2:",cont[2]
	Escribir "todo al 3:",cont[3]
	Escribir "todo al 4:",cont[4]
	Escribir "todo al 5:",cont[5]
	Escribir "todo al 6:",cont[6]
	Para j<-1 Hasta 6 Con Paso 1 Hacer
		Si cont[j]>puntaje_max Entonces
			puntaje_max<-cont[j]
		FinSi
	Fin Para
Fin Funcion

Funcion puntaje_generala <- generala ( d1,d2,d3,d4,d5,puntaje ) // determina si se logró hacer generala
	Si d1=d2&d2=d3&d3=d4&d4=d5&d5=d1 Entonces
		puntaje_generala <- 50
	FinSi
	Si puntaje_generala = 0 Entonces
		puntaje_generala <- puntaje
	FinSi
Fin Funcion


Funcion puntaje_poker <- poker ( d1,d2,d3,d4,d5,puntaje ) // determina si se logró hacer poker
	Si d1=d2&d2=d3&d3=d4&d3<>d5|d5=d1&d1=d2&d2=d3&d3<>d4|d4=d5&d5=d1&d1=d2&d2<>d3|d3=d4&d4=d5&d5=d6&d1<>d2|d2=d3&d3=d4&d4=d5&d5<>d1 Entonces
		puntaje_poker<-40
	FinSi
	si puntaje_poker = 0 Entonces
		puntaje_poker<-puntaje
	FinSi
Fin Funcion

Funcion puntaje_full <- full ( d1,d2,d3,d4,d5,puntaje ) // determina si se logró hacer full
	Si d1=d2&d2=d3&d4=d5&d4<>d1|d5=d1&d1=d2&d3=d4&d4<>d1|d4=d5&d5=d1&d2=d3&d2<>d1|d3=d4&d4=d5&d1=d2&d2<>d3|d2=d3&d3=d4&d5=d1&d1<>d2|d2=d3&d3=d5&d4=d1&d1<>d2|d1=d3&d3=d5&d2=d4&d2<>d3|d1=d2&d2=d4&d5=d3&d3<>d2|d1=d3&d3=d4&d2=d5&d3<>d2|d2=d4&d4=d5&d1=d3&d3 <> d2 Entonces
		puntaje_full<-30
	FinSi
	Si puntaje_full = 0 Entonces
		puntaje_full <- puntaje
	FinSi
Fin Funcion

Funcion puntaje_esc <- escalera (d1,d2,d3,d4,d5,puntaje) // determina si se logró hacer escalera
	Si d1<>d2&d1<>d3&d1<>d4&d1<>d5&d2<>d3&d2<>d4&d2<>d5&d3<>d1&d3<>d4&d3<>d5&d4<>d1&d4<>d2&d4<>d5&d5<>d1&d5<>d2&d5<>d3 Entonces
		Si ((d1=1|d2=1|d3=1|d4=1|d5=1)&(d1<>6&d2<>6&d3<>6&d4<>6&d5<>6))|((d1<>1&d2<>1&d3<>1&d4<>1&d5<>1)&(d1=6|d2=6|d3=6|d4=6|d5=6)) Entonces
			puntaje_esc<-20
		SiNo
			Si d1+d2+d3+d4+d5 = 19 Entonces
				puntaje_esc<-20
			FinSi
		FinSi
	FinSi
	Si puntaje_esc = 0 Entonces
		puntaje_esc <- puntaje
	FinSi
Fin Funcion

Funcion categorias ( puntaje ) // puntaje de las categorías del juego
	Segun puntaje Hacer
		20:
			Escribir "escalera: ",puntaje
		30:
			Escribir "full: ",puntaje
		40:
			Escribir "poker: ",puntaje
		50:
			Escribir "generala: ",puntaje
	Fin Segun
Fin Funcion

Funcion puntaje <- lanzar_dados ( puntaje,nombre ) //lanzamiento y puntaje definitivo
	Definir tiro Como Caracter
	Definir bool Como Logico
	Definir d1,d2,d3,d4,d5 Como Entero //dados lanzados
	bool <- Falso
		Repetir
			Si nombre = 'PC' Entonces //Lanzamiento de dados PC
				Escribir "turno del ",nombre
				d1<-Aleatorio(1,6)
				d2<-Aleatorio(1,6)
				d3<-Aleatorio(1,6)
				d4<-Aleatorio(1,6)
				d5<-Aleatorio(1,6)
				Escribir "tirada del ",nombre,": ",d1," ",d2," ",d3," ",d4," ",d5
			FinSi
			Si nombre <> 'PC' Entonces //turno JUGADOR
				Escribir "turno del jugador ",nombre
				Escribir "lance los dados (ingrese d o D)"
				Leer tiro
			FinSi
			Si (tiro = 'd' o tiro = 'D') & nombre <> 'PC'  Entonces // Lanzamiento de dados JUGADOR
					d1<-Aleatorio(1,6)
					d2<-Aleatorio(1,6)
					d3<-Aleatorio(1,6)
					d4<-Aleatorio(1,6)
					d5<-Aleatorio(1,6)
					Escribir "tirada del Jugador ",nombre,": ",d1," ",d2," ",d3," ",d4," ",d5
				bool <- Falso
			SiNo
				Si nombre <> 'PC' Entonces
					Borrar Pantalla
					Escribir "opcion no valida"
					Esperar 1 Segundos
					Borrar Pantalla
					bool <- Verdadero
				FinSi
			FinSi
			puntaje_max <- valores_dados ( d1,d2,d3,d4,d5)
			puntaje <- escalera (d1,d2,d3,d4,d5,puntaje)
			puntaje <- full(d1,d2,d3,d4,d5,puntaje)
			puntaje <- poker(d1,d2,d3,d4,d5,puntaje)
			puntaje <- generala(d1,d2,d3,d4,d5,puntaje)
			categorias(puntaje)
			Si puntaje = 0 Entonces // si es 0 es porque no se hizo ninguna categoría
				Escribir "puntuacion maxima: ",puntaje_max
				puntaje<-puntaje_max // variable que sale de la función
			SiNo // si <> 0 es porque se hizo una categoría
				Escribir "puntuacion maxima: ",puntaje
			FinSi
		Hasta Que bool = Falso
Fin Funcion

Funcion nombre <- llamar_jugador (x) // llamar jugador
	Escribir "ingresar nombre del jugador"
	Repetir
		Leer nombre
		Si nombre = 'PC' Entonces
			Escribir "nombre ingresado reservado"
			Escribir "vuelva a ingresar otro nombre"
		FinSi
	Hasta Que nombre <> 'PC'
	Borrar Pantalla
Fin Funcion

Funcion eleccion <- menu (x)  //menu principal
	Escribir "Generala"
	Escribir "iniciar juego (ingrese 1)"
	Escribir "salir (ingrese 2)"
	Leer eleccion
Fin Funcion

Algoritmo generala_game // entrar en las distintas opciones del programa
	Definir bool Como Logico
	bool<-Falso
	Repetir
		opEleg<-menu(x); //opEleg -> opcion elegida
		Segun opEleg Hacer
			1:
				Borrar Pantalla
				bool<-Falso
				nombre<-llamar_jugador(x);
				nombreBKP<-nombre // nombre jugador
				puntajeJugador<-lanzar_dados ( puntaje,nombre )
				nombre<-'PC'
				puntaje<-0
				puntajePC<-lanzar_dados ( puntaje,nombre )
			
				Si puntajeJugador > puntajePC Entonces
					Escribir "ganador: ",nombreBKP
				SiNo
					Si puntajeJugador = puntajePC Entonces
						Escribir "empate"
					SiNo
						Escribir "ganador: ",nombre
					FinSi
				FinSi
				
			2:
				Borrar Pantalla
				Escribir "saliendo..."
				Esperar 1 Segundos
				bool<-Falso
			De Otro Modo:
				Borrar Pantalla
				Escribir "opcion no valida"
				Escribir "vuelva a tipear una opcion valida"
				Esperar 2 Segundos
				Borrar Pantalla
				bool<-Verdadero
		Fin Segun
	Hasta Que bool = Falso
FinAlgoritmo
