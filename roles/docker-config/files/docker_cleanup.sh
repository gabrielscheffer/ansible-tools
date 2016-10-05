#!/bin/bash
echo Limpeza Docker
docker ps -q -a |xargs docker rm
echo Containers parados removidos
dockerIDs=$(docker images -a | grep "^<none>" | awk '{print $3}')
if [[ $dockerIDs ]]; then
    docker rmi $dockerIDs
fi
dockerIDs=$(docker images -f "dangling=true" -q)
if [[ $dockerIDs ]]; then
    docker rmi $dockerIDs
fi
echo Imagens de containers parados removidas
