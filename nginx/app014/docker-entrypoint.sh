#!/bin/sh
set -e

# Create socket directories in /dev/shm if they don't exist
mkdir -p /dev/shm
touch /dev/shm/php-flash.sock /dev/shm/php-flash1.sock /dev/shm/php-fpm1.sock /dev/shm/php-debug.sock /dev/shm/php-debug1.sock

# Ensure correct permissions (nginx and php-fpm usually run under www-data or similar users)
chown www-data:www-data /dev/shm/php-flash.sock /dev/shm/php-flash1.sock /dev/shm/php-fpm1.sock /dev/shm/php-debug.sock /dev/shm/php-debug1.sock
chmod 0777 /dev/shm/php-flash.sock /dev/shm/php-flash1.sock /dev/shm/php-fpm1.sock /dev/shm/php-debug.sock /dev/shm/php-debug1.sock

# Start Sendmail in the background
service sendmail start

# Start PHP-FPM in the background
service php8.1-fpm start

# Start Nginx in the foreground
exec nginx
