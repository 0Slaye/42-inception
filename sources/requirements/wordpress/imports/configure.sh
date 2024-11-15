#!/bin/bash
echo "database name: " $SQL_DATABASE
echo "database user: " $SQL_USER
exec php-fpm7.4 -F -R