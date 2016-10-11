#!/bin/bash
echo Limpeza Docker
docker ps -q -a |xargs docker rm > /dev/null 2>&1
echo Containers parados removidos
dockerIDs=$(docker images -a | grep "^<none>" | awk '{print $3}')
if [[ $dockerIDs ]]; then
    docker rmi $dockerIDs > /dev/null 2>&1
fi
dockerIDs=$(docker images -q)
docker rmi $dockerIDs > /dev/null 2>&1
echo Imagens de containers parados removidas
