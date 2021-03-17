FROM larueli/php-base-image:7.4

ARG WORDPRESS_VERSION=5.7
ENV WORDPRESS_VERSION=${WORDPRESS_VERSION}

USER 0

RUN cd /tmp && wget https://wordpress.org/wordpress-${WORDPRESS_VERSION}.zip && unzip wordpress-${WORDPRESS_VERSION}.zip && \
    rm -rf /var/www/html && mv wordpress /var/www/html && rm wordpress-${WORDPRESS_VERSION}.zip && \
    chgrp -R 0 /var/www/html && chmod -R g+rwx /var/www/html

USER 545622:0