#!/bin/bash

echo "Indicador estadistico de palabras"
echo "---------------------------------"

texto=$1
# Se cuenta la cantidad de palabras con wc
palabras=$(wc -w $texto | grep -o "^[0-9]*")

# Si hay palabras en el archivo entonces se realiza el analisis de texto
if [ $palabras -gt 0 ]
then
    # Grep filtra las palabras para la entrada a awk (calculo lngitud)
    # Cut deja la columna con longitud calculada
    # Sort ordena y se guardan en un archivo nuevo
    grep -E -o "\<[A-Za-z]+\>" $texto | awk '{ print length, $0 }' | cut -d " " -f1 | sort -n > texto2.txt

    # Mínimo y un máximo con el head y tail
    min=$(head -1 texto2.txt)
    max=$(tail -1 texto2.txt)
    
    # Calculamos la cantidad de carácteres
    caracteres=$(wc -c texto2.txt | grep -o "^[0-9]*")

    # Calculo promedio bc libreria matematica -l
    # Scale=2 redondeo con dos decimales.
    prom=$(echo "scale=2; $caracteres / $palabras" | bc -l)

    # Visualizacion de resultados
    echo "La palabra más larga tiene $max caracteres"
    echo "La palabra más corta tiene $min caracteres"
    echo "El promedio es de $prom caracteres por palabra"

    # Se elimina el archivo creado
    rm texto2.txt
else
    echo "El archivo no contiene palabras"
fi                                                                                                                                                                                                                                                                                    
