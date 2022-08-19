#! /usr/bin/env bash
# Indicador estadístico de uso de palabras, deben ser de al menos 4(cuatro) letras.
# (mostrar un Top Ten de estas palabras ordenadas desde la que tiene más apariciones a la que tiene menos).
# Es decir, filtrar las palabras que tengan al menos 4 letras y de éstas, elegir las 10 más usadas.

texto=$1

# Se pasa el texto a minusculas para que la comparacion de palabras sea valida
sed 's/[A-Z]/\L&/g' <$texto> textomin.txt
# Se ordenan las palabras y se eliminan duplicados
grep -E -o "\<[a-z]+\>" textomin.txt | sort | uniq > texto2.txt

# Se pasa el resultado obtenido en una cadena para luego recorrerla
texto2=texto2.txt

#Se arma un array con los datos usando cat
	lista=($(cat $texto2))
	
# Se recorre la lista
	for cadena in "${lista[@]}"
	do
# Si la palabra es menor a 4 no se tomara en cuenta.
	    if [ ${#cadena} -gt 3 ]
	    then
# Se filtra por elemento del arrray en el archivo temproal y contando la cantidad de
# veces que aparece, luego se guarda en otro archivo poniendo la palabara y las veces que aparece.
	        cant=$(grep -E -o "\<$cadena\>" textomin.txt | wc -l)       
		echo "$cant-$cadena" >> texto3.txt      
	    fi
	done
#Cantidad de palabras repetidas, borramos duplicados y ordenamos
more  texto3.txt | uniq -d | sort -n -r >> texto3.txt

#Buscamos los top 10
head -10 texto3.txt

# Se borran los archivos
rm textomin.txt texto2.txt texto3.txt
