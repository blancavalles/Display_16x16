#-----------------------------------------
# Subrutina hline(addr, color)
#--
#--  Colorear la pantalla completa de un color determinado
#--
#-- ENTRADA: 
#     a0: direccion de memoria del puerto de salida
#     a1: Color de los pixels
#-- SALIDA: Impresión de pantalla coloreada
#--------------------------------------------

	.globl fill

	.include "display.s"
	
	.text
	
fill:

	#--- Crear pila
	addi sp, sp, -16
	
	#-- Guardar direccion de retorno
	sw ra, 12(sp)
	li a2, MAX2
	jal hline

	#-- Recuperar direccion de retorno
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
