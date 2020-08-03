FROM php:7.4.8-fpm-alpine3.12

ARG USERNAME=jorge
ARG USER_UID=1000
ARG USER_GID=$USER_UID

RUN apk add --no-cache \
        build-base \
        git \
        openssh-client \
        less \
        iproute2 \
        procps \
        iproute2 \
        autoconf \
    && docker-php-ext-install \
        pdo \
        pdo_mysql \
        mysqli \
    && xdebugini="/usr/local/etc/php/conf.d/xdebug.ini" \
    && yes | pecl install xdebug \
    && echo "zend_extension=$(find /usr/local/lib/php/extensions/ -name xdebug.so)" > $xdebugini \
    && echo "xdebug.remote_enable=on" >> /usr/local/etc/php/conf.d/xdebug.ini \
    && echo "xdebug.remote_autostart=on" >> $xdebugini \
    && echo "xdebug.remote_port=9001" >> $xdebugini\
    && apk --no-cache add sudo \
    && adduser -D $USERNAME \
        && echo "$USERNAME ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/$USERNAME \
        && chmod 0440 /etc/sudoers.d/$USERNAME

USER $USERNAME