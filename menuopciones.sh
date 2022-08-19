#!bin/bash
submenu(){
tex=$1
echo -ne "
1) Longitud de palabras        4) Longitud de oraciones
2) Uso de palabras             5) Contador de lineas en blanco
3) Nombres propios             0) Volver al menú principal
C) Limpiar pantalla
Bienvenidos! Seleccione una de las siguientes opciones para continuar: "
read opcion
case $opcion in
        1) ./Scripts/StatsWords.sh $tex ; submenu $tex ;;
        2) ./Scripts/StatsUsageWords.sh $tex ; submenu $tex;;
        3) ./Scripts/findNames.sh $tex ; submenu $tex;;
        4) ./Scripts/statsSentences.sh $tex ; submenu $tex;;
        5) ./Scripts/blankLinesCounter.sh $tex ; submenu $tex;;
        0) clear ; menu ;;
        C) clear ; submenu $tex;;
        *) echo -e "Error! La opcion no es correcta $opcion" ; submenu $tex;;
esac
}

menu(){
echo "Bienvenidos! Por favor, seleccione un texto a analizar"
ls ./Pruebas
read
if [ -r ./Pruebas/$REPLY ] && [ -f ./Pruebas/$REPLY ]
then
    submenu ./Pruebas/$REPLY
else
    echo "Error! No existe la opcion o no tiene permisos"
fi
}

menu
