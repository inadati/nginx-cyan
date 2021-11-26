#!/bin/bash

docker network ls --format "{{.Name}}" | grep "nginx-cyan-net"
xst=$?

if [ $xst -eq 1 ]; then
    docker network create nginx-cyan-net
fi

docker-compose up -d