service php7.4-fpm start
sleep 2
mkdir /var/www
sed -i -r "s/\/run\/php\/php7.4-fpm.sock/9000/1"   /etc/php/7.4/fpm/pool.d/www.conf

sleep 15

wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp

mkdir -p /var/www/wordpress
cd /var/www/wordpress
wp core download --allow-root

sleep 5

mv wp-config-sample.php  wp-config.php

sed -i -r "s/database_name_here/$SQL_DATABASE/1"   wp-config.php
sed -i -r "s/username_here/$SQL_USER/1"  wp-config.php
sed -i -r "s/password_here/$SQL_PASSWORD/1"    wp-config.php
sed -i -r "s/localhost/mariadb/1"    wp-config.php
wp core install --url="$WORDPRESS_URL" \
                --title="$WORDPRESS_TITLE" \
                --admin_user="$WORDPRESS_ADMIN" \
                --admin_email="$WORDPRESS_ADEMAIL" \
                --admin_password="$WORDPRESS_ADPASS" --allow-root
wp user create "$WORDPRESS_USER" "$WORDPRESS_USEMAIL" --role=contributor --user_pass="$WORDPRESS_USPASS" --allow-root

/usr/sbin/php-fpm7.4 -F