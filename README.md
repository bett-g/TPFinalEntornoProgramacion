# Universidad Nacional de Rosario / FCEIA
## Tecnicatura Universitaria en Inteligencia Artificial
## Trabajo Final de Entorno de Programación
## Integrante: 
Betsabé Gómez

## Descripción:

Analisis de texto sencillo, los scripts tienen las siguientes funcionalidades:


    1) statsWords.sh: Indicador estadístico de longitud de palabras (la más corta, la más larga y el promedio de longitud).
    2) statsUsageWords.sh: Indicador estadístico de uso de palabras, deben ser de al menos 4(cuatro) letras. (mostrar un Top Ten de estas palabras ordenadas desde la que tiene más apariciones a la que tiene menos). Es decir, filtrar las palabras que tengan al menos 4 letras y de éstas, elegir las 10 más usadas.
    3) findNames.sh: Identificación de nombres propios (se identifican sólo si están en este formato Nnnnnnnnn), aunque la palabra no sea un nombre propio realmente. Ejemplos: Mateo, Estonoesunnombre, Ana.
    4) statsSentences.sh: Indicador estadístico de longitud de oraciones (la más corta, la más larga y el promedio de longitud).
    5) blankLinesCounter.sh: Contador de líneas en blanco.
    
## Condiciones previas:

Tener instalado docker y sus paquetes actualizados.
Comandos utiles:
`sudo apt update`
`sudo apt install apt-transport-https ca-certificates curl software-properties-common`

## Instrucciones:

**Paso 1:** Clonar el repositorio en una carpeta determinada `git clone hhttps://github.com/bett-g/TPFinalEntornoProgramacion`

**Paso 2:** Ingresar a la carpeta con `cd TPFinalEntornoProgramacion`

**Paso 3:** Ejecutar `docker build . -t tpep`

**Paso 4:** Ejecutar `docker container run -it -v $(pwd)/Pruebas:/Pruebas:ro --rm tpep`


