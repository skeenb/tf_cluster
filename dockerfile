FROM ubuntu:latest AS builder


COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh

RUN apt update -y
RUN apt install -y git vim wget unzip default-jdk wget unzip

# installs tomcat
RUN wget http://www-eu.apache.org/dist/tomcat/tomcat-9/v9.0.27/bin/apache-tomcat-9.0.27.tar.gz -P /tmp
RUN tar -xzvf /tmp/apache-tomcat-9.0.27.tar.gz

RUN groupadd tomcat
RUN useradd -s /bin/false -g tomcat -d /opt/tomcat tomcat
RUN mv /tmp/apache* /opt/tomcat/
RUN ln -s /opt/tomcat/apache-tomcat-9.0.27 /opt/tomcat/latest
RUN chown -RH tomcat: /opt/tomcat/latest  
RUN chmod +x /opt/tomcat/latest/bin/*.sh
RUN systemctl enable tomcat
RUN ufw allow 8080/tcp

ENTRYPOINT /entrypoint.sh
