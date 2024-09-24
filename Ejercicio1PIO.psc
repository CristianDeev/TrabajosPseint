Proceso AgenciaDeViajes
	Definir destino Como Entero
	Definir dias, costoTotal, costoPorDia, descuento, totalFinal Como Real
	Definir continuar Como Caracter
	
	continuar <- "si"
	
	Mientras continuar = "si" Hacer
		Escribir "Bienvenido a la Agencia de Viajes PIO"
		Escribir "Seleccione su destino:"
		Escribir "-----------------------"
		Escribir "1. Playa ($500.000 por día)"
		Escribir "2. Montaña ($400.000 por día)"
		Escribir "3. Ciudad ($300.000 por día)"
		Leer destino
		
		Segun destino Hacer
			1: 
				costoPorDia <- 500000
				Escribir "Has seleccionado Playa."
			2: 
				costoPorDia <- 400000
				Escribir "Has seleccionado Montaña."
			3: 
				costoPorDia <- 300000
				Escribir "Has seleccionado Ciudad."
			De Otro Modo:
				Escribir "Destino inválido. Inténtalo de nuevo."
				continuar <- "no" 
		FinSegun
		
		Si continuar = "si" Entonces
			Escribir "¿Cuántos días deseas quedarte?"
			Leer dias
			
			costoTotal <- costoPorDia * dias
			
			Si dias >= 7 Entonces
				descuento <- costoTotal * 0.15
			Sino
				Si dias >= 3 Entonces
					descuento <- costoTotal * 0.10
				SiNo
					descuento <- 0
				FinSi
			FinSi
			
			totalFinal <- costoTotal - descuento
			
			Escribir "El costo total sin descuento es: $", costoTotal
			Escribir "El descuento aplicado es: $", descuento
			Escribir "El costo total final es: $", totalFinal
			
			Escribir "¿Desea realizar otra reserva? (si/no)"
			Leer continuar
		FinSi
	FinMientras
	
	Escribir "Gracias por usar Nuestra Agencia de Viajes PIO"
FinProceso
