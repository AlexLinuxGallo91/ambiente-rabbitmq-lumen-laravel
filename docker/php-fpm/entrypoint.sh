#!/bin/sh

# estableciendo permisos a los logs
chmod -R 755 /var/www/storage/logs

echo "Iniciando la descarga de las dependencias con artisan"

cd /var/www
composer install
composer update

cp -f .env.example .env
php artisan key:generate
php artisan migrate:fresh
php artisan db:seed
php-fpm