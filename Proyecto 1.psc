Algoritmo Algoritmo_de_sistema_de_costos
	Definir product, cant, cost_peso, dest, prec_dest, prec_peso Como Entero
	Definir desct, desct_cup, iva, prec_iva, prec_cant, desct_cant, cost_dest, costo_total Como Real
	Definir cup_desct como Cadena
	
	iva <- 1.19
	cost_peso <- 2
	
	Escribir "Bienvenido"
	
	Escribir "Elija entre el producto 1, 2 o 3"
	Leer product
	Mientras (product <> 1 y product <> 2 y product <> 3) Hacer
		Escribir "No existe ese producto"
		Leer product
	FinMientras
	Dimension prec_peso[2]
	Si product = 1 Entonces
		prec_peso[0] = 80
		prec_peso[1] = 3
	SiNo
		Si product = 2 Entonces
			prec_peso[0] = 100
			prec_peso[1] = 5
		SiNo
			prec_peso[0] = 120
			prec_peso[1] = 4
			FinSi
	FinSi
	
	Escribir "¿Tiene cupón de descuento (Si o No)?"
	Leer cup_desct
	Mientras (cup_desct <> "Si" y cup_desct <> "No") Hacer
		Escribir "Elija entre Si o No"
		Leer cup_desct
	FinMientras
	Si cup_desct = "Si" Entonces
		desct = 0.1
		Escribir "Tiene 10% de descuento"
		SiNo
		desct = 0
	FinSi	
	
	Escribir "Ingrese cantidad"
	Leer cant
	Si cant >= 2 Entonces
		desct_cant = 0.05
		Escribir "Tiene 5% de descuento"
	SiNo
		desct_cant = 0
	FinSi
	
	Escribir "Elija entre destino 1, 2 o 3"
	Leer dest
	Mientras (dest <> 1 y dest <> 2 y dest <> 3) Hacer
		Escribir "No existe ese destino"
		Leer dest
	FinMientras
	Si dest = 1 Entonces
		prec_dest = 8
	SiNo
		Si dest = 2 Entonces
			prec_dest = 10
		SiNo
			prec_dest = 12
			FinSi
	FinSi
	
	desct_cup = prec_peso[0] - (prec_peso[0] * desct)
	prec_iva = desct_cup * iva
	prec_cant = prec_iva - (prec_iva * desct_cant)
	cost_dest = prec_dest + (cost_peso * prec_peso[1] * cant)
	cost_total = (prec_cant * cant) + cost_dest
	
	Escribir "El precio original del producto es de: $", prec_peso[0]
	Escribir "El precio con el cupón de descuento es de: $", desct_cup
	Escribir "El precio con el IVA incluido es de: $", prec_iva
	Escribir "El precio con el descuento por cantidad es de: $", prec_cant
	Escribir "El costo por peso y destino es de: $", cost_dest
	Escribir "El precio total de la compra es de: $", cost_total
	
	Escribir "Muchas gracias por su compra"
	
	
	
FinAlgoritmo
