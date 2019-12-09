#!/bin/bash
echo "<?xml version="1.0" encoding="utf-8"?>" >> /etc/firewalld/services/haproxy-http.xml
echo "<service>" >> /etc/firewalld/services/haproxy-http.xml
echo "<short>HAProxy-HTTP</short>" >> /etc/firewalld/services/haproxy-http.xml
echo "<description>HAProxy load-balancer</description>" >> \
    /etc/firewalld/services/haproxy-http.xml
echo "<port protocol="tcp" port="80"/>" >> /etc/firewalld/services/haproxy-http.xml
echo "</service>" >> /etc/firewalld/services/haproxy-http.xml

cd /etc/firewalld/services
restorecon haproxy-http.xml
chmod 640 haproxy-http.xml

systemctl start haproxy






while true; do 
    sleep 300s
done


# ufw allow 8080/tcp
