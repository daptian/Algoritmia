
Algoritmo FacturaRestaurante
	
    Definir subtotal, impuesto, propina Como Real
	
    subtotal <- LeerPedido(n)
	
    impuesto <- CalcularPorcentaje(subtotal, 8)
	
    propina <- CalcularPorcentaje(subtotal, 10)
	
    ImprimirFactura(subtotal, impuesto, propina)
	
FinAlgoritmo

SubProceso subtotal <- LeerPedido(n)
	
    Definir subtotal Como Real
	
    Escribir "Ingrese el subtotal del pedido:"
    Leer subtotal
	
FinSubProceso

SubProceso valor <- CalcularPorcentaje(base, porcentaje)
	
    Definir valor Como Real
	
    valor <- base * porcentaje / 100
	
FinSubProceso

SubProceso ImprimirFactura(subtotal, impuesto, propina)
	
    Definir total Como Real
	
    total <- subtotal + impuesto + propina
	
    Escribir "Subtotal: $", subtotal
    Escribir "Impuesto (8%): $", impuesto
    Escribir "Propina (10%): $", propina
    Escribir "Total: $", total
	
FinSubProceso
