#!/bin/sh

docker build -t php-7.4-dev php/7.4-dev/
docker tag php-7.4-dev:latest caiquesporte/php:7.4-dev
