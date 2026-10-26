Algoritmo Propinas
	Definir cuenta Como Real
	Definir personas, propina Como Entero
	
	Escribir "Dale brother, Ingresa el valor, yo te ayudo a dividir la cuenta"
	Leer cuenta
	
	Escribir "Y cuantas personas eran ?"
	Leer personas
	
	Escribir "De cuanto % sobre la cuenta era la propina ? "
	leer propina
	
	propina = cuenta * (propina / 100)
	total = cuenta + propina
	
	Escribir "Bueno hermano, la cosa esta asi: "
	Escribir "Valor total de la propina: " , propina
	Escribir "El valor de la cuenta + propina:  ", total
	Escribir "y cada uno paga: " total / personas
FinAlgoritmo
