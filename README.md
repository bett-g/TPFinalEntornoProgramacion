# Universidad Nacional de Rosario / FCEIA
## Tecnicatura Universitaria en Inteligencia Artificial
## Entorno de Programacion
## Trabajo Final de Entorno de Programación
## Integrante: 
Betsabé Gómez

## Descripción:

Analisis de texto sencillo, los 5 scripts tienen las siguientes funcionalidades:


    1) statsWords.sh: Indicador estadístico de longitud de palabras (la más corta, la más larga y el promedio de longitud).
    2) statsUsageWords.sh: Indicador estadístico de uso de palabras, deben ser de al menos 4(cuatro) letras. (mostrar un Top Ten de estas palabras ordenadas desde la que tiene más apariciones a la que tiene menos). Es decir, filtrar las palabras que tengan al menos 4 letras y de éstas, elegir las 10 más usadas.
    3) findNames.sh: Identificación de nombres propios (se identifican sólo si están en este formato Nnnnnnnnn), aunque la palabra no sea un nombre propio realmente. Ejemplos: Mateo, Estonoesunnombre, Ana.
    4) statsSentences.sh: Indicador estadístico de longitud de oraciones (la más corta, la más larga y el promedio de longitud).
    5) blankLinesCounter.sh: Contador de líneas en blanco.
    
## Instrucciones:

**Primer paso:** Tener instalado docker sino lo tiene instalado seguir el tutorial del siguiente enlace: Digital Ocean luego de terminar con los pasos se recomienda reiniciar el equipo.

**Segundo paso:** Clonar el repositorio en una carpeta por ejemplo en Descargas, abrimos una terminal y ejecutamos `git clone https://github.com/bett-g/TPFinalEntornoProgramacion`

**Tercer paso:** Ingresar a la carpeta con `cd TPFinalEntornoProgramacion`, luego ejecutar `docker build . -t tpfinal`

**Cuarto paso:** Ejecutar `docker container run -it -v $(pwd)/texto:/texto:ro --rm tpfinal`


