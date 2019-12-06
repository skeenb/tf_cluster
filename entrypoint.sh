#!/bin/bash

# sets up everything related to tomcat
sudo groupadd tomcat
sudo useradd -s /bin/false -g tomcat -d /opt/tomcat tomcat
sudo mv /tmp/apache* /opt/tomcat/
sudo ln -s /opt/tomcat/apache-tomcat-9.0.27 /opt/tomcat/latest
sudo chown -RH tomcat: /opt/tomcat/latest 
sudo sh -c 'chmod +x /opt/tomcat/latest/bin/*.sh'
sudo systemctl enable tomcat
# firewall stuff below for tomcat
sudo ufw allow 8080/tcp
