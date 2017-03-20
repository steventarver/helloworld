#!/bin/bash
docker rm -f bws
docker rmi -f bash-web-server
docker build -t bash-web-server:v1 . 
docker run -d -p 8090:8080 --name bws bash-web-server:v1

