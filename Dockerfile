FROM ubuntu:latest AS builder


COPY ./entrypoint.sh /


RUN apt update -y
RUN apt install -y git vim wget unzip default-jdk wget unzip

# installs tomcat
RUN wget http://www-eu.apache.org/dist/tomcat/tomcat-9/v9.0.27/bin/apache-tomcat-9.0.27.tar.gz -P /tmp
RUN tar -xzvf /tmp/apache-tomcat-9.0.27.tar.gz

RUN chmod +x /entrypoint.sh





ENTRYPOINT /entrypoint.sh
