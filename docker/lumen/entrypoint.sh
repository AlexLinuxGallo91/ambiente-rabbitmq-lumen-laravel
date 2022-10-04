#!/bin/sh

cd /src
ls -la
composer update
php -S 0.0.0.0:8080 public/index.php