FROM debian:bullseye

RUN apt-get update && apt-get install -y curl php7.4 php7.4-fpm php7.4-mysql mariadb-client wget sendmail
RUN curl -O https://wordpress.org/wordpress-6.6.2.tar.gz
RUN tar -xvzf wordpress-6.6.2.tar.gz
RUN mkdir -p /var/www/html/
RUN mv wordpress/* /var/www/html
RUN rm wordpress-6.6.2.tar.gz
RUN mkdir -p /run/php
RUN chown -R www-data:www-data /run/php
RUN chown -R www-data:www-data /var/www/html
RUN chown -R www-data:www-data /var/log
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

COPY ./imports/www.conf /etc/php/7.4/fpm/pool.d/www.conf
COPY ./imports/wp-config.php /var/www/html/wp-config.php
COPY ./imports/configure.sh /

RUN chmod +x /configure.sh
USER www-data

ENTRYPOINT [ "/configure.sh" ]