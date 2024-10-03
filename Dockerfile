# Explicitly pull the x86_64 version of Ubuntu
FROM amd64/ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt upgrade -y
RUN apt-get install -y apache2 
COPY ./index.html /var/www/html/
EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]
