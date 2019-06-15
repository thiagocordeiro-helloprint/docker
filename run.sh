#!/usr/bin/env bash

docker-compose up -d

trap "docker-compose down ; exit" INT

while true; do docker exec fpm-auth bin/console password:reset; sleep 5; done
