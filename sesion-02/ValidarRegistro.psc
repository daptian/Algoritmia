Algoritmo VAlidarRegistro
	Definir edad Como Entero
	Escribir "Ingrese su edad: "
	Leer edad
	Escribir "Aceptas terminos y condiciones (S/N)"
	leer respuesta
	respuesta <- Mayusculas(respuesta)
	Si edad > 14 Y respuesta = "S" Entonces
		EScribir "Registro valido"
	SiNo
		Escribir "No es posible registrar"
	FinSi
FinAlgoritmo
