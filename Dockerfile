FROM ubuntu

RUN apt-get -y update
RUN apt-get -y install apache2

RUN echo 'Hello from Docker' > /var/www/html/index.html

CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]
EXPOSE 80
