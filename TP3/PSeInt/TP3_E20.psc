Algoritmo TP3_E20
	Definir horas Como Real
	Definir salario Como Real
	Escribir "calculo del salario semanal"
	Escribir "ingrese las horas de trabajo"
	Leer horas
	Si horas <= 40 Entonces
		salario = 16*horas
		Escribir "salario semanal:$",salario
	FinSi
	Si horas > 40 Entonces
		salario = 16*40 + (horas - 40)*20
		Escribir "salario semanal:$",salario
	FinSi
FinAlgoritmo 


