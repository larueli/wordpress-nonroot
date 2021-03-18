#!/bin/bash
if [ ! -f /var/www/html/wp-config-sample.php ]; then
    cd /tmp
    unzip wordpress-${WORDPRESS_VERSION}.zip
    mv -f wordpress/* /var/www/html/
fi
