#!/bin/bash
echo Limpeza Docker
docker ps -q -a |xargs docker rm
echo Containers parados removidos
docker rmi $(docker images | grep '^<none>' | awk '{print $3}')
echo Imagens de containers parados removidas