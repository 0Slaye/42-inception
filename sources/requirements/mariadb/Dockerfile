FROM debian:bullseye

RUN apt-get update && apt-get install -y mariadb-server
RUN mkdir -p /run/mysqld
RUN echo "[mysqld]" > /etc/mysql/mariadb.conf.d/50-server.cnf
RUN echo "skip-socket" >> /etc/mysql/mariadb.conf.d/50-server.cnf
RUN echo "bind-address=0.0.0.0" >> /etc/mysql/mariadb.conf.d/50-server.cnf

USER mysql

CMD [ "mysqld" ]