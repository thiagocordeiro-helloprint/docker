#!/usr/bin/env bash

git clone https://github.com/thiagocordeiro-helloprint/auth.git
git clone https://github.com/thiagocordeiro-helloprint/frontend.git
git clone https://github.com/thiagocordeiro-helloprint/api.git

docker-compose up --build -d

docker exec fpm-api composer install
docker exec fpm-auth composer install

# docker exec fpm-auth bin/console password:reset
