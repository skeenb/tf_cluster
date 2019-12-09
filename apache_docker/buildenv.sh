#!/bin/bash
echo "about to start building apache web tomcat9server"
docker build -t apache2server .
echo "docker image has been created"
echo "about to run docker"
docker run -d -p 80:80 apache2server 
echo "ran docker"


