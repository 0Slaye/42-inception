FROM debian:bullseye

RUN apt-get update && apt-get install -y mariadb-server
RUN mkdir -p /run/mysqld
RUN chown -R mysql:mysql /run/mysqld
RUN chmod 755 /run/mysqld
RUN chown -R mysql:mysql /var/lib/mysql

COPY ./imports/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./imports/configure.sh /

RUN chmod +x /configure.sh

ENTRYPOINT [ "/configure.sh" ]