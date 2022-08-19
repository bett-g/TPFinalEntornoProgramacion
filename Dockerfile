FROM ubuntu
MAINTAINER Betsabe Gomez "betsabe.g2@gmail.com"

RUN apt-get update && apt-get install -y gawk bc locales && apt-get clean && rm -rf /var/lib/apt/lists/*

# Configuracion de idioma 
RUN locale-gen es_AR.UTF-8  

ENV LANG es_AR.UTF-8
ENV LANGUAGE es_AR:es  
ENV LC_ALL es_AR.UTF-8  

# Se copia los scripts y el menú
COPY menu de opciones.sh .
COPY Scripts /Scripts

# Ejecutar el menú
ENTRYPOINT ["/bin/bash", "/menu de opciones.sh"]
