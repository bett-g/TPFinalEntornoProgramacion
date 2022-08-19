#!/bin/bash
# Enunciado:
# Indicador estadistico de palabras (la mas larga, la mas corta y el promedio de longitud)
echo "Indicador estadistico de palabras"
echo "---------------------------------"

# Asingamos el archivo a una variable
texto=$1
# Se cuenta la cantidad de palabras con wc -w (words)
# Se utiliza pipe para pasar el resultado obtenido hacia grep -o para buscar los numeros mediante una expresion regular, con -o (only-matching) nos posicionamos en la primera columna
# El resultado se guarda en la variable Palabras
palabras=$(wc -w $texto | grep -o "^[0-9]*")

# Si hay palabras en el archivo entonces se realiza el analisis de texto
if [ $palabras -gt 0 ]
then
    # Grep -E (extended-regexp)-o filtra las palabras (mediante la expresion regular) para la entrada hacia awk (donde se realiza el calculo de lngitud)
    # Cut -d (delimitador) -f1 (field 1) corta la columna de longitud calculada
    # Sort -n (numeric-sort) ordena y se guardan en un archivo nuevo
    grep -E -o "\<[A-Za-z]+\>" $texto | awk '{ print length, $0 }' | cut -d " " -f1 | sort -n > texto2.txt

    # Mínimo y un máximo con el head (primera linea, cabecera) y tail (ultima linea)
    min=$(head -1 texto2.txt)
    max=$(tail -1 texto2.txt)
    
    # Calculamos la cantidad de carácteres (wc -c)
    caracteres=$(wc -c texto2.txt | grep -o "^[0-9]*")

    # Calculo promedio bc libreria matematica -l
    # Scale=2 redondeo con dos decimales
    prom=$(echo "scale=2; $caracteres / $palabras" | bc -l)

    # Visualizacion de resultados
    echo "La palabra más larga tiene $max caracteres"
    echo "La palabra más corta tiene $min caracteres"
    echo "El promedio es de $prom caracteres por palabra"

    # Se elimina el archivo creado con rm (remove)
    rm texto2.txt
else
    echo "El archivo no contiene palabras"
fi                                                                                                                                                                                                                                                                                    
