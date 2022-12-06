#!/bin/bash

docker stop mysql; docker rm mysql
docker build . -t mysql:v1.1
docker images |grep mysql
docker run --name mysql -e MYSQL_ROOT_PASSWORD=onetimepsw -d mysql:v1.1
docker exec -i mysql sh -c 'exec mysql -u root -ponetimepsw' < script.sql