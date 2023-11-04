FROM ubuntu:18.04
MAINTAINER kiraazdine@gmail.com
RUN apt-get update
RUN DEBIAN_FRONTED=noninteractive apt-get install -y nginx git

RUN rm -rf /var/www/html/*

RUN git clone  https://github.com/kirasse12/static-website-example.git  /var/www/html/
EXPOSE 80
#ADD static-website-example/  /var/www/html/
CMD ["nginx", "-g", "daemon off;"]

