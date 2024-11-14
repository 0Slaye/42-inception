#!/bin/bash
mysqld_safe --datadir=/var/lib/mysql &

# Wait until MySQL is up and running (using a loop to check)
until mysqladmin ping --silent; do
  echo "Waiting for MySQL to start..."
  sleep 2
done

# Run the SQL commands to set up the database, user, etc.
mysql -e "CREATE DATABASE IF NOT EXISTS \`${SQL_DATABASE}\`;"
mysql -e "CREATE USER IF NOT EXISTS \`${SQL_USER}\`@'localhost' IDENTIFIED BY '${SQL_PASSWORD}';"
mysql -e "GRANT ALL PRIVILEGES ON \`${SQL_DATABASE}\`.* TO \`${SQL_USER}\`@'%' IDENTIFIED BY '${SQL_PASSWORD}';"
mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${SQL_ROOT_PASSWORD}';"
mysql -e "FLUSH PRIVILEGES;"

# Keep MariaDB running in the foreground
wait