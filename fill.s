	
#-----------------------------------------------------
#-- Subrutina box(car, anch, alt)
#--
#-- Imprimir un rectangulo de caracteres car,
#-- de anchura anch y altura alt
#--
#-- ENTRADAS:
#--  a0: Caracter a usar para dibujar el rectangulo
#--  a1: Anchura del rectangulo
#--  a2: Altura del rectangulo
#-- SALIDAS: Ninguna
#----------------------------------------------------

	#-- Punto de entrada
	.globl fill

	.include "display.s"
	
	.text
	
fill:

	#--- Crear pila
	addi sp, sp, -16
	
	#-- Guardar direccion de retorno
	sw ra, 12(sp)
	
	#-- Imprimir una linea
	li a2, MAX2
	jal hline

	#-- Recuperar direccion de retorno
	lw ra, 12(sp)
	addi sp, sp, 16
	ret