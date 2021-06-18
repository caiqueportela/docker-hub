FROM php:7.4-zts

RUN mkdir /app

WORKDIR /app

RUN apt-get update

RUN pecl install swoole

RUN pecl install parallel

RUN pecl install ds

EXPOSE 8888

CMD ["php", "-S", "0.0.0.0:8888"]
