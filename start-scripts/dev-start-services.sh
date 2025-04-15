#!/bin/bash

# Set a custom hostname
hostname dev2.proprofs.com

# Rename Session path
mv /var/lib/php/sessions /var/lib/php/session
rm /etc/nginx/sites-enabled/default
# Start Apache2 in the background
service apache2 start

# Start ssh service
service ssh start

# Start PHP-FPM
service php8.1-fpm start

# Start Memcached
service memcached start

# Change permissions for php-fpm
chown www-data:www-data /dev/shm/*

# Start Nginx
service nginx start

# Start Dummy process for docker
tail -f /dev/null
