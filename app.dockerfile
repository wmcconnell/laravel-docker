FROM php:7.0.4-fpm

RUN apt-get update && apt-get install -y libmcrypt-dev \
    mysql-client libmagickwand-dev --no-install-recommends \
    && peck install imagick \
    && docker-php-ext-enable imagick \
    && docker-php-ext-install mycrypt pdo_mysql
