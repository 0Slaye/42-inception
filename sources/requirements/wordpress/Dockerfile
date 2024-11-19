FROM debian:bullseye

RUN apt-get update && apt-get install -y curl php7.4 php7.4-fpm php7.4-cli php7.4-mysql php7.4-curl php7.4-xml php7.4-mbstring mariadb-client wget sendmail
RUN curl -O https://wordpress.org/wordpress-6.6.2.tar.gz
RUN tar -xvzf wordpress-6.6.2.tar.gz
RUN mkdir -p /var/www/html/
RUN mv wordpress/* /var/www/html
RUN rm wordpress-6.6.2.tar.gz
RUN mkdir -p /run/php
RUN chown -R www-data:www-data /run/php /var/www/html /var/log
RUN wget https://github.com/wp-cli/wp-cli/releases/download/v2.11.0/wp-cli-2.11.0.phar -O wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp-cli.phar
RUN echo "allow_url_fopen = On" >> /etc/php/7.4/cli/php.ini
RUN chmod 755 /usr/local/bin/wp-cli.phar

COPY ./imports/www.conf /etc/php/7.4/fpm/pool.d/www.conf
COPY ./imports/wp_configure.sh /

RUN chmod +x /wp_configure.sh

ENTRYPOINT [ "./wp_configure.sh" ]