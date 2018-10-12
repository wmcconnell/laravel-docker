FROM php:7.2.10-fpm

RUN apt-get update && apt-get install -y libmcrypt-dev \
    mysql-client --no-install-recommends \
    && pecl install mcrypt-1.0.1 \
    && docker-php-ext-install pdo_mysql
