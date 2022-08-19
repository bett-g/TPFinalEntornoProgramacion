FROM ubuntu
MAINTAINER Betsabe Gomez "betsabe.g2@gmail.com"

# Se actualizan/instalan las aplicaciones necesarias para su ejecucion
RUN apt-get update && apt-get install -y gawk bc locales && apt-get clean && rm -rf /var/lib/apt/lists/*

# Se configura el idioma
RUN locale-gen es_AR.UTF-8  

ENV LANG es_AR.UTF-8
ENV LANGUAGE es_AR:es  
ENV LC_ALL es_AR.UTF-8  

# Se copia los scripts y el menú
COPY menuopciones.sh .
COPY Scripts /Scripts

# Cuando se inicia el container se ejecuta el menú.
ENTRYPOINT ["/bin/bash", "/menuopciones.sh"]
