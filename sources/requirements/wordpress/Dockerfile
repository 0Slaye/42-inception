FROM debian:bullseye

RUN apt-get update && apt-get install -y curl php-fpm
RUN curl -O https://wordpress.org/wordpress-6.6.2.tar.gz
RUN tar -xvzf wordpress-6.6.2.tar.gz
RUN mkdir -p /var/www/html/
RUN mv wordpress/* /var/www/html