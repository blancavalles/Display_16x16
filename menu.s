	# -- Constantes (ESPECIFICACIONES DEL ENUNCIADO)
	.eqv EXIT         10	
	.eqv PRINT_INT    1
	.eqv PRINT_STRING 4
	.eqv READ_INT     5
	.eqv op1	1

	.data

        # -- Mensajes a imprimir (ESPECIFICACIONES DEL ENUNCIADO)
msg1:	.string "\nEscoge una opción: "
msg2:   .string "\nDibujar 2 líneas horizontales rojas "
msg3:   .string "\nPintar la pantalla de azul "
msg4:   .string "\nPintar la pantalla de verde "
msg5:   .string "\nTerminar "
num:    .word 0

	.text
	
bucle:
	# -- ESPECIFICACIÓN: Pedir cadena al usuario
	la a0, msg1
	li a7, PRINT_STRING
	ecall
	
	
	
	la a0, msg2
	li a7, PRINT_STRING
	ecall
	li a7, READ_INT
	ecall
	# -- ESPECIFICACIÓN: Si el numero es 1, opcion1
	beq a0, op1, opcion1
	
	
	la a0, msg3
	li a7, PRINT_STRING
	ecall
	li a7, READ_INT
	ecall
	# -- ESPECIFICACIÓN: Si el numero es 2, opcion2
	beq a0, 2, opcion2
	
	
	
	la a0, msg4
	li a7, PRINT_STRING
	ecall
	li a7, READ_INT
	ecall
	# -- ESPECIFICACIÓN: Si el numero es 3, opcion3
	beq a0, 3, opcion3
	
	la a0, msg5
	li a7, PRINT_STRING
	ecall
	li a7, READ_INT
	ecall
	# -- ESPECIFICACIÓN: Si el numero es 4, terminar
	beq a0, 4, fin
	
	
	
	
	

	# -- Guardar resultado en t0
	# -- mv t0, a0

	
	#-- ESPECIFICACIÓN: Imprimirlo en binario
	#--mv a0, t0
	#--jal printbin

	# ESPECIFICACIÓN: Debe estar en un bucle
	# Repetir el bucle

	b bucle

opcion1:
	jal redlines
	
opcion2:
	jal bluescreen

opcion3:
	jal greenscreen
	
fin:
	#-- Terminar
	li a7, EXIT
	ecall