#!/bin/bash
echo Limpeza Docker
docker ps -q -a |xargs docker rm
echo Containers parados removidos
docker rmi $(docker images -a | grep "^<none>" | awk '{print $3}')
docker rmi $(docker images -f "dangling=true" -q)
echo Imagens de containers parados removidas