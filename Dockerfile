FROM ubuntu:latest
#WORKDIR /app
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt upgrade -y
RUN apt-get install -y apache2 
COPY ./index.html /var/www/html/
#RUN rm -rf /var/www/html/index.html
#RUN mv app/index.html 
EXPOSE 80

CMD [ "apachectl", "-D", "FOREGROUND" ]