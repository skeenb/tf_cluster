#!/bin/bash

docker build -t tomcat9server .
docker run --security-opt="label=user:root" \
	--volume='pwd':/root/tf_cluster \
	tomcat9server 


