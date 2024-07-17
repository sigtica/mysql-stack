# MySQL Stack

This is a containerized MySQL instance with phpMyAdmin for easy development. The idea behind this repo is to make it really easy for quick deployment of a MySQL instance for data engineering and testing purposes. 

## Getting started

To get started, simply type this into shell:
```shell
bash start.sh
```
and the docker stack will spin up and phpMyAdmin should be available in the browser on port 8080 at your IP address. To find out what your IP address is, open terminal and type in `hostname -I`. Once you know what your IP address is, for example, `192.168.1.81`, then go to `http://192.168.1.81:8080` in your browser to view phpMyAdmin.


## Stopping the stack

If you wish to spin down the stack, simply type this into shell:
```shell
bash stop.sh
```
and the docker stack will spin down within the next 10 seconds. To make sure that the stack is fully spun down, please check `docker service ls` and `docker container ls` to see if the containers or services are still on or not.


## Docker stack design

This docker stack is comprised of two services:
1. MySQL (named `mysqldb` in the stack)
2. phpMyAdmin (named `phpmyadmin` in the stack)

The MySQL service spins up a MySQL docker container complete with a root password, username and password, as well as global config files and persistent storage. It also has a setup script folder, which is for creating any tables in MySQL automatically upon booting up.

The phpMyAdmin service spins up a phpMyAdmin docker container and is exposed at port 8080. This means you can navigate to port 8080 on your own computer to view the site. Please note that this service is only available on HTTP and does not have SSL certificates (HTTPS not available), as this is only used for testing purposes.


## Support 

Please refer to the documentation by Docker on Docker Compose and how to use a YML file for spinning up Docker Stacks. 

For more information on MySQL (docker container version), please refer to their documentation: https://hub.docker.com/_/mysql.

For more information on phpMyAdmin (docker container version), please refer to their documentation: https://hub.docker.com/_/phpmyadmin.





