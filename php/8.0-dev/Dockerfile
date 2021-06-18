FROM php:8.0-zts

RUN mkdir /app

WORKDIR /app

RUN apt-get update

RUN pecl install swoole && docker-php-ext-enable swoole

#RUN pecl install parallel && docker-php-ext-enable parallel

RUN pecl install ds && docker-php-ext-enable ds

RUN pecl install xdebug && docker-php-ext-enable xdebug

EXPOSE 8888

CMD ["php", "-S", "0.0.0.0:8888"]
