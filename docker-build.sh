#!/bin/sh

docker build -t php-7.4-dev php/7.4-dev/
docker tag php-7.4-dev:latest caiquesportela/php:7.4-dev

docker build -t php-8.0-dev php/8.0-dev/
docker tag php-8.0-dev:latest caiquesportela/php:8.0-dev
