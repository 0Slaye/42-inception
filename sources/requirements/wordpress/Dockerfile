FROM debian:bullseye

RUN apt-get update && apt-get install -y curl php7.4 php7.4-fpm php7.4-mysql mariadb-client
RUN curl -O https://wordpress.org/wordpress-6.6.2.tar.gz
RUN tar -xvzf wordpress-6.6.2.tar.gz
RUN mkdir -p /var/www/html/
RUN mv wordpress/* /var/www/html
RUN rm wordpress-6.6.2.tar.gz
RUN mkdir -p /run/php
RUN chown -R www-data:www-data /run/php

COPY ./imports/www.conf /etc/php/7.4/fpm/pool.d/www.conf
COPY ./imports/wp-config.php /var/www/html/wp-config.php

CMD [ "php-fpm7.4", "-F", "-R" ]