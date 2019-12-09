#!/bin/bash
echo "about to start building haproxy server"
docker build -t haproxy .
echo "docker image has been created"
echo "about to run docker"
docker run -d -p 80:80 haproxy 
echo "ran docker"


