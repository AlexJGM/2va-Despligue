#!/bin/bash

# Crear contenedores
docker run -d --name restart nginx
docker run -d --name up nginx
docker create --name create nginx
docker run -d --name pause nginx
docker run --name exited -d nginx

# Establecer estados
docker restart restart
docker start up
docker stop exited
docker pause pause

# Mostrar todos los contenedores con el estado actual
docker ps -a

#borrar 
docker stop restart up create pause exited
docker rm restart up create pause exited
docker ps -a
