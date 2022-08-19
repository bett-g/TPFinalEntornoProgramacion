#!/bin/bash
echo "Indicador estadistico de longitud de oraciones"
echo "----------==----------------------------------------"

texto=$1

# Se guarda en variable la cantidad de palabras por oracion con wc
palabras=$(wc -w < $texto)

# Se guarda en variable la cantidad de oraciones con wc
oraciones=$(wc -l < $texto)

echo "Cantidad de oraciones: $oraciones, Cantidad de palabras: $palabras"
echo "----------------------------------------------------"

if [[ $oraciones > 0 && $palabras > 0 ]]
then

	# Se usa scale=2 para que redondee con dos decimales
	# Se usa bc con libreria matematica -l
	prom=$(echo "scale=2; $palabras / $oraciones" | bc -l)

	# Se lee línea a línea hasta el final del archivo
        # Se cuenta la cantidad de líneas
	cat $texto |  while read line
	do

	echo $line | wc -w
	done < $texto >> contenedor.txt 

	# Se ordena por orden numérico y se guarda en el archivo
	sort -n contenedor.txt > contenedor2.txt

	# Se guarda por variables el primer y último elemento del archivo.
	min=$(head -1 contenedor2.txt)
	max=$(tail -1 contenedor2.txt)

	# Se muestra el resultado por salida estandar.
	echo "La oración con mayor longitud tiene $max palabras"
	echo "La oración con menor longitud tiene $min palabras"
	echo "El promedio de la longitud es de: $prom"

	# Se eliminan los archivos de textos creados
	rm contenedor2.txt contenedor.txt
else
	echo "No hay palabras ni oraciones en el archivo"
fi
