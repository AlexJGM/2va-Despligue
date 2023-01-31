#!/bin/bash

# Crear contenedores
docker run -d --name restarting nginx
docker run -d --name up nginx
docker create --name created nginx
docker run -d --name paused nginx
docker run -d --name exited nginx

# Estados de los contenedores
docker restart restarting
docker start up
docker pause paused
docker stop exited


# Mostrar todos los contenedores con el estado actual
docker ps -a

#borrar 
docker rm -f restarting up created paused exited
docker ps -a