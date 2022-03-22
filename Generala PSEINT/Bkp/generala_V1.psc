Funcion puntaje <- lanzar_dados ( puntaje,nombre ) //lanzamiento
	Dimension dado[5] 
	Definir tiro Como Caracter
	Definir bool Como Logico
	bool <- Falso
	Repetir
		Escribir "turno del jugador ",nombre
		Escribir "lance los dados (ingrese d o D)"
		Leer tiro
		Si tiro = 'd' o tiro = 'D' Entonces
			Para i<-1 Hasta 5 Con Paso 1 Hacer
				dado[i]<-Aleatorio(1,6)
			Fin Para
			Para i<-1 Hasta 5 Con Paso 1 Hacer
				Escribir dado[i]
			Fin Para
			bool <- Falso
		SiNo
			Borrar Pantalla
			Escribir "opcion no valida"
			Esperar 1 Segundos
			Borrar Pantalla
			bool <- Verdadero
		FinSi
	Hasta Que bool = Falso
	
Fin Funcion

Funcion mote <- llamar_jugador (x) // llamar jugador
	Escribir "ingresar nombre del jugador"
	Leer mote
	Borrar Pantalla
Fin Funcion

Funcion eleccion <- menu (x)  //menu principal
	Escribir "Generala"
	Escribir "reglas (ingrese 1)"
	Escribir "iniciar juego (ingrese 2)"
	Escribir "salir (ingrese 3)"
	Leer eleccion
Fin Funcion


Algoritmo generala // entrar en las distintas opciones del programa
	Definir bool Como Logico
	bool<-Falso
	Repetir
		opEleg<-menu(x); //opEleg -> opcion elegida
		Segun opEleg Hacer
			1:
				Borrar Pantalla
				Escribir "entro en reglas"
				bool<-Falso
			2:
				Borrar Pantalla
				bool<-Falso
				nombre<-llamar_jugador(x);
				turno1<-lanzar_dados ( puntaje,nombre )
			3:
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
