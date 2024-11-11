FROM debian:bullseye

RUN apt-get update && apt-get install -y curl php7.4-fpm
RUN curl -O https://wordpress.org/wordpress-6.6.2.tar.gz
RUN tar -xvzf wordpress-6.6.2.tar.gz
RUN mkdir -p /var/www/html/
RUN mv wordpress/* /var/www/html
RUN mkdir -p /run/php
RUN chown -R www-data:www-data /run/php
RUN sed -i "s|listen = /run/php/php7.4-fpm.sock|listen = 127.0.0.1:9000|" /etc/php/7.4/fpm/pool.d/www.conf

CMD [ "php-fpm7.4", "-F", "-R" ]