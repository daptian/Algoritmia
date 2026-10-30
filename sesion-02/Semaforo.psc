Algoritmo Semaforo
	Definir cantidad Como Entero
	Escribir "Ingresa la cantidad de unidades:"
	Leer cantidad
	Si cantidad < 0 Entonces
		Escribir "Error: Cantidad negativa"
	SiNo
		Si cantidad = 0 Entonces
			Escribir "Rojo: Agotado"
		SiNo
			Si cantidad <= 10 Entonces
				Escribir "Amarillo: Debes pedir"
			SiNo
				Escribir "Verde: Todo bien"
			FinSi
		FinSi
	FinSi
FinAlgoritmo
