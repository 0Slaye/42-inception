#!/bin/bash
echo "wp_configure.sh [10s]"
sleep 10
if [ ! -f "${WP_PATH}/wp-config.php" ]; then
	echo "Creating WordPress config"
	su -s /bin/bash www-data -c "wp-cli.phar config create --dbname=${SQL_DATABASE} --dbuser=${SQL_USER} --dbpass=${SQL_PASSWORD} --dbhost=mariadb:3306 --path=${WP_PATH}"
else
	echo "WordPress is already configured."
fi
su -s /bin/bash www-data -c "wp-cli.phar core is-installed --path=${WP_PATH}"
if [ $? -ne 0 ]; then
	echo "Installing WordPress..."
	su -s /bin/bash www-data -c "wp-cli.phar core install --path=${WP_PATH} \
		--url=${WP_URL} \
		--title=${WP_TITLE} \
		--admin_user=${WP_ADMIN_USER} \
		--admin_password=${WP_ADMIN_PASS} \
		--admin_email=${WP_ADMIN_EMAIL}"
else
	echo "WordPress is already installed."
fi
exec php-fpm7.4 -F -R