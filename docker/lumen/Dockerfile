FROM php:8.1-alpine

RUN php -r "copy('http://getcomposer.org/installer', 'composer-setup.php');" && \
php composer-setup.php --install-dir=/usr/bin --filename=composer && \
php -r "unlink('composer-setup.php');"

RUN docker-php-ext-install sockets

# copy all of the file in folder to /src
RUN mkdir /src
WORKDIR /src
COPY ./entrypoint.sh /.

RUN chmod 755 /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
