FROM debian:bullseye

RUN apt-get update && apt-get install -y nginx
RUN chown -R www-data:www-data /var/www/html
RUN chmod -R 755 /var/www/html

COPY ./imports/nginx.conf /etc/nginx/nginx.conf

CMD ["nginx", "-g", "daemon off;"]