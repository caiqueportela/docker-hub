FROM php:8.0-zts

RUN mkdir /app

WORKDIR /app

RUN apt-get update

RUN apt-get upgrade

RUN apt-get install -y \
    vim \
    nano \
    iputils-ping \
    git \
    libssl-dev \
    curl \
    wget \
    libcurl4-openssl-dev \
    zlib1g-dev \
    libpng-dev \
    libonig-dev \
    libpq-dev \
    sqlite3 \
    libsqlite3-0 \
    libsqlite3-dev \
    libxml2-dev \
    libzip-dev

RUN apt-get autoremove

RUN docker-php-ext-install gd json mbstring curl pdo pdo_mysql pdo_pgsql pdo_sqlite simplexml sockets xml zip

RUN pecl install -D 'enable-sockets="yes" enable-openssl="yes" enable-http2="yes" enable-mysqlnd="yes" enable-swoole-json="yes" enable-swoole-curl="yes"' swoole \
    && docker-php-ext-enable swoole

#RUN pecl install parallel && docker-php-ext-enable parallel

RUN pecl install ds && docker-php-ext-enable ds

RUN pecl install xdebug && docker-php-ext-enable xdebug

EXPOSE 8888

CMD ["php", "-S", "0.0.0.0:8888"]
