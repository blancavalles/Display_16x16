#-----------------------------------------
# Subrutina hline(addr, n, color)
#--
#--  Dibujar una linea horizontal de n pixeles, del color indicado. Lalinea comienza a partir de la direccion addr
#--
#-- ENTRADA: 
#     a0: direccion de memoria del puerto de salida
#     a1: Color de los pixels
#-- SALIDA: Bitmap display dividida en 3 franjas coloreadas
#--------------------------------------------
	.globl hline
	
	.include "display.s"
	
	.text
	
hline:
	
	#-- Cargamos en t2 la direccion de memoria del puerto de salida
	mv t2, a0
	
	#-- Cargar el color a sacar por los pixels en el registro t3
	mv t3, a1

	#-- Sacar el valor por el puerto, para que se coloreen los pixels
	sw t3, 0(t2)
 	li t0, 0

bucle:
	#-- Incrementar el contador
	addi t0, t0, 1
	addi t2, t2, 4
	sw t3, 0(t2)
	mv t1, a2
	blt t0, t1, bucle
	
	ret


