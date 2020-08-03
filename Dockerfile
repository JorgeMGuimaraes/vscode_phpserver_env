FROM php:7.4.8-fpm-alpine3.12

RUN docker exec -it php-fpm docker-php-ext-install \
    pdo \
    pdo_mysql \
    mysqli