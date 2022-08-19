
#!/bin/bash
echo "Contador de líneas en blanco"

# Se guarda el archivo de texto en una variable
texto=$1

# Se guarda el nuevo de lineas usando Grep
cont=$(grep -cvP '\S' $texto)

# Se visualiza el resultado
echo "El archivo de texto tiene $cont lineas en blanco"

