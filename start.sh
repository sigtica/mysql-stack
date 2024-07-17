#!/bin/sh
docker swarm init
docker stack deploy --detach=false -c docker-compose.yml mysql_stack 


