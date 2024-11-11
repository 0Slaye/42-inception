FROM debian:bullseye

RUN apt-get update && apt-get install -y nginx
COPY ./nginx.conf /etc/nginx/nginx.conf
RUN chown -R www-data:www-data /var/www/html
RUN chmod -R 755 /var/www/html

CMD ["nginx", "-g", "daemon off;"]