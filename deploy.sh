#!/bin/bash
if [ ! -f /var/www/html/wp-config-sample.php ]; then
    cd /tmp
    wget https://wordpress.org/wordpress-${WORDPRESS_VERSION}.zip
    unzip wordpress-${WORDPRESS_VERSION}.zip
    mv -rf wordpress/* /var/www/html/
    rm wordpress-${WORDPRESS_VERSION}.zip
fi