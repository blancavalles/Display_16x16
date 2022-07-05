	#--- Direccion donde está mapeado el Puerto de salida
	.eqv LEDS 0xFFFF0000 	#-- addr1: 1ª Dirección de memoria de la primera franja roja
	.eqv LEDS2 0xFFFF0080 	#-- addr2: 1ª Dirección de memoria de la primera franja negra separadora
	.eqv LEDS3 0xFFFF0100 	#-- addr3: 1ª Dirección de memoria de la segunda franja roja 
	
	#-- Colores
	.eqv VALOR 0xFFFF0010 	#-- rojo
	.eqv VALOR2 0x00000000 	#-- negro
	.eqv VALOR3 0x0000FF	#-- azul
	.eqv VALOR4 0x00FF00 	#-- verde
	
	#-- Valores máximos del contador
	.eqv MAX1 31
	.eqv MAX2 256 #-- Pantalla completa 16x16=256
	.eqv MAX3 127 #-- Líneas verticales
	
	#-- Opciones menú
	.eqv op1 1
	.eqv op2 2
	.eqv op3 3
	.eqv op4 4
	.eqv op5 5