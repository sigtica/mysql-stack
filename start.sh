#!/bin/sh
docker swarm init
docker pull mysql:8.0.13
docker pull phpmyadmin/phpmyadmin:5.0.2
docker stack deploy --detach=false -c docker-compose.yml mysql_stack 
