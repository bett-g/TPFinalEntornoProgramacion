
#!/bin/bash
# Enunciado:
# Contador de líneas en blanco

echo "Contador de líneas en blanco"

# Se guarda el archivo de texto en una variable
texto=$1

# Se guarda el nuevo de lineas usando Grep -cv (c es count y con v contabiliza las lineas que no coinciden con '\S' que significan lineas en blanco)
cont=$(grep -cv '\S' $texto)

# Se visualiza el resultado
echo "El archivo de texto tiene $cont lineas en blanco"

