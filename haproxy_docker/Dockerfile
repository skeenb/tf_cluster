FROM centos/systemd

RUN yum update -y
RUN yum install -y vim initscripts net-tools haproxy policycoreutils firewalld 

COPY ./files/haproxy.cfg /etc/haproxy/haproxy.cfg
COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh 


ENTRYPOINT /entrypoint.sh
