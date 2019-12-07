#!/bin/bash

  

# sets up everything related to tomcat
useradd -s /bin/false -g tomcat -d /opt/tomcat tomcat
mv /tmp/apache* /opt/tomcat/
ln -s /opt/tomcat/apache-tomcat-9.0.27 /opt/tomcat/latest
chown -RH tomcat: /opt/tomcat/latest 
sh -c 'chmod +x /opt/tomcat/latest/bin/*.sh'
cp /tmp/tomcat.service /etc/systemd/system/tomcat.service
systemctl enable tomcat
systemctl start tomcat
# firewall stuff below for tomcat
ufw allow 8080/tcp


while true; do 
    sleep 300s
done


# ufw allow 8080/tcp
