# Pull base image 
#FROM httpd:2.4
#COPY ./web-consult-app/* /usr/local/apache2/htdocs/
#RUN yum update -y
# Maintainer 
#MAINTAINER "okevictor.t@gmail.com" 
#EXPOSE 8082
#CMD ["-DFOREGROUND"]

FROM php:7.4-cli
COPY ./web-consult-app/* /usr/src/myapp
WORKDIR /usr/src/myapp
CMD [ "php", "./your-script.php" ]
