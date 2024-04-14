# PROYECTO 1: Algoritmo de Sistema de Costos

## Planteamiento y Requerimientos

Construir un algoritmo en pseudocódigo que simule un sistema para calcular el costo de un producto con base en su precio original y el porcentaje de descuento aplicado. El algoritmo debe cumplir con los siguientes requisitos:

- Leer el precio original del producto.
- Aplicar un descuento al producto si es aplicable (por ejemplo, si el cliente tiene un cupón de descuento).
- Aplicar impuestos al producto (por ejemplo, el IVA u otros impuestos).
- Si el cliente compra más de un artículo, aplicar un descuento por cantidad.
- Calcular el costo de envío basado en el destino y el peso del paquete.
- Calcular el costo final del producto sumando el precio con descuento, impuestos, descuento por cantidad y costo de envío.
- Mostrar el costo final del producto, desglosando los diferentes componentes (descuentos, impuestos, descuento por cantidad y costo de envío).

## Solución explicada paso a paso

	1. Se declaran las variables que se utilizaran en el programa:
- **product**: es una variable entero que sirve para elegir el producto.
- **cant**: entero que sirve para elegir la cantidad del producto.
- **cost_peso**: entero que define el costo por peso.
- **dest**: entero que sirve para elegir el destino.
- **prec_dest**: entero para definir el costo de envio segun el destino elegido.
- **prec_peso**: arreglo unidimensional entero que sirve para definir el valor y el peso según el producto elegido.
- **desct**: real que sirve para definir el valor del descuento si es que se tiene cupón de descuento.
- **desct_cup**: real para calcular el precio del producto con el cupón de decuento.
- **iva**: real para definir el valor del iva.
- **prec_iva**: real para calcular el valor del precio del producto con iva incluido.
- **prec_cant**: real para calcular el valor del producto con el descuento por cantidad.
- **desct_cant**: real que sirve para definir el valor del descuento por cantidad.
- **cost_dest**: real que calcula el costo de envio según el destino que se eliga y el peso del producto.
- **costo_total**: real que calcula el precio final del producto.
- **cup_desct**: cadena que sirve para elegir si se tiene cupón de descuento o no.

```
	Definir product, cant, cost_peso, dest, prec_dest, prec_peso Como Entero
	Definir desct, desct_cup, iva, prec_iva, prec_cant, desct_cant, cost_dest, costo_total Como Real
	Definir cup_desct como Cadena
```

	2. Se define el valor del iva y del costo por peso.

```
	iva <- 1.19
	cost_peso <- 2
```

	3. Se manda un mensaje de bienvenida.

```
	Escribir "Bienvenido"
```

	4. Se le pide al usuario que elija entre el producto 1, 2 o 3.

```
	Escribir "Elija entre el producto 1, 2 o 3"
	Leer product
```

	5. Bucle **Mientras** que manda un mensaje si es que el usuario ingresa otra opción que no sea 1, 2 o 3.

```
	Mientras (product <> 1 y product <> 2 y product <> 3) Hacer
		Escribir "No existe ese producto"
		Leer product
	FinMientras
```

	6. Se define la dimensión del arreglo prec_peso.

```
	Dimension prec_peso[2]
```

	7. Condicional **Si** define los valores de prec_peso dependiendo del producto que se eligió.

```
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
```

	8. Se le pregunta al usuario si tiene cupón de descuento (Si o No).

```
	Escribir "¿Tiene cupón de descuento (Si o No)?"
	Leer cup_desct
```
	9. Bucle **Mientras** que manda un mensaje si es que el usuario elije otra opción que no sea Si o No.

```
	Mientras (cup_desct <> "Si" y cup_desct <> "No") Hacer
		Escribir "Elija entre Si o No"
		Leer cup_desct
	FinMientras
```

	10. Condicional **Si** que define el valor del descuento según la opción elegida.

```
	Si cup_desct = "Si" Entonces
		desct = 0.1
		Escribir "Tiene 10% de descuento"
		SiNo
		desct = 0
	FinSi
```

	11. Se le pide al usuario ingresar la cantidad del producto.

```
	Escribir "Ingrese cantidad"
	Leer cant
```

	12. Condicional **Si** que define el valor del descuento si es que la cantidad es igual o mayor a 2.

```
	Si cant >= 2 Entonces
		desct_cant = 0.05
		Escribir "Tiene 5% de descuento"
	SiNo
		desct_cant = 0
	FinSi
```

	13. Se le pide al usuario que elija entre los destinos 1, 2 o 3.

```
	Escribir "Elija entre destino 1, 2 o 3"
	Leer dest
```

	14. Bucle **Mientras** que manda un mensaje si es que se elije otra destino que no sea 1, 2 o 3.

```
	Mientras (dest <> 1 y dest <> 2 y dest <> 3) Hacer
		Escribir "No existe ese destino"
		Leer dest
	FinMientras
```

	15. Condicional **Si** que define el precio del destino según el destino escogido.

```
	Si dest = 1 Entonces
		prec_dest = 8
	SiNo
		Si dest = 2 Entonces
			prec_dest = 10
		SiNo
			prec_dest = 12
			FinSi
	FinSi
```

	16. Se calcula el precio con el descuento por cupón, precio con iva, precio con el descuento por cantidad, costo de destino mas el peso y finalmente el precio total.

```
	desct_cup = prec_peso[0] - (prec_peso[0] * desct)
	prec_iva = desct_cup * iva
	prec_cant = prec_iva - (prec_iva * desct_cant)
	cost_dest = prec_dest + (cost_peso * prec_peso[1] * cant)
	cost_total = (prec_cant * cant) + cost_dest
```

	17. Se desglosan los distintos precios.

```
	Escribir "El precio original del producto es de: $", prec_peso[0]
	Escribir "El precio con el cupón de descuento es de: $", desct_cup
	Escribir "El precio con el IVA incluido es de: $", prec_iva
	Escribir "El precio con el descuento por cantidad es de: $", prec_cant
	Escribir "El costo por peso y destino es de: $", cost_dest
	Escribir "El precio total de la compra es de: $", cost_total
```

	18. Se manda un mensaje de agradecimiento por la compra.

```
Escribir "Muchas gracias por su compra"
```

La solución en conjunto sería:

```
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
```