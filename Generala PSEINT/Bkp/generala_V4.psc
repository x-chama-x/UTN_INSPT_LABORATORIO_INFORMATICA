Funcion puntaje_generala <- generala ( d1,d2,d3,d4,d5 )
	Si d1=d2&d2=d3&d3=d4&d4=d5&d5=d1 Entonces
		puntaje_generala <- 50
	FinSi
Fin Funcion


Funcion puntaje_poker <- poker ( d1,d2,d3,d4,d5 )
	Si d1=d2&d2=d3&d3=d4&d3<>d5|d5=d1&d1=d2&d2=d3&d3<>d4|d4=d5&d5=d1&d1=d2&d2<>d3|d3=d4&d4=d5&d5=d6&d1<>d2|d2=d3&d3=d4&d4=d5&d5<>d1 Entonces
		puntaje_poker<-45
	FinSi
Fin Funcion

Funcion puntaje_full <- full ( d1,d2,d3,d4,d5 )
	Si d1=d2&d2=d3&d4=d5&d4<>d1|d5=d1&d1=d2&d3=d4&d4<>d1|d4=d5&d5=d1&d2=d3&d2<>d1|d3=d4&d4=d5&d1=d2&d2<>d3|d2=d3&d3=d4&d5=d1&d1<>d2|d2=d3&d3=d5&d4=d1&d1<>d2|d1=d3&d3=d5&d2=d4&d2<>d3|d1=d2&d2=d4&d5=d3&d3<>d2|d1=d3&d3=d4&d2=d5&d3<>d2|d2=d4&d4=d5&d1=d3&d3 <> d2 Entonces
		puntaje_full<-35
	FinSi
Fin Funcion

Funcion puntaje_esc <- escalera (d1,d2,d3,d4,d5)
	Si d1<>d2&d1<>d3&d1<>d4&d1<>d5&d2<>d3&d2<>d4&d2<>d5&d3<>d1&d3<>d4&d3<>d5&d4<>d1&d4<>d2&d4<>d5&d5<>d1&d5<>d2&d5<>d3 Entonces
		Si ((d1=1|d2=1|d3=1|d4=1|d5=1)&(d1<>6&d2<>6&d3<>6&d4<>6&d5<>6))|((d1<>1&d2<>1&d3<>1&d4<>1&d5<>1)&(d1=6|d2=6|d3=6|d4=6|d5=6)) Entonces
			puntaje_esc<-25
		SiNo
			Si d1+d2+d3+d4+d5 = 19 Entonces
				puntaje_esc<-25
			FinSi
		FinSi
	FinSi
Fin Funcion

Funcion categorias ( puntaje )
	Segun puntaje Hacer
		25:
			Escribir "escalera servida"
			Escribir "puntaje: ",puntaje
		35:
			Escribir "full servido"
			Escribir "puntaje: ",puntaje
		45:
			Escribir "poker servido"
			Escribir "puntaje: ",puntaje
		50:
			Escribir "generala"
			Escribir "puntaje: ",puntaje
		100:
			Escribir "generala doble"
			Escribir "puntaje: ",puntaje
	Fin Segun
Fin Funcion

Funcion puntaje <- lanzar_dados ( puntaje,nombre ) //lanzamiento
	Dimension dado[5] //vector_dados
	Definir tiro Como Caracter
	Definir bool Como Logico
	Definir d1,d2,d3,d4,d5 Como Entero //dados lanzados
	bool <- Falso
	Para j<-1 Hasta 3 Con Paso 1 Hacer
		Repetir
			Escribir j,"° turno del jugador ",nombre
			Escribir "lance los dados (ingrese d o D)"
			Leer tiro
			Si tiro = 'd' o tiro = 'D' Entonces // Lanzamiento de dados
				Para i<-1 Hasta 5 Con Paso 1 Hacer
					dado[i]<-Aleatorio(1,6)
				Fin Para
				Escribir "numero de dado: 1 2 3 4 5"
				Escribir Sin Saltar j,"°","lanzamiento: "
				Para i<-1 Hasta 5 Con Paso 1 Hacer // Mostrar dados
					Escribir Sin Saltar " " dado[i]
				Fin Para
				Escribir ""
				bool <- Falso
			SiNo
				Borrar Pantalla
				Escribir "opcion no valida"
				Esperar 1 Segundos
				Borrar Pantalla
				bool <- Verdadero
			FinSi
			d1<-dado[1] // dado1
			d2<-dado[2] // dado2
			d3<-dado[3] // dado3
			d4<-dado[4] // dado4
			d5<-dado[5] // dado5
			puntaje <- escalera (d1,d2,d3,d4,d5)
			categorias(puntaje)
			puntaje <- full(d1,d2,d3,d4,d5)
			categorias(puntaje)
			puntaje <- poker(d1,d2,d3,d4,d5)
			categorias(puntaje)
			puntaje <- generala(d1,d2,d3,d4,d5)
			categorias(puntaje)
		Hasta Que bool = Falso
	Fin Para
Fin Funcion

Funcion nombre <- llamar_jugador (x) // llamar jugador
	Escribir "ingresar nombre del jugador"
	Leer nombre
	Borrar Pantalla
Fin Funcion

Funcion eleccion <- menu (x)  //menu principal
	Escribir "Generala"
	Escribir "reglas (ingrese 1)"
	Escribir "iniciar juego (ingrese 2)"
	Escribir "salir (ingrese 3)"
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
