	.globl blackscreen

	.include "display.s"
	
	.text
blackscreen:	
	#-- Cargamos en t2 la direccion de memoria del puerto de salida
	li t2, LEDS
	
	#-- Cargar el color a sacar por los LEDs en el registro s0
	li t3, VALOR2

	#-- Sacar el valor por el puerto, para que se iluminen los LEDs
	sw t3, 0(t2)
 	li t0, 0
bucle:
	#-- Incrementar el contador
	addi t0, t0, 1
	addi t2, t2, 4
	sw t3, 0(t2)
	li t1, MAX2
	blt t0, t1, bucle
	
	ret