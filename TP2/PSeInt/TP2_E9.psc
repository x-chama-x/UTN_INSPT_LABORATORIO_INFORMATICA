Algoritmo TP2_E9
	Definir hs_1,hs_2,hs_total_1,hs_total_2 Como Entero
	Definir min_1,min_2,min_total_1,min_total_2 Como Entero
	Definir seg_1,seg_2,seg_total_1,seg_total_2 Como Entero
	Escribir "ingresar horas,minutos y segundos del 1° instante (mayor)"
	Leer hs_1,min_1,seg_1
	Escribir "ingresar horas,minutos y segundos del 2° instante (menor)"
	Leer hs_2,min_2,seg_2
	hs_total_1 = (hs_1 - hs_2)
	hs_total_2 = hs_total_1 *3600
	min_total_1 = (min_1 - min_2)
	min_total_2 = min_total_1 *60
	seg_total_1 = (seg_1 - seg_2) 
	seg_total_2 = seg_total_1 + min_total_2 + hs_total_2
	Escribir "los segundos que se llevan entre el instante 1 y el instante 2 es:",seg_total_2," segundos"
	Escribir "El intervalo que se llevan entre ambos intantes es: ",hs_total_1,"hs ",min_total_1,"min ",seg_total_1,"seg"
FinAlgoritmo
