#!/bin/sh

cd /src
ls -la
composer update
cp -f .env.example .env
php artisan key:generate
php -S 0.0.0.0:8080 public/index.php