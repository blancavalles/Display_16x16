	
	.include "servicios.s"
	.include "display.s"

	.data

        # -- Mensajes a imprimir (ESPECIFICACIONES DEL ENUNCIADO)
msg1:	.string "\nEscoge una opción: "
msg2:   .string "\n  1. Dibujar 2 líneas horizontales rojas "
msg3:   .string "\n  2. Pintar la pantalla de azul "
msg4:   .string "\n  3. Pintar la pantalla de verde "
msg5:   .string "\n  4. Dibujar líneas verticales rojas "
msg6:   .string "\n  5. Terminar \n"


	.text
	
bucle:
	
	# -- ESPECIFICACIÓN: Pedir opción de menú al usuario
	la a0, msg1
	li a7, PRINT_STRING
	ecall
	
	la a0, msg2
	li a7, PRINT_STRING
	ecall
	
	
	la a0, msg3
	li a7, PRINT_STRING
	ecall
	
	
	la a0, msg4
	li a7, PRINT_STRING
	ecall
	
	la a0, msg5
	li a7, PRINT_STRING
	ecall
	
	la a0, msg6
	li a7, PRINT_STRING
	ecall
	
	li a7, READ_INT
	ecall

	mv t1, a0
	
	li t0, op1
	beq t1, t0, opcion1
	li t0, op2
	beq t1, t0, opcion2
	li t0, op3
	beq t1, t0, opcion3
	li t0, op4
	beq t1, t0, opcion4
	li t0, op5
	beq t1, t0, terminar
	
opcion1:
	#--- Llamar a la subrutina blackscreen para resetear el bitmap display
	jal blackscreen
	li a0, LEDS
	#-- Guardar LEDS en s0
	mv s0, a0
	
	#----- Color 
	li a0, VALOR
	#-- Guardar N pixels en s1
	mv s1, a0
	
	#----- N pixels
	li a0, MAX1
	#-- Guardar color en a2
	mv a2, a0
	
	#--- Llamar a la subrutina hline(addr, n, color)
	mv a0, s0
	mv a1, s1
	jal hline

	li a0, LEDS2
	#-- Guardar LEDS en s0
	mv s0, a0
	
	#----- Color 
	li a0, VALOR2
	#-- Guardar N pixels en s1
	mv s1, a0
	
	#----- N pixels
	li a0, MAX1
	#-- Guardar color en a2
	mv a2, a0
	
	#--- Llamar a la subrutina hline(addr, n, color)
	mv a0, s0
	mv a1, s1
	jal hline
	
	li a0, LEDS3
	#-- Guardar LEDS en s0
	mv s0, a0
	
	#----- Color 
	li a0, VALOR
	#-- Guardar N pixels en s1
	mv s1, a0
	
	#----- N pixels
	li a0, MAX1
	#-- Guardar color en a2
	mv a2, a0
	
	#--- Llamar a la subrutina hline(addr, n, color)
	mv a0, s0
	mv a1, s1
	jal hline
	
	b bucle

		
opcion2:
	#--- Llamar a la subrutina blackscreen para resetear el bitmap display
	jal blackscreen
	li a0, LEDS
	#-- Guardar LEDS en s0
	mv s0, a0
	
	#----- Color 
	li a0, VALOR3
	
	mv s1, a0
	
	#--- Llamar a la subrutina fill(addr, color)
	mv a0, s0
	mv a1, s1
	jal fill
	b bucle
	
opcion3:
	#--- Llamar a la subrutina blackscreen para resetear el bitmap display
	jal blackscreen
	li a0, LEDS
	#-- Guardar LEDS en s0
	mv s0, a0
	
	#----- Color 
	li a0, VALOR4

	mv s1, a0
	
	#--- Llamar a la subrutina fill(addr, color)
	mv a0, s0
	mv a1, s1
	jal fill
	b bucle
	
opcion4:
	#--- Llamar a la subrutina blackscreen para resetear el bitmap display
	jal blackscreen
	
	li a0, LEDS
	#-- Guardar LEDS en s0
	mv s0, a0
	
	#----- Color 
	li a0, VALOR
	#-- Guardar N pixels en s1
	mv s1, a0
	
	#----- N pixels
	li a0, MAX3
	#-- Guardar color en a2
	mv a2, a0
	
	#--- Llamar a la subrutina vline(addr, n, color)
	mv a0, s0
	mv a1, s1
	jal vline
	b bucle
	
terminar:
	#--- Llamar a la subrutina blackscreen para resetear el bitmap display
	jal blackscreen
	li a7, EXIT
	ecall
	
