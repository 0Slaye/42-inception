#!/bin/bash
echo "wp_configure.sh [10s]"
sleep 10
if [ ! -f "/var/www/html/wp-config.php" ]; then
	echo "Creating WordPress config..."
	su -s /bin/bash www-data -c "wp-cli.phar config create --dbname=${SQL_DATABASE} --dbuser=${SQL_USER} --dbpass=${SQL_PASSWORD} --dbhost=mariadb:3306 --path=/var/www/html"
else
	echo "WordPress is already configured."
fi
su -s /bin/bash www-data -c "wp-cli.phar core is-installed --path=/var/www/html"
if [ $? -ne 0 ]; then
	echo "Installing WordPress..."
	su -s /bin/bash www-data -c "wp-cli.phar core install --path=/var/www/html \
		--url=${WP_URL} \
		--title=${WP_TITLE} \
		--admin_user=${WP_ADMIN_USER} \
		--admin_password=${WP_ADMIN_PASS} \
		--admin_email=${WP_ADMIN_EMAIL}"
	echo "Creating second user..."
	su -s /bin/bash www-data -c "wp-cli.phar --path=/var/www/html user create ${WP_USER} ${WP_USER_EMAIL} --role=subscriber --user_pass=${WP_USER_PASSWORD}"
else
	echo "WordPress is already installed."
fi
exec php-fpm7.4 -F -R