FROM ubuntu:16.04
MAINTAINER juliet.kate@gmail.com
LABEL purpose="Hands on Lab"
RUN apt-get update
RUN apt-get install apache2 -y
WORKDIR /var/www/html
RUN ["/bin/bash", "-c", "echo welcome to dockerweb! >> test.html"]
EXPOSE 80
CMD ["apachectl", "-DFOREGROUND"]
