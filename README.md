# Display_16x16
Display 16x16: Líneas, fondos y patrones

# Nombre
Blanca Vallés González

# Asignatura
Arquitectura de computadores

# Grado
Ingeniería en tecnologías de la telecomunciación

# Descripción
Este progrma está compuesto por los 7 ficheros siguientes:

- main.s: Este fichero nos proporciona un menú desde el que el usuario eligirá una de las 5 opciones posibles:
    1. Dibujar 2 líneas horizontales rojas 
    2. Pintar la pantalla de azul 
    3. Pintar la pantalla de verde 
    4. Dibujar líneas verticales rojas 
    5. Terminar
- hline.s: Dibujar una linea horizontal de n pixeles, del color indicado. Lalinea comienza a partir de la direccion addr.
- fill.s: Pintar la pantalla completa con el color indicado. Addr es la direcciónbase del pixel situado en la esquina superior izquierda. 
  Esta función DEBERÁ pintar la pantallalínea a línea, llamando a la función hline().
- vline.s: Función para dibujar líneas verticales.
- blackscreen.s: Este fichero será el encargado de resetear mi bitmap display antes de cambiar de tarea, lo que hace es dibujar de nuevo todos los pixels de su pantalla de negro para poder pintarlos de nuevo según la opción que el usuario seleccione.
- display.s: Contien todas las constantes que definas relacionadas con la pantalla gráfica.
- servicios.s: Contien las constantes relacionadas con el acceso al sistema operativo estarán en el fichero.
