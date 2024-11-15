#!/bin/bash
DB_NAME='wordpress'
DB_USER='uwywijas'
DB_PASSWORD='1234'
DB_HOST='localhost'
WP_URL='https://127.0.0.1:443'
WP_TITLE='Inception'
WP_ADMIN_USER='supervisor'
WP_ADMIN_PASS='strongpassword'
WP_ADMIN_EMAIL='info@example.com'
WP_PATH='/var/www/html'
sleep 2
if ! wp core is-installed --path="$WP_PATH"; then
	echo "Installing WordPress..."
	wp core install --path="$WP_PATH" \
		--url="$WP_URL" \
		--title="$WP_TITLE" \
		--admin_user="$WP_ADMIN_USER" \
		--admin_password="$WP_ADMIN_PASS" \
		--admin_email="$WP_ADMIN_EMAIL"
else
	echo "WordPress is already installed."
fi
exec php-fpm7.4 -F -R