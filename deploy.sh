#!/bin/bash
if [ ! $(ls -A /var/www/html) ]; then
    cd /tmp
    unzip wordpress-${WORDPRESS_VERSION}.zip
    mv -f wordpress/* /var/www/html/
fi
