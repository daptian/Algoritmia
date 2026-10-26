Algoritmo PromedioNotas
	Definir cantidadNotas, i Como Entero
	Definir nota, suma Como Real
	
	suma = 0
	i = 0
	
	Escribir "*---CALCULAR PROMEDIO---*"
	Escribir "Hola licenciado, cuantas notas vas a ingresa hoy ?"
	Leer cantidadNotas
	
	Mientras i < cantidadNotas Hacer
		Escribir "Ingresa la nota N°", i + 1
		Leer nota
		suma = suma + nota
		i = i + 1
	FinMientras
	
	Escribir "Promedio: " suma / cantidadNotas
FinAlgoritmo
