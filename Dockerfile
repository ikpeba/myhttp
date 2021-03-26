FROM ubuntu:14.04
MAINTAINER "kevin-lee <hylee@dshub.cloud>"
LABEL "purpose"="webserver parctice"
RUN apt-get update && apt-get install apache2 -y
ADD ./index.html /var/www/index.html
WORKDIR /var/www/html
EXPOSE 80
CMD apachectl -D FOREGROUND
