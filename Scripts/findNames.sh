#! /bin/bash
# Identificación de nombres propios (se identifican sólo si están en este formato Nnnnnnnnn)
# aunque la palabra no sea un nombre propio realmente. Ejemplos: Mateo, Estonoesunnombre, Ana. 

texto=$1
# Se contabiliza mayuscula con wc y se agrega el valor a una variable
mayus=$(grep --color='always' "\<[A-Z][^ ]*\>" $texto | wc -l)

# Si la variable es igual a cero, no hay mayusculas en el archivo de texto, caso contrario se visualizan las palabras resaltada con color.

if [[ $mayus = 0 ]]
then
	echo "No hay palabras con mayusculas"
else
	grep --color='always' "\<[A-Z][^ ]*\>" $texto
fi

