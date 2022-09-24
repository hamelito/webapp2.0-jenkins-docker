FROM ubuntu
# label 
MAINTAINER webapp hamelito.gaming@gmail.com
# update images
RUN apt-get update
# install nginx
RUN apt-get install -y nginx git
# port 
EXPOSE 80
# ADD webapp2.0.git/ /var/www/html/

RUN rm -Rf /var/www/html/*
RUN git clone https://github.com/hamelito/webapp2.0.git /var/www/html/
# commande
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
