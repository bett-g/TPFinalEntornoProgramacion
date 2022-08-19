#!bin/bash
submenu(){
tex=$1
echo -ne "
1) Longitud de palabras        4) Longitud de oraciones
2) Uso de palabras             5) Contador de lineas en blanco
3) Nombres propios             0) Volver al menú principal
C) Limpiar pantalla
Opciones: "
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
echo "Seleccionar un TEXTO de texto"
ls /texto/
read
if [ -r /texto/$REPLY ] && [ -f /texto/$REPLY ]
then
    submenu /texto/$REPLY
else
    echo "No tiene permisos de lectura o no existe"
fi
}

menu
