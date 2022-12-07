#!/bin/bash

docker stop mysql; docker rm mysql
docker build . -t mysql:v1.1
docker images |grep mysql
docker run --name mysql -e MYSQL_ROOT_PASSWORD=1timepsw -d mysql:v1.1
sleep 15
docker exec -i mysql sh -c "exec mysql -u root -p1timepsw" < script.sql
docker exec -i mysql sh -c "exec mysql -u root -p1timepsw" < test.sql