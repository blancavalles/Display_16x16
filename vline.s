
	.globl vline
	
	.include "display.s"
	
	.text
	
vline:
	
	#-- Cargamos en t2 la direccion de memoria del puerto de salida
	mv t2, a0
	
	#-- Cargar el color a sacar por los LEDs en el registro s0
	mv t3, a1

	#-- Sacar el valor por el puerto, para que se iluminen los LEDs
	sw t3, 0(t2)
 	li t0, 0

bucle:
	#-- Incrementar el contador
	addi t0, t0, 1
	addi t2, t2, 8
	sw t3, 0(t2)
	mv t1, a2
	blt t0, t1, bucle
	
	ret
