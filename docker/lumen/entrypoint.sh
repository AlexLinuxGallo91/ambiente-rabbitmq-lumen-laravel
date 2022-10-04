#!/bin/sh

cd /src/.
composer install
composer update
php -S 0.0.0.0:8080 public/index.php
